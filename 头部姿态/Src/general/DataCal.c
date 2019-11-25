#include "DataCal.h"
#include "Imu.h"
#include "icm20602.h"

#include "Sensor_Basic.h"


void Sensor_Get()//1ms
{
	/*��ȡ�����Ǽ��ٶȼ�����*/
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
				/*�������������ں�����kpϵ��*/
				imu_state.gkp = 0.2f;//0.4f;
			}
			
			/*�������������ں�����kiϵ��*/
			imu_state.gki = 0.01f;
			
			/*�������̻����ں�����kiϵ��*/
			imu_state.mkp = 0.1f;
		}
		
		/*��̬���㣬���£��ں�*/
		IMU_update(dT_ms *1e-3f, &imu_state,sensor.Gyro_rad, sensor.Acc_cmss, &imu_data);//x3_dT_1[2] * 0.000001f
		
			
//////////////////////////////////////////////////////////////////////	
}
