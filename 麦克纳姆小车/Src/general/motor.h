#ifndef __MOTOR_H__
#define __MOTOR_H__

#include "sys.h"

#define DRVTIM TIM1
#define DUTY_MAX 1000

#define MT_P_BANK GPIOA
#define MT_N_BANK GPIOB

#define MT_1P_PIN LL_GPIO_PIN_8
#define MT_2P_PIN LL_GPIO_PIN_9
#define MT_3P_PIN LL_GPIO_PIN_10
#define MT_4P_PIN LL_GPIO_PIN_11

#define MT_1N_PIN LL_GPIO_PIN_13
#define MT_2N_PIN LL_GPIO_PIN_14
#define MT_3N_PIN LL_GPIO_PIN_15
#define MT_4N_PIN LL_GPIO_PIN_12

extern UART_HandleTypeDef huart2;

enum
{
	X,
	Y,
	R,
};

typedef struct
{
	int ori[3];
	float x;
	float y;
	float r;
	float check;
}control_st;
extern control_st control;

//∂®“ÂPID
typedef struct
{
	float P;
	float pout;
	
	float I;
	float IMAX;
	float iout;
	
	float D;
	float dout;
	
	float OUT;
	
	float error;
	float Last_error;	
}PID;

void Encoder_Task(void);

extern int encoder[4];
extern float exp_speed[4];
extern uint8_t data_receive;
void Set_Speed(float speed[]);
void PID_Init(void);
void Motor_Task(void);
void data_encoder(uint8_t data);

void Exp_Speed_Cal(void);

#endif 
