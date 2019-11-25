#ifndef __CONTROL_H
#define __CONTROL_H
#include "sys.h"
  /**************************************************************************
作者：平衡小车之家
我的淘宝小店：http://shop114407458.taobao.com/
**************************************************************************/
#define PI 3.14159265
#define FILTERING_TIMES  10
extern	int Balance_Pwm,Velocity_Pwm,Turn_Pwm;
int EXTI15_10_IRQHandler(void);
u8 Kinematic_Analysis(float x,float y,float Beta,float Alpha,float Gamma);
void Set_Pwm(float velocity1,float velocity2,float velocity3,float velocity4,float velocity5,float velocity6);
void Key(void);
void Xianfu_Pwm(void);
void Xianfu_Pwm2(void);
u8 Turn_Off( int voltage);
void Get_Angle(u8 way);
int myabs(int a);
void Control(float Step);
float Position_PID1 (float Encoder,float Target);
float Position_PID2 (float Encoder,float Target);
float Position_PID3 (float Encoder,float Target);
float Position_PID4 (float Encoder,float Target);
float Position_PID5 (float Encoder,float Target);
float Position_PID6 (float Encoder,float Target);
#endif
