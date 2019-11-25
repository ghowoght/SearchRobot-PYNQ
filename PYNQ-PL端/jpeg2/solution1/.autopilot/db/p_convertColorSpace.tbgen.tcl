set moduleName p_convertColorSpace
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {_convertColorSpace}
set C_modelType { void 0 }
set C_modelArgList {
	{ JpegEncoder_buffer int 8 regular {array 15360 { 1 1 } 1 1 }  }
	{ xPos int 10 regular  }
	{ yData_0 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ yData_1 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ yData_2 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ yData_3 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ yData_4 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ yData_5 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ yData_6 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ yData_7 int 8 regular {array 8 { 0 0 } 0 1 }  }
	{ cbData_0 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ cbData_1 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ cbData_2 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ cbData_3 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ cbData_4 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ cbData_5 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ cbData_6 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ cbData_7 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ crData_0 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ crData_1 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ crData_2 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ crData_3 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ crData_4 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ crData_5 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ crData_6 int 8 regular {array 8 { 0 3 } 0 1 }  }
	{ crData_7 int 8 regular {array 8 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "JpegEncoder_buffer", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "xPos", "interface" : "wire", "bitwidth" : 10, "direction" : "READONLY"} , 
 	{ "Name" : "yData_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "yData_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "yData_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "yData_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "yData_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "yData_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "yData_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "yData_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cbData_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cbData_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cbData_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cbData_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cbData_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cbData_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cbData_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "cbData_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crData_0", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crData_1", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crData_2", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crData_3", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crData_4", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crData_5", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crData_6", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "crData_7", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 141
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ JpegEncoder_buffer_address0 sc_out sc_lv 14 signal 0 } 
	{ JpegEncoder_buffer_ce0 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_buffer_q0 sc_in sc_lv 8 signal 0 } 
	{ JpegEncoder_buffer_address1 sc_out sc_lv 14 signal 0 } 
	{ JpegEncoder_buffer_ce1 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_buffer_q1 sc_in sc_lv 8 signal 0 } 
	{ xPos sc_in sc_lv 10 signal 1 } 
	{ yData_0_address0 sc_out sc_lv 3 signal 2 } 
	{ yData_0_ce0 sc_out sc_logic 1 signal 2 } 
	{ yData_0_we0 sc_out sc_logic 1 signal 2 } 
	{ yData_0_d0 sc_out sc_lv 8 signal 2 } 
	{ yData_0_address1 sc_out sc_lv 3 signal 2 } 
	{ yData_0_ce1 sc_out sc_logic 1 signal 2 } 
	{ yData_0_we1 sc_out sc_logic 1 signal 2 } 
	{ yData_0_d1 sc_out sc_lv 8 signal 2 } 
	{ yData_1_address0 sc_out sc_lv 3 signal 3 } 
	{ yData_1_ce0 sc_out sc_logic 1 signal 3 } 
	{ yData_1_we0 sc_out sc_logic 1 signal 3 } 
	{ yData_1_d0 sc_out sc_lv 8 signal 3 } 
	{ yData_1_address1 sc_out sc_lv 3 signal 3 } 
	{ yData_1_ce1 sc_out sc_logic 1 signal 3 } 
	{ yData_1_we1 sc_out sc_logic 1 signal 3 } 
	{ yData_1_d1 sc_out sc_lv 8 signal 3 } 
	{ yData_2_address0 sc_out sc_lv 3 signal 4 } 
	{ yData_2_ce0 sc_out sc_logic 1 signal 4 } 
	{ yData_2_we0 sc_out sc_logic 1 signal 4 } 
	{ yData_2_d0 sc_out sc_lv 8 signal 4 } 
	{ yData_2_address1 sc_out sc_lv 3 signal 4 } 
	{ yData_2_ce1 sc_out sc_logic 1 signal 4 } 
	{ yData_2_we1 sc_out sc_logic 1 signal 4 } 
	{ yData_2_d1 sc_out sc_lv 8 signal 4 } 
	{ yData_3_address0 sc_out sc_lv 3 signal 5 } 
	{ yData_3_ce0 sc_out sc_logic 1 signal 5 } 
	{ yData_3_we0 sc_out sc_logic 1 signal 5 } 
	{ yData_3_d0 sc_out sc_lv 8 signal 5 } 
	{ yData_3_address1 sc_out sc_lv 3 signal 5 } 
	{ yData_3_ce1 sc_out sc_logic 1 signal 5 } 
	{ yData_3_we1 sc_out sc_logic 1 signal 5 } 
	{ yData_3_d1 sc_out sc_lv 8 signal 5 } 
	{ yData_4_address0 sc_out sc_lv 3 signal 6 } 
	{ yData_4_ce0 sc_out sc_logic 1 signal 6 } 
	{ yData_4_we0 sc_out sc_logic 1 signal 6 } 
	{ yData_4_d0 sc_out sc_lv 8 signal 6 } 
	{ yData_4_address1 sc_out sc_lv 3 signal 6 } 
	{ yData_4_ce1 sc_out sc_logic 1 signal 6 } 
	{ yData_4_we1 sc_out sc_logic 1 signal 6 } 
	{ yData_4_d1 sc_out sc_lv 8 signal 6 } 
	{ yData_5_address0 sc_out sc_lv 3 signal 7 } 
	{ yData_5_ce0 sc_out sc_logic 1 signal 7 } 
	{ yData_5_we0 sc_out sc_logic 1 signal 7 } 
	{ yData_5_d0 sc_out sc_lv 8 signal 7 } 
	{ yData_5_address1 sc_out sc_lv 3 signal 7 } 
	{ yData_5_ce1 sc_out sc_logic 1 signal 7 } 
	{ yData_5_we1 sc_out sc_logic 1 signal 7 } 
	{ yData_5_d1 sc_out sc_lv 8 signal 7 } 
	{ yData_6_address0 sc_out sc_lv 3 signal 8 } 
	{ yData_6_ce0 sc_out sc_logic 1 signal 8 } 
	{ yData_6_we0 sc_out sc_logic 1 signal 8 } 
	{ yData_6_d0 sc_out sc_lv 8 signal 8 } 
	{ yData_6_address1 sc_out sc_lv 3 signal 8 } 
	{ yData_6_ce1 sc_out sc_logic 1 signal 8 } 
	{ yData_6_we1 sc_out sc_logic 1 signal 8 } 
	{ yData_6_d1 sc_out sc_lv 8 signal 8 } 
	{ yData_7_address0 sc_out sc_lv 3 signal 9 } 
	{ yData_7_ce0 sc_out sc_logic 1 signal 9 } 
	{ yData_7_we0 sc_out sc_logic 1 signal 9 } 
	{ yData_7_d0 sc_out sc_lv 8 signal 9 } 
	{ yData_7_address1 sc_out sc_lv 3 signal 9 } 
	{ yData_7_ce1 sc_out sc_logic 1 signal 9 } 
	{ yData_7_we1 sc_out sc_logic 1 signal 9 } 
	{ yData_7_d1 sc_out sc_lv 8 signal 9 } 
	{ cbData_0_address0 sc_out sc_lv 3 signal 10 } 
	{ cbData_0_ce0 sc_out sc_logic 1 signal 10 } 
	{ cbData_0_we0 sc_out sc_logic 1 signal 10 } 
	{ cbData_0_d0 sc_out sc_lv 8 signal 10 } 
	{ cbData_1_address0 sc_out sc_lv 3 signal 11 } 
	{ cbData_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ cbData_1_we0 sc_out sc_logic 1 signal 11 } 
	{ cbData_1_d0 sc_out sc_lv 8 signal 11 } 
	{ cbData_2_address0 sc_out sc_lv 3 signal 12 } 
	{ cbData_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ cbData_2_we0 sc_out sc_logic 1 signal 12 } 
	{ cbData_2_d0 sc_out sc_lv 8 signal 12 } 
	{ cbData_3_address0 sc_out sc_lv 3 signal 13 } 
	{ cbData_3_ce0 sc_out sc_logic 1 signal 13 } 
	{ cbData_3_we0 sc_out sc_logic 1 signal 13 } 
	{ cbData_3_d0 sc_out sc_lv 8 signal 13 } 
	{ cbData_4_address0 sc_out sc_lv 3 signal 14 } 
	{ cbData_4_ce0 sc_out sc_logic 1 signal 14 } 
	{ cbData_4_we0 sc_out sc_logic 1 signal 14 } 
	{ cbData_4_d0 sc_out sc_lv 8 signal 14 } 
	{ cbData_5_address0 sc_out sc_lv 3 signal 15 } 
	{ cbData_5_ce0 sc_out sc_logic 1 signal 15 } 
	{ cbData_5_we0 sc_out sc_logic 1 signal 15 } 
	{ cbData_5_d0 sc_out sc_lv 8 signal 15 } 
	{ cbData_6_address0 sc_out sc_lv 3 signal 16 } 
	{ cbData_6_ce0 sc_out sc_logic 1 signal 16 } 
	{ cbData_6_we0 sc_out sc_logic 1 signal 16 } 
	{ cbData_6_d0 sc_out sc_lv 8 signal 16 } 
	{ cbData_7_address0 sc_out sc_lv 3 signal 17 } 
	{ cbData_7_ce0 sc_out sc_logic 1 signal 17 } 
	{ cbData_7_we0 sc_out sc_logic 1 signal 17 } 
	{ cbData_7_d0 sc_out sc_lv 8 signal 17 } 
	{ crData_0_address0 sc_out sc_lv 3 signal 18 } 
	{ crData_0_ce0 sc_out sc_logic 1 signal 18 } 
	{ crData_0_we0 sc_out sc_logic 1 signal 18 } 
	{ crData_0_d0 sc_out sc_lv 8 signal 18 } 
	{ crData_1_address0 sc_out sc_lv 3 signal 19 } 
	{ crData_1_ce0 sc_out sc_logic 1 signal 19 } 
	{ crData_1_we0 sc_out sc_logic 1 signal 19 } 
	{ crData_1_d0 sc_out sc_lv 8 signal 19 } 
	{ crData_2_address0 sc_out sc_lv 3 signal 20 } 
	{ crData_2_ce0 sc_out sc_logic 1 signal 20 } 
	{ crData_2_we0 sc_out sc_logic 1 signal 20 } 
	{ crData_2_d0 sc_out sc_lv 8 signal 20 } 
	{ crData_3_address0 sc_out sc_lv 3 signal 21 } 
	{ crData_3_ce0 sc_out sc_logic 1 signal 21 } 
	{ crData_3_we0 sc_out sc_logic 1 signal 21 } 
	{ crData_3_d0 sc_out sc_lv 8 signal 21 } 
	{ crData_4_address0 sc_out sc_lv 3 signal 22 } 
	{ crData_4_ce0 sc_out sc_logic 1 signal 22 } 
	{ crData_4_we0 sc_out sc_logic 1 signal 22 } 
	{ crData_4_d0 sc_out sc_lv 8 signal 22 } 
	{ crData_5_address0 sc_out sc_lv 3 signal 23 } 
	{ crData_5_ce0 sc_out sc_logic 1 signal 23 } 
	{ crData_5_we0 sc_out sc_logic 1 signal 23 } 
	{ crData_5_d0 sc_out sc_lv 8 signal 23 } 
	{ crData_6_address0 sc_out sc_lv 3 signal 24 } 
	{ crData_6_ce0 sc_out sc_logic 1 signal 24 } 
	{ crData_6_we0 sc_out sc_logic 1 signal 24 } 
	{ crData_6_d0 sc_out sc_lv 8 signal 24 } 
	{ crData_7_address0 sc_out sc_lv 3 signal 25 } 
	{ crData_7_ce0 sc_out sc_logic 1 signal 25 } 
	{ crData_7_we0 sc_out sc_logic 1 signal 25 } 
	{ crData_7_d0 sc_out sc_lv 8 signal 25 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "JpegEncoder_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "address0" }} , 
 	{ "name": "JpegEncoder_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "q0" }} , 
 	{ "name": "JpegEncoder_buffer_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "address1" }} , 
 	{ "name": "JpegEncoder_buffer_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "ce1" }} , 
 	{ "name": "JpegEncoder_buffer_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "q1" }} , 
 	{ "name": "xPos", "direction": "in", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "xPos", "role": "default" }} , 
 	{ "name": "yData_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_0", "role": "address0" }} , 
 	{ "name": "yData_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_0", "role": "ce0" }} , 
 	{ "name": "yData_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_0", "role": "we0" }} , 
 	{ "name": "yData_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_0", "role": "d0" }} , 
 	{ "name": "yData_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_0", "role": "address1" }} , 
 	{ "name": "yData_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_0", "role": "ce1" }} , 
 	{ "name": "yData_0_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_0", "role": "we1" }} , 
 	{ "name": "yData_0_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_0", "role": "d1" }} , 
 	{ "name": "yData_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_1", "role": "address0" }} , 
 	{ "name": "yData_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_1", "role": "ce0" }} , 
 	{ "name": "yData_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_1", "role": "we0" }} , 
 	{ "name": "yData_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_1", "role": "d0" }} , 
 	{ "name": "yData_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_1", "role": "address1" }} , 
 	{ "name": "yData_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_1", "role": "ce1" }} , 
 	{ "name": "yData_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_1", "role": "we1" }} , 
 	{ "name": "yData_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_1", "role": "d1" }} , 
 	{ "name": "yData_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_2", "role": "address0" }} , 
 	{ "name": "yData_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_2", "role": "ce0" }} , 
 	{ "name": "yData_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_2", "role": "we0" }} , 
 	{ "name": "yData_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_2", "role": "d0" }} , 
 	{ "name": "yData_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_2", "role": "address1" }} , 
 	{ "name": "yData_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_2", "role": "ce1" }} , 
 	{ "name": "yData_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_2", "role": "we1" }} , 
 	{ "name": "yData_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_2", "role": "d1" }} , 
 	{ "name": "yData_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_3", "role": "address0" }} , 
 	{ "name": "yData_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_3", "role": "ce0" }} , 
 	{ "name": "yData_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_3", "role": "we0" }} , 
 	{ "name": "yData_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_3", "role": "d0" }} , 
 	{ "name": "yData_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_3", "role": "address1" }} , 
 	{ "name": "yData_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_3", "role": "ce1" }} , 
 	{ "name": "yData_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_3", "role": "we1" }} , 
 	{ "name": "yData_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_3", "role": "d1" }} , 
 	{ "name": "yData_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_4", "role": "address0" }} , 
 	{ "name": "yData_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_4", "role": "ce0" }} , 
 	{ "name": "yData_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_4", "role": "we0" }} , 
 	{ "name": "yData_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_4", "role": "d0" }} , 
 	{ "name": "yData_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_4", "role": "address1" }} , 
 	{ "name": "yData_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_4", "role": "ce1" }} , 
 	{ "name": "yData_4_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_4", "role": "we1" }} , 
 	{ "name": "yData_4_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_4", "role": "d1" }} , 
 	{ "name": "yData_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_5", "role": "address0" }} , 
 	{ "name": "yData_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_5", "role": "ce0" }} , 
 	{ "name": "yData_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_5", "role": "we0" }} , 
 	{ "name": "yData_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_5", "role": "d0" }} , 
 	{ "name": "yData_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_5", "role": "address1" }} , 
 	{ "name": "yData_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_5", "role": "ce1" }} , 
 	{ "name": "yData_5_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_5", "role": "we1" }} , 
 	{ "name": "yData_5_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_5", "role": "d1" }} , 
 	{ "name": "yData_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_6", "role": "address0" }} , 
 	{ "name": "yData_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_6", "role": "ce0" }} , 
 	{ "name": "yData_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_6", "role": "we0" }} , 
 	{ "name": "yData_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_6", "role": "d0" }} , 
 	{ "name": "yData_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_6", "role": "address1" }} , 
 	{ "name": "yData_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_6", "role": "ce1" }} , 
 	{ "name": "yData_6_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_6", "role": "we1" }} , 
 	{ "name": "yData_6_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_6", "role": "d1" }} , 
 	{ "name": "yData_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_7", "role": "address0" }} , 
 	{ "name": "yData_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_7", "role": "ce0" }} , 
 	{ "name": "yData_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_7", "role": "we0" }} , 
 	{ "name": "yData_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_7", "role": "d0" }} , 
 	{ "name": "yData_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "yData_7", "role": "address1" }} , 
 	{ "name": "yData_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_7", "role": "ce1" }} , 
 	{ "name": "yData_7_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "yData_7", "role": "we1" }} , 
 	{ "name": "yData_7_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "yData_7", "role": "d1" }} , 
 	{ "name": "cbData_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cbData_0", "role": "address0" }} , 
 	{ "name": "cbData_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_0", "role": "ce0" }} , 
 	{ "name": "cbData_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_0", "role": "we0" }} , 
 	{ "name": "cbData_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cbData_0", "role": "d0" }} , 
 	{ "name": "cbData_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cbData_1", "role": "address0" }} , 
 	{ "name": "cbData_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_1", "role": "ce0" }} , 
 	{ "name": "cbData_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_1", "role": "we0" }} , 
 	{ "name": "cbData_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cbData_1", "role": "d0" }} , 
 	{ "name": "cbData_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cbData_2", "role": "address0" }} , 
 	{ "name": "cbData_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_2", "role": "ce0" }} , 
 	{ "name": "cbData_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_2", "role": "we0" }} , 
 	{ "name": "cbData_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cbData_2", "role": "d0" }} , 
 	{ "name": "cbData_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cbData_3", "role": "address0" }} , 
 	{ "name": "cbData_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_3", "role": "ce0" }} , 
 	{ "name": "cbData_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_3", "role": "we0" }} , 
 	{ "name": "cbData_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cbData_3", "role": "d0" }} , 
 	{ "name": "cbData_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cbData_4", "role": "address0" }} , 
 	{ "name": "cbData_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_4", "role": "ce0" }} , 
 	{ "name": "cbData_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_4", "role": "we0" }} , 
 	{ "name": "cbData_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cbData_4", "role": "d0" }} , 
 	{ "name": "cbData_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cbData_5", "role": "address0" }} , 
 	{ "name": "cbData_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_5", "role": "ce0" }} , 
 	{ "name": "cbData_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_5", "role": "we0" }} , 
 	{ "name": "cbData_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cbData_5", "role": "d0" }} , 
 	{ "name": "cbData_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cbData_6", "role": "address0" }} , 
 	{ "name": "cbData_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_6", "role": "ce0" }} , 
 	{ "name": "cbData_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_6", "role": "we0" }} , 
 	{ "name": "cbData_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cbData_6", "role": "d0" }} , 
 	{ "name": "cbData_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "cbData_7", "role": "address0" }} , 
 	{ "name": "cbData_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_7", "role": "ce0" }} , 
 	{ "name": "cbData_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "cbData_7", "role": "we0" }} , 
 	{ "name": "cbData_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "cbData_7", "role": "d0" }} , 
 	{ "name": "crData_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crData_0", "role": "address0" }} , 
 	{ "name": "crData_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_0", "role": "ce0" }} , 
 	{ "name": "crData_0_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_0", "role": "we0" }} , 
 	{ "name": "crData_0_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crData_0", "role": "d0" }} , 
 	{ "name": "crData_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crData_1", "role": "address0" }} , 
 	{ "name": "crData_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_1", "role": "ce0" }} , 
 	{ "name": "crData_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_1", "role": "we0" }} , 
 	{ "name": "crData_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crData_1", "role": "d0" }} , 
 	{ "name": "crData_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crData_2", "role": "address0" }} , 
 	{ "name": "crData_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_2", "role": "ce0" }} , 
 	{ "name": "crData_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_2", "role": "we0" }} , 
 	{ "name": "crData_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crData_2", "role": "d0" }} , 
 	{ "name": "crData_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crData_3", "role": "address0" }} , 
 	{ "name": "crData_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_3", "role": "ce0" }} , 
 	{ "name": "crData_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_3", "role": "we0" }} , 
 	{ "name": "crData_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crData_3", "role": "d0" }} , 
 	{ "name": "crData_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crData_4", "role": "address0" }} , 
 	{ "name": "crData_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_4", "role": "ce0" }} , 
 	{ "name": "crData_4_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_4", "role": "we0" }} , 
 	{ "name": "crData_4_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crData_4", "role": "d0" }} , 
 	{ "name": "crData_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crData_5", "role": "address0" }} , 
 	{ "name": "crData_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_5", "role": "ce0" }} , 
 	{ "name": "crData_5_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_5", "role": "we0" }} , 
 	{ "name": "crData_5_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crData_5", "role": "d0" }} , 
 	{ "name": "crData_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crData_6", "role": "address0" }} , 
 	{ "name": "crData_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_6", "role": "ce0" }} , 
 	{ "name": "crData_6_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_6", "role": "we0" }} , 
 	{ "name": "crData_6_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crData_6", "role": "d0" }} , 
 	{ "name": "crData_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "crData_7", "role": "address0" }} , 
 	{ "name": "crData_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_7", "role": "ce0" }} , 
 	{ "name": "crData_7_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "crData_7", "role": "we0" }} , 
 	{ "name": "crData_7_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "crData_7", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "p_convertColorSpace",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "114", "EstimateLatencyMax" : "114",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "JpegEncoder_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xPos", "Type" : "None", "Direction" : "I"},
			{"Name" : "yData_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_kbM_U65", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_lbW_U66", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_lbW_U67", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_lbW_U68", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_lbW_U69", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_lbW_U70", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_lbW_U71", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_lbW_U72", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_mb6_U73", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_mb6_U74", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_mb6_U75", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_mb6_U76", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_mb6_U77", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_mb6_U78", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_mb6_U79", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_mb6_U80", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_convertColorSpace {
		JpegEncoder_buffer {Type I LastRead 15 FirstWrite -1}
		xPos {Type I LastRead 0 FirstWrite -1}
		yData_0 {Type O LastRead -1 FirstWrite 15}
		yData_1 {Type O LastRead -1 FirstWrite 15}
		yData_2 {Type O LastRead -1 FirstWrite 15}
		yData_3 {Type O LastRead -1 FirstWrite 15}
		yData_4 {Type O LastRead -1 FirstWrite 15}
		yData_5 {Type O LastRead -1 FirstWrite 15}
		yData_6 {Type O LastRead -1 FirstWrite 15}
		yData_7 {Type O LastRead -1 FirstWrite 15}
		cbData_0 {Type O LastRead -1 FirstWrite 18}
		cbData_1 {Type O LastRead -1 FirstWrite 18}
		cbData_2 {Type O LastRead -1 FirstWrite 18}
		cbData_3 {Type O LastRead -1 FirstWrite 18}
		cbData_4 {Type O LastRead -1 FirstWrite 18}
		cbData_5 {Type O LastRead -1 FirstWrite 18}
		cbData_6 {Type O LastRead -1 FirstWrite 18}
		cbData_7 {Type O LastRead -1 FirstWrite 18}
		crData_0 {Type O LastRead -1 FirstWrite 18}
		crData_1 {Type O LastRead -1 FirstWrite 18}
		crData_2 {Type O LastRead -1 FirstWrite 18}
		crData_3 {Type O LastRead -1 FirstWrite 18}
		crData_4 {Type O LastRead -1 FirstWrite 18}
		crData_5 {Type O LastRead -1 FirstWrite 18}
		crData_6 {Type O LastRead -1 FirstWrite 18}
		crData_7 {Type O LastRead -1 FirstWrite 18}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "114", "Max" : "114"}
	, {"Name" : "Interval", "Min" : "114", "Max" : "114"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	JpegEncoder_buffer { ap_memory {  { JpegEncoder_buffer_address0 mem_address 1 14 }  { JpegEncoder_buffer_ce0 mem_ce 1 1 }  { JpegEncoder_buffer_q0 mem_dout 0 8 }  { JpegEncoder_buffer_address1 MemPortADDR2 1 14 }  { JpegEncoder_buffer_ce1 MemPortCE2 1 1 }  { JpegEncoder_buffer_q1 MemPortDOUT2 0 8 } } }
	xPos { ap_none {  { xPos in_data 0 10 } } }
	yData_0 { ap_memory {  { yData_0_address0 mem_address 1 3 }  { yData_0_ce0 mem_ce 1 1 }  { yData_0_we0 mem_we 1 1 }  { yData_0_d0 mem_din 1 8 }  { yData_0_address1 MemPortADDR2 1 3 }  { yData_0_ce1 MemPortCE2 1 1 }  { yData_0_we1 MemPortWE2 1 1 }  { yData_0_d1 MemPortDIN2 1 8 } } }
	yData_1 { ap_memory {  { yData_1_address0 mem_address 1 3 }  { yData_1_ce0 mem_ce 1 1 }  { yData_1_we0 mem_we 1 1 }  { yData_1_d0 mem_din 1 8 }  { yData_1_address1 MemPortADDR2 1 3 }  { yData_1_ce1 MemPortCE2 1 1 }  { yData_1_we1 MemPortWE2 1 1 }  { yData_1_d1 MemPortDIN2 1 8 } } }
	yData_2 { ap_memory {  { yData_2_address0 mem_address 1 3 }  { yData_2_ce0 mem_ce 1 1 }  { yData_2_we0 mem_we 1 1 }  { yData_2_d0 mem_din 1 8 }  { yData_2_address1 MemPortADDR2 1 3 }  { yData_2_ce1 MemPortCE2 1 1 }  { yData_2_we1 MemPortWE2 1 1 }  { yData_2_d1 MemPortDIN2 1 8 } } }
	yData_3 { ap_memory {  { yData_3_address0 mem_address 1 3 }  { yData_3_ce0 mem_ce 1 1 }  { yData_3_we0 mem_we 1 1 }  { yData_3_d0 mem_din 1 8 }  { yData_3_address1 MemPortADDR2 1 3 }  { yData_3_ce1 MemPortCE2 1 1 }  { yData_3_we1 MemPortWE2 1 1 }  { yData_3_d1 MemPortDIN2 1 8 } } }
	yData_4 { ap_memory {  { yData_4_address0 mem_address 1 3 }  { yData_4_ce0 mem_ce 1 1 }  { yData_4_we0 mem_we 1 1 }  { yData_4_d0 mem_din 1 8 }  { yData_4_address1 MemPortADDR2 1 3 }  { yData_4_ce1 MemPortCE2 1 1 }  { yData_4_we1 MemPortWE2 1 1 }  { yData_4_d1 MemPortDIN2 1 8 } } }
	yData_5 { ap_memory {  { yData_5_address0 mem_address 1 3 }  { yData_5_ce0 mem_ce 1 1 }  { yData_5_we0 mem_we 1 1 }  { yData_5_d0 mem_din 1 8 }  { yData_5_address1 MemPortADDR2 1 3 }  { yData_5_ce1 MemPortCE2 1 1 }  { yData_5_we1 MemPortWE2 1 1 }  { yData_5_d1 MemPortDIN2 1 8 } } }
	yData_6 { ap_memory {  { yData_6_address0 mem_address 1 3 }  { yData_6_ce0 mem_ce 1 1 }  { yData_6_we0 mem_we 1 1 }  { yData_6_d0 mem_din 1 8 }  { yData_6_address1 MemPortADDR2 1 3 }  { yData_6_ce1 MemPortCE2 1 1 }  { yData_6_we1 MemPortWE2 1 1 }  { yData_6_d1 MemPortDIN2 1 8 } } }
	yData_7 { ap_memory {  { yData_7_address0 mem_address 1 3 }  { yData_7_ce0 mem_ce 1 1 }  { yData_7_we0 mem_we 1 1 }  { yData_7_d0 mem_din 1 8 }  { yData_7_address1 MemPortADDR2 1 3 }  { yData_7_ce1 MemPortCE2 1 1 }  { yData_7_we1 MemPortWE2 1 1 }  { yData_7_d1 MemPortDIN2 1 8 } } }
	cbData_0 { ap_memory {  { cbData_0_address0 mem_address 1 3 }  { cbData_0_ce0 mem_ce 1 1 }  { cbData_0_we0 mem_we 1 1 }  { cbData_0_d0 mem_din 1 8 } } }
	cbData_1 { ap_memory {  { cbData_1_address0 mem_address 1 3 }  { cbData_1_ce0 mem_ce 1 1 }  { cbData_1_we0 mem_we 1 1 }  { cbData_1_d0 mem_din 1 8 } } }
	cbData_2 { ap_memory {  { cbData_2_address0 mem_address 1 3 }  { cbData_2_ce0 mem_ce 1 1 }  { cbData_2_we0 mem_we 1 1 }  { cbData_2_d0 mem_din 1 8 } } }
	cbData_3 { ap_memory {  { cbData_3_address0 mem_address 1 3 }  { cbData_3_ce0 mem_ce 1 1 }  { cbData_3_we0 mem_we 1 1 }  { cbData_3_d0 mem_din 1 8 } } }
	cbData_4 { ap_memory {  { cbData_4_address0 mem_address 1 3 }  { cbData_4_ce0 mem_ce 1 1 }  { cbData_4_we0 mem_we 1 1 }  { cbData_4_d0 mem_din 1 8 } } }
	cbData_5 { ap_memory {  { cbData_5_address0 mem_address 1 3 }  { cbData_5_ce0 mem_ce 1 1 }  { cbData_5_we0 mem_we 1 1 }  { cbData_5_d0 mem_din 1 8 } } }
	cbData_6 { ap_memory {  { cbData_6_address0 mem_address 1 3 }  { cbData_6_ce0 mem_ce 1 1 }  { cbData_6_we0 mem_we 1 1 }  { cbData_6_d0 mem_din 1 8 } } }
	cbData_7 { ap_memory {  { cbData_7_address0 mem_address 1 3 }  { cbData_7_ce0 mem_ce 1 1 }  { cbData_7_we0 mem_we 1 1 }  { cbData_7_d0 mem_din 1 8 } } }
	crData_0 { ap_memory {  { crData_0_address0 mem_address 1 3 }  { crData_0_ce0 mem_ce 1 1 }  { crData_0_we0 mem_we 1 1 }  { crData_0_d0 mem_din 1 8 } } }
	crData_1 { ap_memory {  { crData_1_address0 mem_address 1 3 }  { crData_1_ce0 mem_ce 1 1 }  { crData_1_we0 mem_we 1 1 }  { crData_1_d0 mem_din 1 8 } } }
	crData_2 { ap_memory {  { crData_2_address0 mem_address 1 3 }  { crData_2_ce0 mem_ce 1 1 }  { crData_2_we0 mem_we 1 1 }  { crData_2_d0 mem_din 1 8 } } }
	crData_3 { ap_memory {  { crData_3_address0 mem_address 1 3 }  { crData_3_ce0 mem_ce 1 1 }  { crData_3_we0 mem_we 1 1 }  { crData_3_d0 mem_din 1 8 } } }
	crData_4 { ap_memory {  { crData_4_address0 mem_address 1 3 }  { crData_4_ce0 mem_ce 1 1 }  { crData_4_we0 mem_we 1 1 }  { crData_4_d0 mem_din 1 8 } } }
	crData_5 { ap_memory {  { crData_5_address0 mem_address 1 3 }  { crData_5_ce0 mem_ce 1 1 }  { crData_5_we0 mem_we 1 1 }  { crData_5_d0 mem_din 1 8 } } }
	crData_6 { ap_memory {  { crData_6_address0 mem_address 1 3 }  { crData_6_ce0 mem_ce 1 1 }  { crData_6_we0 mem_we 1 1 }  { crData_6_d0 mem_din 1 8 } } }
	crData_7 { ap_memory {  { crData_7_address0 mem_address 1 3 }  { crData_7_ce0 mem_ce 1 1 }  { crData_7_we0 mem_we 1 1 }  { crData_7_d0 mem_din 1 8 } } }
}
