#include "DataCal.h"
#include "Imu.h"
#include "icm20602.h"

#include "Sensor_Basic.h"


void Sensor_Get()//1ms
{
	/*读取陀螺仪加速度计数据*/
	Drv_Icm20602_Read();

}

extern s32 sensor_val_ref[];

static u8 reset_imu_f;
void IMU_Update_Task(u8 dT_ms)
{									
		if(0) 
		{
			imu_state.gkp = 0.0f;
			imu_state.gki = 0.0f;
			
		}
		else
		{
			if(0)
			{
				imu_state.gkp = 0.2f;
			}
			else
			{
				/*设置重力互补融合修正kp系数*/
				imu_state.gkp = 0.2f;//0.4f;
			}
			
			/*设置重力互补融合修正ki系数*/
			imu_state.gki = 0.01f;
			
			/*设置罗盘互补融合修正ki系数*/
			imu_state.mkp = 0.1f;
		}
		
		/*姿态计算，更新，融合*/
		IMU_update(dT_ms *1e-3f, &imu_state,sensor.Gyro_rad, sensor.Acc_cmss, &imu_data);//x3_dT_1[2] * 0.000001f
		
			
//////////////////////////////////////////////////////////////////////	
}
