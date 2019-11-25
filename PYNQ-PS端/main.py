# main.py
# 2019/11/18
# 在只有一根神经计算棒的情况下，采用异步方式进行识别
# 综合遥控、头部随动、HLS图像压缩功能

import sys
import pyrealsense2 as rs
import numpy as np
import cv2
from os import system
from os.path import isfile, join
from time import sleep
import multiprocessing as mp
import heapq
import threading

import time
import socket

from pynq import Xlnk
# PL端配置
from pynq import Overlay
from pynq import DefaultIP

class UartDriver(DefaultIP):
    def __init__(self, description):
        super().__init__(description=description)
    bindto = ['xilinx.com:ip:axi_uartlite:2.0']
    def write_byte(self, a):
        self.write(0x04, a)
    def write_array(self,a_list):
        for i in a_list:
            self.write(0x04, i)
            
class PwmDriver(DefaultIP):
    def __init__(self, description):
        super().__init__(description=description)
    bindto = ['xilinx.com:user:myip:1.0']
    def pwm(self, port, degree):
        if port == 0:
            self.write(0x10, 62500+round(250000/180*degree))
        elif port == 1:
            self.write(0x14, 62500+round(250000/180*degree))
            
#overlay = Overlay('/home/xilinx/pynq/overlays/final/PYNQUART.bit')

#time.sleep(10)

overlay = Overlay('/home/xilinx/pynq/overlays/final/PYNQG6.bit')

pipeline = None
lastresults = None
threads = []
processes = []
frameBuffer = None
results = None
fps = ""
detectfps = ""
framecount = 0
detectframecount = 0
time1 = 0
time2 = 0
cam = None
camera_mode = 0
camera_width = 320
camera_height = 240
window_name = ""
background_transparent_mode = 0
ssd_detection_mode = 1
face_detection_mode = 0
elapsedtime = 0.0
background_img = None
depth_sensor = None
depth_scale = 1.0
align_to = None
align = None


LABELS = ('background',
          'aeroplane', 'bicycle', 'bird', 'boat',
          'bottle', 'bus', 'car', 'cat', 'chair',
          'cow', 'diningtable', 'dog', 'horse',
          'motorbike', 'person', 'pottedplant',
          'sheep', 'sofa', 'train', 'tvmonitor')

# 存储接受到的数据
class Data():
    rol = 0
    pit = 0
    yaw = 0
    ch = np.arange(5)
    ori = np.arange(6)

data_receive = Data()

# 远端指令接受线程
def Receive():
    while True:
        udpServer = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
        udpServer.bind(("192.168.0.107", 8070))
        data = udpServer.recv(20)
        udpServer.close()
        
        data_receive.ori[3] = data[6] << 8 | data[7];
        data_receive.ori[4] = data[8] << 8 | data[9];
		
        data_receive.pit = int((np.int16(data_receive.ori[3])) / 100.0);
        data_receive.yaw = int((np.int16(data_receive.ori[4])) / 100.0);
        
        
        if(data_receive.yaw > 90):
            data_receive.yaw = 90
        elif(data_receive.yaw < -90):
            data_receive.yaw = -90
        if(data_receive.pit > 90):
            data_receive.pit = 90
        elif(data_receive.pit < -90):
            data_receive.pit = -90
#         偏航逆时针为正
#         俯仰抬头为正   
        overlay.myip_0.pwm(0,90 - data_receive.yaw)
        overlay.myip_0.pwm(1,90 - data_receive.pit)
        
		# 转发遥控指令给小车主控
        overlay.axi_uartlite_0.write_array([0xAA,0xBB,data[0],data[1],data[2],data[3],
                                            data[4],data[5],data[10],data[11]])
        
        print(str(data_receive.ori[0]) + " " + str(data_receive.ori[1])
                + " " + str(data_receive.ori[2]) + " " + str(data_receive.pit) 
                + " " + str(data_receive.yaw))

		  
# 摄像头读取和发送进程
def camThread(LABELS, results, frameBuffer, camera_mode, camera_width, camera_height, background_transparent_mode, background_img, vidfps):
	global fps
	global detectfps
	global lastresults
	global framecount
	global detectframecount
	global time1
	global time2
	global cam
	global window_name
	global depth_scale
	global align_to
	global align

	#配置DMA
	dma = overlay.axi_dma_0
	jpeg = overlay.jpeg2_0
	xlnk = Xlnk()
	in_buffer = xlnk.cma_array(shape=(480, 640, 3), dtype=np.uint8, cacheable=1)
	out_buffer = xlnk.cma_array(shape=(64000), dtype=np.uint8, cacheable=1)

	# 配置RealSense
	pipeline = rs.pipeline()
	config = rs.config()
	config.enable_stream(rs.stream.depth, 640, 480, rs.format.z16, 15)
	config.enable_stream(rs.stream.color, 640, 480, rs.format.bgr8, 30)
	#config.enable_stream(rs.stream.color, 424, 240, rs.format.bgr8, 30)
	profile = pipeline.start(config)
	depth_sensor = profile.get_device().first_depth_sensor()
	depth_scale = depth_sensor.get_depth_scale()
	align_to = rs.stream.color
	align = rs.align(align_to)
		
	# 开始接受远端PC的指令
	threading.Thread(target=Receive).start()
	
	while True:
		
		start = time.clock()
		
		# Wait for a coherent pair of frames: depth and color
		frames = pipeline.wait_for_frames()
		depth_frame = frames.get_depth_frame()
		color_frame = frames.get_color_frame()
		if not depth_frame or not color_frame:
			continue
		if frameBuffer.full():
			frameBuffer.get()
		color_image = np.asanyarray(color_frame.get_data())
		
		
	
		height = color_image.shape[0]
		width = color_image.shape[1]
		frameBuffer.put(color_image.copy())
		res = None
		
		if not results.empty():
			res = results.get(False)
			detectframecount += 1
			imdraw = overlay_on_image(LABELS, color_image, depth_frame, res)
	
			lastresults = res
		else:
	
			if detectframecount >= 1:
				imdraw = overlay_on_image(LABELS, color_image, depth_frame, lastresults)
			else:
				imdraw = color_image
		
		# 发送图像
		try:
			s = socket.socket(socket.AF_INET, socket.SOCK_DGRAM)
			#img = cv2.imencode('.jpg', imdraw, [cv2.IMWRITE_JPEG_QUALITY, 85])[1]
			in_buffer[:] = imdraw[:]
			jpeg.write(0x00,0x01)
			dma.sendchannel.transfer(in_buffer)
			dma.recvchannel.transfer(out_buffer)
			
			dma.sendchannel.wait()
			dma.recvchannel.wait()            
			bytedata = out_buffer.tostring()
			bytedata = img.tostring()
			s.sendto(bytedata, ('192.168.0.100', 8090))
		except:
			pass
		#print("Time used: "+str((time.clock() - start) * 1000) + "ms")
        


def inferencer(results, frameBuffer, ssd_detection_mode, face_detection_mode, camera_mode, camera_width, camera_height, number_of_ncs, vidfps, skpfrm):

    net = cv2.dnn.readNet('MobileNetSSD_deploy.xml',
            'MobileNetSSD_deploy.bin') 
    net.setPreferableTarget(cv2.dnn.DNN_TARGET_MYRIAD)
    
    roop_frame = 0

    while True:

        if frameBuffer.empty():
            continue
        
        roop_frame += 1
        if roop_frame <= skpfrm:
           frameBuffer.get()
           continue
        roop_frame = 0
        
        prepimg = cv2.dnn.blobFromImage(frameBuffer.get(), 0.007843, size=(300, 300), mean=(127.5,127.5,127.5), swapRB=False, crop=False)
        net.setInput(prepimg)
        out = net.forward()
        out = out.flatten()
        results.put(out)

           
            

    

def overlay_on_image(LABELS, color_image, depth_frame, out):
    try:
        for box_index in range(100):
            if out[box_index + 1] == 0.0:
                break
            base_index = box_index * 7
            if (not np.isfinite(out[base_index]) or
                not np.isfinite(out[base_index + 1]) or
                not np.isfinite(out[base_index + 2]) or
                not np.isfinite(out[base_index + 3]) or
                not np.isfinite(out[base_index + 4]) or
                not np.isfinite(out[base_index + 5]) or
                not np.isfinite(out[base_index + 6])):
                continue
            
            height = color_image.shape[0]
            width = color_image.shape[1]
            
            x1 = max(0, int(out[base_index + 3] * height))
            y1 = max(0, int(out[base_index + 4] * width))
            x2 = min(height, int(out[base_index + 5] * height))
            y2 = min(width, int(out[base_index + 6] * width))

            object_info_overlay = out[base_index:base_index + 7]

            min_score_percent = 60
            source_image_width = width
            source_image_height = height

            base_index = 0
            class_id = object_info_overlay[base_index + 1]
			#不是瓶子
            if(class_id != 5):
                continue			
            percentage = int(object_info_overlay[base_index + 2] * 100)
            if (percentage <= min_score_percent):
                continue

            box_left = int(object_info_overlay[base_index + 3] * source_image_width)
            box_top = int(object_info_overlay[base_index + 4] * source_image_height)
            box_right = int(object_info_overlay[base_index + 5] * source_image_width)
            box_bottom = int(object_info_overlay[base_index + 6] * source_image_height)
            x = box_left+int((box_right-box_left)/2)
            y = box_top+int((box_bottom-box_top)/2)
            meters = depth_frame.as_depth_frame().get_distance(int(x * 640 / 424), int(y * 480 / 240))
            #meters = depth_frame.as_depth_frame().get_distance(int(x), int(y))

            label_text = LABELS[int(class_id)] + " (" + str(percentage) + "%)"+ " {:.2f}".format(meters) + " meters away"

            box_color = (255, 128, 0)
            box_thickness = 1
            cv2.rectangle(color_image, (box_left, box_top), (box_right, box_bottom), box_color, box_thickness)

            label_background_color = (125, 175, 75)
            label_text_color = (255, 255, 255)

            label_size = cv2.getTextSize(label_text, cv2.FONT_HERSHEY_SIMPLEX, 0.5, 1)[0]
            label_left = box_left
            label_top = box_top - label_size[1]
            if (label_top < 1):
                label_top = 1
            label_right = label_left + label_size[0]
            label_bottom = label_top + label_size[1]
            cv2.rectangle(color_image, (label_left - 1, label_top - 1), (label_right + 1, label_bottom + 1), label_background_color, -1)
            cv2.putText(color_image, label_text, (label_left, label_bottom), cv2.FONT_HERSHEY_SIMPLEX, 0.5, label_text_color, 1)
            
        return color_image
    except:
        #pass
        import traceback
        traceback.print_exc()
        
        
        


if __name__ == '__main__':
    camera_mode   = 0 # 0:=RealSense Mode, 1:=USB Camera Mode
    camera_width  = 320
    camera_height = 240
    background_transparent_mode = 0
    ssd_detection_mode = 1
    face_detection_mode = 0
    number_of_ncs = 1
    vidfps = 30 # FPS of Video. (USB Camera Mode Only.)
    skpfrm = 7  # Number of frame skip. (RealSense Mode Only.)

    # 0:=RealSense Mode, 1:=USB Camera Mode
    if camera_mode != 0 and camera_mode != 1:
        print("Camera Mode Error!! " + str(camera_mode))
        sys.exit(0)

    if camera_mode != 0 and background_transparent_mode == 1:
        background_transparent_mode = 0

    if background_transparent_mode == 1:
        background_img = np.zeros((camera_height, camera_width, 3), dtype=np.uint8)

        if face_detection_mode != 0:
            ssd_detection_mode = 0

    try:

        mp.set_start_method('forkserver')
        frameBuffer = mp.Queue(10)
        results = mp.Queue()

        # Start streaming
        p = mp.Process(target=camThread,
                       args=(LABELS, results, frameBuffer, camera_mode, camera_width, camera_height, background_transparent_mode, background_img, vidfps),
                       daemon=True)
        p.start()
        processes.append(p)

        # Start detection MultiStick
        # Activation of inferencer
        p = mp.Process(target=inferencer,
                       args=(results, frameBuffer, ssd_detection_mode, face_detection_mode, camera_mode, camera_width, camera_height, number_of_ncs, vidfps, skpfrm),
                       daemon=True)
        p.start()
        processes.append(p)
        while True:
            sleep(1)

    except:
        import traceback
        traceback.print_exc()
    finally:
        for p in range(len(processes)):
            processes[p].terminate()

        print("\n\nFinished\n\n")

		

