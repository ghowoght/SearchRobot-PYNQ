#ifndef __MachineBi_FSM_H
#define __MachineBi_FSM_H

#include "stm32f10x.h"
#include "stm32f10x_conf.h"
#include "FSM.h"
#include "usart3.h"
#include "UART3_FSM.h"
#include "math.h" 

//转角及位置定义
#define IdlePosition1	300; 
#define IdlePosition2	1200;
#define IdlePosition3	930;
#define IdlePosition4 	700;
#define IdlePosition5	1100;

//物理长度
#define RealSense2MachineBiDis	0.01f
#define l1						0.105f
#define l2						0.078f
#define l3						0.070f
#define CarH1					0.021f
#define CarH2					0.013f
#define RealSenseLength			0.015f

//比例常数
#define Ratio					5
#define PI						3.14159


enum{
    MachineBi_Idle,
    Attitude_Solution,
    Rise_Up_toGrab,
    Horizional_Turn_toGrab,
    Drop_toGrab,
    Grab,
    Rise_Up_toIdle,
    Horizional_Turn_toIdle,
    Wait_Release_Item,
	Release_Item
};


//typedef State(*MachineBi_Procedure)(void*);

typedef struct{
	float Position1;    //��е��ˮƽ��תλ��
	float Position2;
	float Position3;
	float Position4;
	float Position5; 	
}Position_St;

typedef struct{
	float Target1;
	float Target2;
	float Target3;
	float Target4;
	float Target5;	
}Target_St;

typedef struct{
	float 	RealSense_TargetX;
	float 	RealSense_TargetY;
	float 	RealSense_TargetBeta;	
}RealSense_Tar_t;

typedef struct{
	float 	MachineBi_TargetX;
	float 	MachineBi_TargetY;
	float 	MachineBi_TargetBeta;	
}MachineBi_Tar_t;

typedef struct{
	Position_St	    Position;
	Target_St		Target;
	RealSense_Tar_t	RealSense_Target;
	MachineBi_Tar_t MachineBi_Target;
}MachineBi_SM_Arg_t;

void HorizontalAttitudeSolution(MachineBi_SM_Arg_t* arg);
void VerticalAttitudeSolution(MachineBi_SM_Arg_t* arg);

State MachineBi_Idle_Fun(void* arg);
State Attitude_Solution_Fun(void* arg);
State Rise_Up_toGrab_Fun(void* arg);
State Horizional_Turn_toGrab_Fun(void* arg);
State Drop_toGrab_Fun(void* arg);
State Grab_Fun(void* arg);
State Rise_Up_toIdle_Fun(void* arg);
State Horizional_Turn_toIdle_Fun(void* arg);
State Wait_Release_Item_Fun(void* arg);
State Release_Item_Fun(void* arg);

void  MachineBiStateMachine(MachineBi_SM_Arg_t* arg);

extern MachineBi_SM_Arg_t	MachineBi_SM_Arg;

#endif
