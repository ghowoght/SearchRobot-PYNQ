 #include "motor.h"
 /**************************************************************************
���ߣ�ƽ��С��֮��
�ҵ��Ա�С�꣺http://shop114407458.taobao.com/
**************************************************************************/

/**************************************************************************
�������ܣ�PWM��ʼ��
��ڲ�������
����  ֵ����
**************************************************************************/
void TIM4_PWM_Init(u16 arr,u16 psc)
{		 			
	 GPIO_InitTypeDef GPIO_InitStructure;
	TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
	TIM_OCInitTypeDef  TIM_OCInitStructure;

	RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM4, ENABLE);// 
 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB , ENABLE);  //ʹ��GPIO����ʱ��ʹ��
	                                                                     	
	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_6|GPIO_Pin_7|GPIO_Pin_8|GPIO_Pin_9; //
	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;    //�����������
	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_Init(GPIOB, &GPIO_InitStructure);

	TIM_TimeBaseStructure.TIM_Period = arr; //��������һ�������¼�װ�����Զ���װ�ؼĴ������ڵ�ֵ	 80K
	TIM_TimeBaseStructure.TIM_Prescaler =psc; //����������ΪTIMxʱ��Ƶ�ʳ�����Ԥ��Ƶֵ  ����Ƶ
	TIM_TimeBaseStructure.TIM_ClockDivision = 0; //����ʱ�ӷָ�:TDTS = Tck_tim
	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  //TIM���ϼ���ģʽ
	TIM_TimeBaseInit(TIM4, &TIM_TimeBaseStructure); //����TIM_TimeBaseInitStruct��ָ���Ĳ�����ʼ��TIMx��ʱ�������λ

 
	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1; //ѡ��ʱ��ģʽ:TIM�����ȵ���ģʽ2
	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable; //�Ƚ����ʹ��
	TIM_OCInitStructure.TIM_Pulse = 0; //���ô�װ�벶��ȽϼĴ���������ֵ
	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High; //�������:TIM����Ƚϼ��Ը�
	TIM_OC1Init(TIM4, &TIM_OCInitStructure);  //����TIM_OCInitStruct��ָ���Ĳ�����ʼ������TIMx
	TIM_OC2Init(TIM4, &TIM_OCInitStructure);  //����TIM_OCInitStruct��ָ���Ĳ�����ʼ������TIMx
	TIM_OC3Init(TIM4, &TIM_OCInitStructure);  //����TIM_OCInitStruct��ָ���Ĳ�����ʼ������TIMx
	TIM_OC4Init(TIM4, &TIM_OCInitStructure);  //����TIM_OCInitStruct��ָ���Ĳ�����ʼ������TIMx

//	TIM4->CCR1=750;
//	TIM4->CCR2=750;
//	TIM4->CCR3=750;
//	TIM4->CCR4=750;

	TIM_OC1PreloadConfig(TIM4, TIM_OCPreload_Enable);  //CH1Ԥװ��ʹ��	 
	TIM_OC2PreloadConfig(TIM4, TIM_OCPreload_Enable);  //CH2Ԥװ��ʹ��	 
	TIM_OC3PreloadConfig(TIM4, TIM_OCPreload_Enable);  //CH3Ԥװ��ʹ��	 
	TIM_OC4PreloadConfig(TIM4, TIM_OCPreload_Enable);  //CH4Ԥװ��ʹ��	 
	
	TIM_ARRPreloadConfig(TIM4, ENABLE); //ʹ��TIMx��ARR�ϵ�Ԥװ�ؼĴ���
	
	TIM_Cmd(TIM4, ENABLE);  //ʹ��TIM4
} 

/**************************************************************************
�������ܣ�PWM��ʼ��
��ڲ�������
����  ֵ����
**************************************************************************/
void TIM1_PWM_Init(u16 arr,u16 psc)
{		 			
// GPIO_InitTypeDef GPIO_InitStructure;
//	TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;
//	TIM_OCInitTypeDef  TIM_OCInitStructure;
//	RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);// 
// 	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA , ENABLE);  //ʹ��GPIO����ʱ��ʹ��
//   //���ø�����Ϊ�����������,���TIM1 CH1 CH4��PWM���岨��
//	GPIO_InitStructure.GPIO_Pin = GPIO_Pin_8|GPIO_Pin_11; //TIM_CH1 //TIM_CH4
//	GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;  //�����������
//	GPIO_InitStructure.GPIO_Speed = GPIO_Speed_2MHz;
//	GPIO_Init(GPIOA, &GPIO_InitStructure);
//	
//	TIM_TimeBaseStructure.TIM_Period = arr; //��������һ�������¼�װ�����Զ���װ�ؼĴ������ڵ�ֵ	 
//	TIM_TimeBaseStructure.TIM_Prescaler =psc; //����������ΪTIMxʱ��Ƶ�ʳ�����Ԥ��Ƶֵ  ����Ƶ
//	TIM_TimeBaseStructure.TIM_ClockDivision = 0; //����ʱ�ӷָ�:TDTS = Tck_tim
//	TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;  //TIM���ϼ���ģʽ
//	TIM_TimeBaseInit(TIM1, &TIM_TimeBaseStructure); //����TIM_TimeBaseInitStruct��ָ���Ĳ�����ʼ��TIMx��ʱ�������λ

// 
//	TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1; //ѡ��ʱ��ģʽ:TIM�����ȵ���ģʽ1
//	TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable; //�Ƚ����ʹ��
//	TIM_OCInitStructure.TIM_Pulse = 0;                            //���ô�װ�벶��ȽϼĴ���������ֵ
//	TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;     //�������:TIM����Ƚϼ��Ը�
//	TIM_OC1Init(TIM1, &TIM_OCInitStructure);  //����TIM_OCInitStruct��ָ���Ĳ�����ʼ������TIMx
//	TIM_OC4Init(TIM1, &TIM_OCInitStructure);  //����TIM_OCInitStruct��ָ���Ĳ�����ʼ������TIMx

//  TIM_CtrlPWMOutputs(TIM1,ENABLE);	//MOE �����ʹ��	

//	TIM_OC1PreloadConfig(TIM1, TIM_OCPreload_Enable);  //CH1Ԥװ��ʹ��	 
//	TIM_OC4PreloadConfig(TIM1, TIM_OCPreload_Enable);  //CH4Ԥװ��ʹ��	 
//	
//	TIM_ARRPreloadConfig(TIM1, ENABLE); //ʹ��TIMx��ARR�ϵ�Ԥװ�ؼĴ���	
//	TIM_Cmd(TIM1, ENABLE);  //ʹ��TIM1
	
	RCC->APB2ENR|=1<<11;       //ʹ��TIM1ʱ��    
	RCC->APB2ENR|=1<<2;        //PORTAʱ��ʹ��     
	GPIOA->CRH&=0XFFFF0FF0;    //PORTA8 11�������
	GPIOA->CRH|=0X0000B00B;    //PORTA8 11�������
	TIM1->ARR=arr;             //�趨�������Զ���װֵ 
	TIM1->PSC=psc;             //Ԥ��Ƶ������Ƶ
	TIM1->CCMR2|=6<<12;        //CH4 PWM1ģʽ	
	TIM1->CCMR1|=6<<4;         //CH1 PWM1ģʽ	
	TIM1->CCMR2|=1<<11;        //CH4Ԥװ��ʹ��	 
	TIM1->CCMR1|=1<<3;         //CH1Ԥװ��ʹ��	  
	TIM1->CCER|=1<<12;         //CH4���ʹ��	   
	TIM1->CCER|=1<<0;          //CH1���ʹ��	
	TIM1->BDTR |= 1<<15;       //TIM1����Ҫ��仰�������PWM
	TIM1->CR1 = 0x80;           //ARPEʹ�� 
	TIM1->CR1|=0x01;          //ʹ�ܶ�ʱ��1 			
} 
