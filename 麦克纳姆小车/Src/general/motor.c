#include "main.h"
#include "stm32f1xx_hal.h"
#include "motor.h"

extern TIM_HandleTypeDef htim3;
extern TIM_HandleTypeDef htim4;
extern TIM_HandleTypeDef htim5;

/*Encoder for motor 1*/
int16_t cnt1 = 0;
/*end Encoder for motor 1*/
control_st control;

/*Encoder for motor 1*/
void EXTI2_IRQHandler(void)
{
	if(__HAL_GPIO_EXTI_GET_IT(GPIO_PIN_2) != RESET)
  {
    __HAL_GPIO_EXTI_CLEAR_IT(GPIO_PIN_2);
//		if(HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_2) ==
//				HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_15))
		if(PBin(2) == PAin(15))
			++cnt1;
		else
			--cnt1;
	}
}

void EXTI15_10_IRQHandler(void)
{
	if(__HAL_GPIO_EXTI_GET_IT(GPIO_PIN_15) != RESET)
  {
    __HAL_GPIO_EXTI_CLEAR_IT(GPIO_PIN_15);
//		if(HAL_GPIO_ReadPin(GPIOB,GPIO_PIN_2) == 
//				HAL_GPIO_ReadPin(GPIOA,GPIO_PIN_15))
		if(PBin(2) == PAin(15))
			--cnt1;
		else
			++cnt1;
	}
}
/*end Encoder for motor 1*/

int encoder[4] = {0};
void Encoder_Task(void)
{
	encoder[0] =-(int32_t)cnt1 / 2;
	encoder[2] = (short)TIM3->CNT; //(int32_t)((int16_t)(__HAL_TIM_GET_COUNTER(&htim3)));
	encoder[1] =-(short)TIM4->CNT; //(int32_t)((int16_t)(__HAL_TIM_GET_COUNTER(&htim4)));
	encoder[3] = (short)TIM5->CNT; //(int32_t)((int16_t)(__HAL_TIM_GET_COUNTER(&htim5)));
//	printf("enc %5d %5d %5d %5d\r\n", encoder[0], encoder[2], encoder[1], encoder[3]);
	
	cnt1 = 0;
	TIM3->CNT = 0;
	TIM4->CNT = 0;
	TIM5->CNT = 0;
	
}

float Get_MxMi(float num,float max,float min)
{
	if(num>max)
		return max;
	else if(num<min)
		return min;
	else
		return num;
}

#include <math.h>
/* 0~40 */
void Set_Speed(float speed[])
{
	if((fabs(exp_speed[0]) + fabs(exp_speed[1]) + fabs(exp_speed[2]) + fabs(exp_speed[3])) <= 1)
	{
		LL_GPIO_SetOutputPin(MT_N_BANK, MT_4N_PIN);
		LL_GPIO_SetPinMode(MT_P_BANK, MT_1P_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_P_BANK, MT_2P_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_P_BANK, MT_3P_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_P_BANK, MT_4P_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_1N_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_2N_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_3N_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_TIM_DisableAllOutputs(DRVTIM);
		return;
	}
	
	LL_TIM_EnableAllOutputs(DRVTIM);
	
	if(speed[0] > 0)
	{
		LL_GPIO_SetPinMode(MT_P_BANK, MT_1P_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_1N_PIN, LL_GPIO_MODE_OUTPUT);
	}
	else
	{
		LL_GPIO_SetPinMode(MT_P_BANK, MT_1P_PIN, LL_GPIO_MODE_OUTPUT);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_1N_PIN, LL_GPIO_MODE_ALTERNATE);
	}
	if(speed[1] > 0)
	{
		LL_GPIO_SetPinMode(MT_P_BANK, MT_2P_PIN, LL_GPIO_MODE_OUTPUT);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_2N_PIN, LL_GPIO_MODE_ALTERNATE);
	}
	else
	{
		LL_GPIO_SetPinMode(MT_P_BANK, MT_2P_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_2N_PIN, LL_GPIO_MODE_OUTPUT);
	}
	if(speed[2] > 0)
	{
		LL_GPIO_SetPinMode(MT_P_BANK, MT_3P_PIN, LL_GPIO_MODE_OUTPUT);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_3N_PIN, LL_GPIO_MODE_ALTERNATE);
	}
	else
	{
		LL_GPIO_SetPinMode(MT_P_BANK, MT_3P_PIN, LL_GPIO_MODE_ALTERNATE);
		LL_GPIO_SetPinMode(MT_N_BANK, MT_3N_PIN, LL_GPIO_MODE_OUTPUT);
	}
	if(speed[3] > 0)
	{
		LL_GPIO_ResetOutputPin(MT_N_BANK, MT_4N_PIN);
		LL_TIM_OC_SetPolarity(DRVTIM, LL_TIM_CHANNEL_CH4, LL_TIM_OCPOLARITY_HIGH);
	}
	else
	{
		LL_GPIO_SetOutputPin(MT_N_BANK, MT_4N_PIN);
		LL_TIM_OC_SetPolarity(DRVTIM, LL_TIM_CHANNEL_CH4, LL_TIM_OCPOLARITY_LOW);
	}
	
	for(int i = 0; i < 3; i++)
	{
		speed[i] = speed[i] > 0 ? speed[i] : -speed[i];
	}
	
	TIM1->CCR1 = (int)(pow(speed[0],3)*0.0495-pow(speed[0],2)*2.3878+speed[0]*38.583+22.562);
	TIM1->CCR2 = (int)(pow(speed[1],3)*0.0495-pow(speed[1],2)*2.3878+speed[1]*38.583+22.562);
	TIM1->CCR3 = (int)(pow(speed[2],3)*0.0495-pow(speed[2],2)*2.3878+speed[2]*38.583+22.562);
	
	if(speed[3] > 0)
	{
		TIM1->CCR4 = (int)(pow(speed[3],3)*0.0495-pow(speed[3],2)*2.3878+speed[3]*38.583+22.562);
	}
	else
	{
		TIM1->CCR4 = -speed[3] * 25;
	}
}

PID pid[4];
void PID_Init(void)
{
	pid[0].P=1.0;
	pid[0].I=0.0;
	pid[0].D=150.0;

	pid[1].P=1.0;
	pid[1].I=0.0;
	pid[1].D=150.0;

	pid[2].P=1.0;
	pid[2].I=0.0;
	pid[2].D=150.0;

	pid[3].P=1.0;
	pid[3].I=0.0;
	pid[3].D=150.0;
	
	pid[0].iout=0;
	pid[1].iout=0;
	pid[2].iout=0;
	pid[3].iout=0;
	
	pid[0].OUT=0;
	pid[1].OUT=0;
	pid[2].OUT=0;
	pid[3].OUT=0;
	
	pid[0].error=0;
	pid[1].error=0;
	pid[2].error=0;
	pid[3].error=0;
	
	pid[0].Last_error=0;
	pid[1].Last_error=0;
	pid[2].Last_error=0;
	pid[3].Last_error=0;
}

float exp_speed[4] = {20,20,20,20};
void Motor_Task(void)
{
	Exp_Speed_Cal();
	for(u8 i=0;i<4;i++)
	{
		pid[i].error=exp_speed[i]-encoder[i];
		pid[i].pout=pid[i].P*pid[i].error;
		pid[i].iout+=(pid[i].I*0.02)*pid[i].error;
		pid[i].iout=Get_MxMi(pid[i].iout,10,-10);
		pid[i].dout=pid[i].D*0.02*(pid[i].error-pid[i].Last_error);
		pid[i].Last_error=pid[i].error;
		pid[i].OUT+=pid[i].pout+pid[i].iout+pid[i].dout;
		pid[i].OUT=Get_MxMi(pid[i].OUT,40,-40);
	}

	float speed[4] = {pid[0].OUT,pid[1].OUT,pid[2].OUT,pid[3].OUT};
	Set_Speed(speed);		
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle) 
{ 
	HAL_UART_Receive_IT(&huart2,&data_receive,1);
		
	data_encoder(data_receive);
}

void data_encoder(uint8_t data)
{
    static u8 datatemp[20];
    static int state = 0;
    if (state == 0 && data == 0xAA) 
    {
			state++;
    }
		else if (state == 1 && data == 0xBB) 
    {
			state++;
    }
    else if (state == 2)
    {
				static u8 cnt = 0;
        datatemp[cnt++] = data;
				if(cnt == 8)
				{
					state++;
					cnt = 0;
				}
        
    }
    
		if (state == 3)
    {
        control.ori[X] = (datatemp[0] << 8) | datatemp[1];
				control.ori[Y] = (datatemp[2] << 8) | datatemp[3];
				control.ori[R] = (datatemp[4] << 8) | datatemp[5];
				control.check  = (datatemp[6] << 8) | datatemp[7];
				int16_t check = control.ori[X] + control.ori[Y] + control.ori[R];
			
				if(check == control.check)
				{
					control.ori[X] = Get_MxMi(control.ori[X], 2000, 1000);
					control.ori[Y] = Get_MxMi(control.ori[Y], 2000, 1000);
					control.ori[R] = Get_MxMi(control.ori[R], 2000, 1000);
				
					control.x = (control.ori[X] - 1500) / 500.0;
					control.y = (control.ori[Y] - 1500) / 500.0;
					control.r = (control.ori[R] - 1500) / 500.0;
				}
				
        state = 0;
    }

}

void Exp_Speed_Cal(void)
{
	exp_speed[0] = (control.x + control.y + control.r) * 40;
	exp_speed[1] = (control.x - control.y + control.r) * 40;
	exp_speed[2] = (control.x - control.y - control.r) * 40;
	exp_speed[3] = (control.x + control.y - control.r) * 40;
	
	exp_speed[0] = Get_MxMi(exp_speed[0], 39, -39);
	exp_speed[1] = Get_MxMi(exp_speed[1], 39, -39);
	exp_speed[2] = Get_MxMi(exp_speed[2], 39, -39);
	exp_speed[3] = Get_MxMi(exp_speed[3], 39, -39);
	
//	printf("exp %5.2f %5.2f %5.2f %5.2f\r\n", exp_speed[0], exp_speed[1], exp_speed[2], exp_speed[3]);
//	printf("exp %5.2f %5.2f %5.2f\r\n", control.x,control.y,control.r);

	
}

