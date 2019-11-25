#ifndef __ANO_SENSOR_BASIC_H
#define __ANO_SENSOR_BASIC_H

//==����
#include "sys.h"
#include "data.h"

//==����
#define OFFSET_AV_NUM 50
#define GRAVITY_ACC_PN16G    2048
#define RANGE_PN2000_TO_RAD  0.001065f
#define RANGE_PN16G_TO_CMSS  0.4790f

//==��������
typedef struct
{
	float center_pos_cm[VEC_XYZ];
	float gyro_rad[VEC_XYZ];
	float gyro_rad_old[VEC_XYZ];
	float gyro_rad_acc[VEC_XYZ];
	float linear_acc[VEC_XYZ];
}_center_pos_st;
extern _center_pos_st center_pos;



typedef struct
{
  u8 surface_CALIBRATE;
	float surface_vec[VEC_XYZ];
	float surface_unitvec[VEC_XYZ];
	
}_sensor_rotate_st;
extern _sensor_rotate_st sensor_rot ;

typedef struct 
{
	//У׼���� 
	u8 acc_CALIBRATE;
	u8 gyr_CALIBRATE;
	u8 acc_z_auto_CALIBRATE;
	
	//ԭʼ����
	s16 Acc_Original[VEC_XYZ];
	s16 Gyro_Original[VEC_XYZ];	
	
	s16 Acc[VEC_XYZ];
	s32 Acc_cmss[VEC_XYZ];			//��λ��cm/s2
	float Gyro[VEC_XYZ];
	float Gyro_deg[VEC_XYZ];    //��λ���Ƕ�
	float Gyro_rad[VEC_XYZ];		//��λ������

	s16 Tempreature;
	float Tempreature_C;				//��λ����
	
}_sensor_st;//__attribute__((packed)) 

extern _sensor_st sensor;

//==��������

//static
void Center_Pos_Set(void);

//public
void Sensor_Data_Prepare(u8 dT_ms);
void Sensor_Basic_Init(void);





#endif
