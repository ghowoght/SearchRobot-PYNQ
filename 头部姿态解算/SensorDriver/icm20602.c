#include "icm20602.h"
#include "Drv_spi.h"
//
#include "Scheduler.h"

void HAL_GPIO_EXTI_Callback(uint16_t GPIO_Pin)
{
		if(GPIO_Pin == GPIO_PIN_4)
		{
			INT_1ms_Task();
		}
}

void icm20602_enable(u8 ena)
{
	if(ena)
		PAout(8) = 0;
	else
		PAout(8) = 1;
}

uint8_t tx[14] = {0xFF};
void icm20602_readbuf(u8 reg, u8 length, u8 *data)
{
	icm20602_enable(1);
	
	uint8_t SendData = reg|0x80;
	HAL_SPI_TransmitReceive(&hspi2,&SendData,data,1,10);
	
//	Drv_Spi0SingleWirteAndRead(reg|0x80);
	
//	HAL_SPI_TransmitReceive(&hspi2,tx,data,length,10);
	
	Drv_Spi0Receive(data,length);
	icm20602_enable(0);
}

u8 icm20602_writebyte(u8 reg, u8 data)
{
	u8 status;
	
	icm20602_enable(1);
	status = Drv_Spi0SingleWirteAndRead(reg&0x7F);
	Drv_Spi0SingleWirteAndRead(data);
	icm20602_enable(0);
	return status;
}
/**************************实现函数********************************************
*功　　能:	  读 修改 写 指定设备 指定寄存器一个字节 中的1个位
reg	   寄存器地址
bitNum  要修改目标字节的bitNum位
data  为0 时，目标位将被清0 否则将被置位
*******************************************************************************/
void icm20602_writeBit(u8 reg, u8 bitNum, u8 data) 
{
    u8 b;
    icm20602_readbuf(reg, 1, &b);
    b = (data != 0) ? (b | (1 << bitNum)) : (b & ~(1 << bitNum));
	icm20602_writebyte(reg, b);
}
/**************************实现函数********************************************
*功　　能:	    读 修改 写 指定设备 指定寄存器一个字节 中的多个位
reg	   寄存器地址
bitStart  目标字节的起始位
length   位长度
data    存放改变目标字节位的值
******************************************************************************
static void icm20602_writeBits(u8 reg,u8 bitStart,u8 length,u8 data)
{
    u8 b,mask;
    icm20602_readbuf(reg, 1, &b);
    mask = (0xFF << (bitStart + 1)) | 0xFF >> ((8 - bitStart) + length - 1);
    data <<= (8 - length);
    data >>= (7 - bitStart);
    b &= mask;
    b |= data;
    icm20602_writebyte(reg, b);
}*/
void icm20602_setIntEnabled ( void )
{
	icm20602_writeBit ( MPUREG_INT_PIN_CFG, ICM_INTCFG_INT_LEVEL_BIT, ICM_INTMODE_ACTIVEHIGH );
	icm20602_writeBit ( MPUREG_INT_PIN_CFG, ICM_INTCFG_INT_OPEN_BIT, ICM_INTDRV_PUSHPULL );
	icm20602_writeBit ( MPUREG_INT_PIN_CFG, ICM_INTCFG_LATCH_INT_EN_BIT, ICM_INTLATCH_50USPULSE);//MPU6050_INTLATCH_WAITCLEAR );
	icm20602_writeBit ( MPUREG_INT_PIN_CFG, ICM_INTCFG_INT_RD_CLEAR_BIT, ICM_INTCLEAR_ANYREAD );

	icm20602_writeBit ( MPUREG_INT_ENABLE, ICM_INTERRUPT_DATA_RDY_BIT, 1 );
//	Drv_Icm20602ReadyPinInit();
}
void icm20602_INT_Config(void)
{
	icm20602_setIntEnabled();
}
/**************************实现函数********************************************
*功　　能:	    初始化icm进入可用状态。
*******************************************************************************/
u8 ICM_ID;
u8 Drv_Icm20602Init(void)
{
	icm20602_writebyte(MPU_RA_PWR_MGMT_1,0x80);
	HAL_Delay(10);
	icm20602_writebyte(MPU_RA_PWR_MGMT_1,0x01);
	HAL_Delay(10);
	
	u8 tmp;
	icm20602_readbuf(MPUREG_WHOAMI, 1, &tmp);
	if(tmp != MPU_WHOAMI_20602)
	return 0;
	
	/*复位reg*/
	icm20602_writebyte(MPU_RA_SIGNAL_PATH_RESET,0x03);
	HAL_Delay(10);
  /*复位reg*/
	icm20602_writebyte(MPU_RA_USER_CTRL,0x01);	
	HAL_Delay(10);

	icm20602_writebyte(0x70,0x40);//dmp 
	HAL_Delay(10);
	icm20602_writebyte(MPU_RA_PWR_MGMT_2,0x00);
	HAL_Delay(10);
	//不分频，配置内部lpf以后，最高1000hz采样，同时对应产生1ms中断
	icm20602_writebyte(MPU_RA_SMPLRT_DIV,0);
	HAL_Delay(10);
	
	/*陀螺仪LPF 20HZ*/
	icm20602_writebyte(MPU_RA_CONFIG,ICM20602_LPF_20HZ);
	HAL_Delay(10);
	/*陀螺仪量程 +-2000dps*/
	icm20602_writebyte(MPU_RA_GYRO_CONFIG,(3 << 3));
	HAL_Delay(10);
	/*加速度计量程 +-16G*/
	icm20602_writebyte(MPU_RA_ACCEL_CONFIG,(3 << 3));
	HAL_Delay(10);
	/*加速度计LPF 20HZ*/
	icm20602_writebyte(0X1D,0x04);
	HAL_Delay(10);
	/*关闭低功耗*/
	icm20602_writebyte(0X1E,0x00);
	HAL_Delay(10);
	/*关闭FIFO*/
	icm20602_writebyte(0X23,0x00);
	HAL_Delay(10);
	
	icm20602_INT_Config();
	//读取ID
	icm20602_readbuf(MPU_RA_WHO_AM_I, 1, &ICM_ID);
	//
	if(ICM_ID == 0X12)
	{
		return 1;
	}
	else
	{
		return 0;
	}
}



u8 mpu_buffer[14];

void Drv_Icm20602_Read( void )
{
	//读取传感器寄存器，连续读14个字节
	icm20602_readbuf(MPUREG_ACCEL_XOUT_H,14,mpu_buffer);
	//数据赋值
	ICM_Get_Data();
}

#include "Sensor_Basic.h"
void ICM_Get_Data()
{
	s16 temp[2][3];
	//	/*读取buffer原始数据*/
	temp[0][X] = (s16)((((u16)mpu_buffer[0]) << 8) | mpu_buffer[1]);//>>1;// + 2 *sensor.Tempreature_C;// + 5 *sensor.Tempreature_C;
	temp[0][Y] = (s16)((((u16)mpu_buffer[2]) << 8) | mpu_buffer[3]);//>>1;// + 2 *sensor.Tempreature_C;// + 5 *sensor.Tempreature_C;
	temp[0][Z] = (s16)((((u16)mpu_buffer[4]) << 8) | mpu_buffer[5]);//>>1;// + 4 *sensor.Tempreature_C;// + 7 *sensor.Tempreature_C;
 
	temp[1][X] = (s16)((((u16)mpu_buffer[ 8]) << 8) | mpu_buffer[ 9]) ;
	temp[1][Y] = (s16)((((u16)mpu_buffer[10]) << 8) | mpu_buffer[11]) ;
	temp[1][Z] = (s16)((((u16)mpu_buffer[12]) << 8) | mpu_buffer[13]) ;

	sensor.Tempreature = ((((int16_t)mpu_buffer[6]) << 8) | mpu_buffer[7]); //tempreature
	/*icm20602温度*/
	sensor.Tempreature_C = sensor.Tempreature/326.8f + 25 ;//sensor.Tempreature/340.0f + 36.5f;

	//调整物理坐标轴与软件坐标轴方向定义一致
	sensor.Acc_Original[X] = temp[0][X];
	sensor.Acc_Original[Y] = temp[0][Y];
	sensor.Acc_Original[Z] = temp[0][Z];
	
	sensor.Gyro_Original[X] = temp[1][X];
	sensor.Gyro_Original[Y] = temp[1][Y];
	sensor.Gyro_Original[Z] = temp[1][Z];
	
//	printf("%5.2f\r\n", sensor.Tempreature_C );
//	printf("%d\r\n", temp[0][Z]);
	
}




