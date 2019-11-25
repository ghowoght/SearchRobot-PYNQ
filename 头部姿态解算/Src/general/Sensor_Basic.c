//默认引用：
#include "Sensor_Basic.h"
#include "Math.h"
#include "data.h"


//数据接口定义：
//=========mapping===========
//需要引用的文件：

//需要调用引用的外部变量：
#define X_POS_OFFSET_CM    (0)//(Ano_Parame.set.center_pos_cm[X]); //X轴中心偏移存储值
#define Y_POS_OFFSET_CM    (0)//(Ano_Parame.set.center_pos_cm[Y]); //Y轴中心偏移存储值
#define Z_POS_OFFSET_CM    (0)//(Ano_Parame.set.center_pos_cm[Z]); //Z轴中心偏移存储值

//需要操作赋值的外部变量：


#define GYR_ACC_FILTER 0.25f //陀螺仪加速度计滤波系数

//=========mapping===========

void Sensor_Basic_Init()
{
	/*设置重心相对传感器的偏移量*/
	Center_Pos_Set();
	
	sensor.acc_z_auto_CALIBRATE = 1; //开机自动对准Z轴
	sensor.gyr_CALIBRATE = 2;//开机自动校准陀螺仪
}

_center_pos_st center_pos;
_sensor_st sensor;

s32 sensor_val[6];
s32 sensor_val_rot[6];
s32 sensor_val_ref[6];
//float sensor_val_lpf[2][6];


s32 sum_temp[7]={0,0,0,0,0,0,0};
s32 acc_auto_sum_temp[3];
s16 acc_z_auto[4];

u16 acc_sum_cnt = 0,gyro_sum_cnt = 0,acc_z_auto_cnt;

s16 g_old[VEC_XYZ];
float g_d_sum[VEC_XYZ] = {500,500,500};

void mpu_auto_az()
{
	if(sensor.acc_z_auto_CALIBRATE)
	{
		
		acc_z_auto_cnt++;
		
		acc_auto_sum_temp[0] += sensor_val_ref[A_X];
		acc_auto_sum_temp[1] += sensor_val_ref[A_Y];
		acc_auto_sum_temp[2] += sensor_val_rot[A_Z];
		
		if(acc_z_auto_cnt>=OFFSET_AV_NUM)
		{
			
			sensor.acc_z_auto_CALIBRATE = 0;
			acc_z_auto_cnt = 0;

			for(u8 i = 0;i<3;i++)
			{			
				acc_z_auto[i] = acc_auto_sum_temp[i]/OFFSET_AV_NUM;
				
				acc_auto_sum_temp[i] = 0;
			}
			
			acc_z_auto[3] = my_sqrt( GRAVITY_ACC_PN16G*GRAVITY_ACC_PN16G - (my_pow(acc_z_auto[0]) + my_pow(acc_z_auto[1])) );			

		}
		
	}
}


void motionless_check(u8 dT_ms)
{
	u8 t = 0;

	for(u8 i = 0;i<3;i++)
	{
		g_d_sum[i] += 3*ABS(sensor.Gyro_Original[i] - g_old[i]) ;
		
		g_d_sum[i] -= dT_ms ;	
		
		g_d_sum[i] = LIMIT(g_d_sum[i],0,200);
		
		if( g_d_sum[i] > 10)
		{
			t++;
		}
		
		g_old[i] = sensor.Gyro_Original[i];
	}

	if(t>=2)
	{
		flag.motionless = 0;	
	}
	else
	{
		flag.motionless = 1;
	}

}

void MPU6050_Data_Offset()
{
	static u8 off_cnt;

	
	if(sensor.gyr_CALIBRATE || sensor.acc_CALIBRATE || sensor.acc_z_auto_CALIBRATE)
	{	



///////////////////复位校准值///////////////////////////		
//		if(flag.motionless == 0 || sensor_val[A_Z]<(GRAVITY_ACC_PN16G/2) || (flag.mems_temperature_ok == 0))
//		{
//				gyro_sum_cnt = 0;
//				acc_sum_cnt=0;
//				acc_z_auto_cnt = 0;
//				
//				for(u8 j=0;j<3;j++)
//				{
//					acc_auto_sum_temp[j] = sum_temp[G_X+j] = sum_temp[A_X+j] = 0;
//				}
//				sum_temp[TEM] = 0;
//		}

		

		
///////////////////////////////////////////////////////////
		off_cnt++;			
		if(off_cnt>=10)
		{	
			off_cnt=0;

			
			
			if(sensor.gyr_CALIBRATE)
			{

				gyro_sum_cnt++;
				
				for(u8 i = 0;i<3;i++)
				{
					sum_temp[G_X+i] += sensor.Gyro_Original[i];
				}
				if( gyro_sum_cnt >= OFFSET_AV_NUM )
				{

					for(u8 i = 0;i<3;i++)
					{
						save.gyro_offset[i] = (float)sum_temp[G_X+i]/OFFSET_AV_NUM;
						
						sum_temp[G_X + i] = 0;
					}
					gyro_sum_cnt =0;
//					printf("%8.2f\r\n", save.gyro_offset[Z]);
					if(sensor.gyr_CALIBRATE == 1)
					{
						if(sensor.acc_CALIBRATE == 0)
						{
//							data_save();
						}
					}
					
					sensor.gyr_CALIBRATE = 0;

				}
				
			}
			
			if(sensor.acc_CALIBRATE == 1)
			{
				acc_sum_cnt++;
				
				sum_temp[A_X] += sensor_val_rot[A_X];
				sum_temp[A_Y] += sensor_val_rot[A_Y];
				sum_temp[A_Z] += sensor_val_rot[A_Z] - GRAVITY_ACC_PN16G;// - 65535/16;   // +-8G
				sum_temp[TEM] += sensor.Tempreature;

				if( acc_sum_cnt >= OFFSET_AV_NUM )
				{
					for(u8 i=0 ;i<3;i++)
					{
						save.acc_offset[i] = sum_temp[A_X+i]/OFFSET_AV_NUM;
						
						sum_temp[A_X + i] = 0;
					}

					acc_sum_cnt =0;
					sensor.acc_CALIBRATE = 0;
//					ANO_DT_SendString("ACC init OK!");

//					data_save();
				}	
			}
		}
	}
}



	

s16 roll_gz_comp;
float wh_matrix[VEC_XYZ][VEC_XYZ] = 
{
	{1,0,0},
	{0,1,0},
	{0,0,1}

};

void Center_Pos_Set()
{
	center_pos.center_pos_cm[X] = X_POS_OFFSET_CM;//+0.0f;
	center_pos.center_pos_cm[Y] = Y_POS_OFFSET_CM;//-0.0f;
	center_pos.center_pos_cm[Z] = Z_POS_OFFSET_CM;//+0.0f;
}

static float gyr_f[4][VEC_XYZ],acc_f[4][VEC_XYZ];

void Sensor_Data_Prepare(u8 dT_ms)
{	
	float hz = 0 ;
	if(dT_ms != 0) hz = 1000/dT_ms;
	
	/*静止检测*/
	motionless_check(dT_ms);
			
	MPU6050_Data_Offset(); //校准函数


	/*得出校准后的数据*/
	for(u8 i=0;i<3;i++)
	{ 
		
		sensor_val[A_X+i] = sensor.Acc_Original[i] ;

		sensor_val[G_X+i] = sensor.Gyro_Original[i] - save.gyro_offset[i] ;
		
	}
	

	/*赋值*/
	for(u8 i = 0;i<6;i++)
	{
		sensor_val_rot[i] = sensor_val[i];
	}

	/*数据坐标转90度*/
	sensor_val_ref[G_X] =  sensor_val_rot[G_Y] ;
	sensor_val_ref[G_Y] = -sensor_val_rot[G_X] ;
	sensor_val_ref[G_Z] =  sensor_val_rot[G_Z];

	
	sensor_val_ref[A_X] =  (sensor_val_rot[A_Y] - save.acc_offset[Y]  );
	sensor_val_ref[A_Y] = -(sensor_val_rot[A_X] - save.acc_offset[X]  );
	sensor_val_ref[A_Z] =  (sensor_val_rot[A_Z] - save.acc_offset[Z]  );
	
	/*单独校准z轴模长*/
	mpu_auto_az();

//======================================================================
	
	/*软件低通滤波*/
	for(u8 i=0;i<3;i++)
	{	
		//
		gyr_f[3][X +i] = (sensor_val_ref[G_X + i] );
		acc_f[3][X +i] = (sensor_val_ref[A_X + i] );
		//
		for(u8 j=3;j>0;j--)
		{
			//
			gyr_f[j-1][X +i] += GYR_ACC_FILTER *(gyr_f[j][X +i] - gyr_f[j-1][X +i]);
			acc_f[j-1][X +i] += GYR_ACC_FILTER *(acc_f[j][X +i] - acc_f[j-1][X +i]);
		}
		
	}
	
			/*旋转加速度补偿*/
//======================================================================
	
	for(u8 i=0;i<3;i++)
	{	
		center_pos.gyro_rad_old[i] = center_pos.gyro_rad[i];
		center_pos.gyro_rad[i] =  gyr_f[0][X + i] *RANGE_PN2000_TO_RAD;//0.001065f;
		center_pos.gyro_rad_acc[i] = hz *(center_pos.gyro_rad[i] - center_pos.gyro_rad_old[i]);
	}
	
	center_pos.linear_acc[X] = +center_pos.gyro_rad_acc[Z] *center_pos.center_pos_cm[Y] - center_pos.gyro_rad_acc[Y] *center_pos.center_pos_cm[Z];
	center_pos.linear_acc[Y] = -center_pos.gyro_rad_acc[Z] *center_pos.center_pos_cm[X] + center_pos.gyro_rad_acc[X] *center_pos.center_pos_cm[Z];
	center_pos.linear_acc[Z] = +center_pos.gyro_rad_acc[Y] *center_pos.center_pos_cm[X] - center_pos.gyro_rad_acc[X] *center_pos.center_pos_cm[Y];
	
//======================================================================
	/*赋值*/
	for(u8 i=0;i<3;i++)
	{

		
		sensor.Gyro[X+i] = gyr_f[0][i];//sensor_val_ref[G_X + i];
		
		sensor.Acc[X+i] = acc_f[0][i] - center_pos.linear_acc[i]/RANGE_PN16G_TO_CMSS;//sensor_val_ref[A_X+i];//
	}
	
	/*转换单位*/
		for(u8 i =0 ;i<3;i++)
		{
			/*陀螺仪转换到度每秒，量程+-2000度*/
			sensor.Gyro_deg[i] = sensor.Gyro[i] *0.061036f ;//  /65535 * 4000; +-2000度 0.061

			/*陀螺仪转换到弧度度每秒，量程+-2000度*/
			sensor.Gyro_rad[i] = sensor.Gyro_deg[i] *0.01745f;//sensor.Gyro[i] *RANGE_PN2000_TO_RAD ;//  0.001065264436f //微调值 0.0010652f
		
			/*加速度计转换到厘米每平方秒，量程+-8G*/
			sensor.Acc_cmss[i] = (sensor.Acc[i] *RANGE_PN16G_TO_CMSS );//   /65535 * 16*981; +-8G
		
		}
		
		/*无误*/
//		printf("%8.2f\r\n", sensor.Gyro_rad[Z]);
//		printf("%8d\r\n", sensor.Acc_cmss[Z]);

}
