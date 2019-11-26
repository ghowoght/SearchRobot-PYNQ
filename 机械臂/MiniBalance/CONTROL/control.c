#include "control.h"	
#include "MachineBi_FSM.h"
#include "UART3_FSM.h"
int Balance_Pwm,Velocity_Pwm,Turn_Pwm;
u8 Flag_Target;
u32 Flash_R_Count;
int Voltage_Temp,Voltage_Count,Voltage_All;
extern float TargetX,TargetY,Target_Beta,Target_Alpha;
float Last_TargetX,Last_TargetY;


/**************************************************************************
�������ܣ���ѧģ��
��ڲ�����ĩ��ִ����λ��̬
����  ֵ����
**************************************************************************/
u8 Kinematic_Analysis(float x,float y,float Beta,float Alpha,float Gamma)
{  
//	      float m,n,k,a,b,c,theta1,theta2,theta3,s1ps2;
//				m=l2*cos(Alpha)-x;   //�м����
//				n=l2*sin(Alpha)-y;   //�м����
//	      k=(l1*l1-l0*l0-m*m-n*n)/2/l0;//�м����
//	      a=m*m+n*n;             //��һԪ���η���
//	      b=-2*n*k;
//	      c=k*k-m*m;
//	   
//	      if(b*b-4*a*c<=0) 
//        { 
//				TargetX=Last_TargetX;		
//			  TargetY=Last_TargetY;		
//				return 0; //��ֹ���ַ�ʵ����
//				}
//	
//	      theta1=(-b+sqrt(b*b-4*a*c))/2/a;  //�õ�һԪ���η��̵Ľ⣬ֻȡ����һ��������һ������(-b+sqrt(b*b-4*a*c))/2/a
//	      theta1=asin(theta1)*180/PI;       //���Ȼ��ɽǶ�

//	      if(theta1>90)theta1=90;           //���ƶ�������Ƕȡ�90��
//				if(theta1<-90)theta1=-90;
//	
//	      k=(l0*l0-l1*l1-m*m-n*n)/2/l1;     //����ϵ��
//				a=m*m+n*n;                        //��һԪ���η���
//				b=-2*n*k;
//				c=k*k-m*m;
//	
//	      if(b*b-4*a*c<=0)  
//				{	
//				TargetX=Last_TargetX;		
//			  TargetY=Last_TargetY;
//				return 0;         //��ֹ���ַ�ʵ����
//				}
//	      s1ps2=(-b-sqrt(b*b-4*a*c))/2/a;      //�õ�һԪ���η��̵Ľ⣬ֻȡ����һ��������һ������(-b+sqrt(b*b-4*a*c))/2/a
//	      s1ps2=asin(s1ps2)*180/PI;            //���Ȼ��ɽǶ�
//	
//				if(s1ps2>90)theta2=90;    
//				if(s1ps2<-90)theta2=-90;  
//				
//	      theta2=s1ps2-theta1;
//			  if(theta2>90)theta2=90;      //���ƶ�������Ƕȡ�90��
//				if(theta2<-90)theta2=-90;    //���ƶ�������Ƕȡ�90��
//	
//	      theta3=Alpha*180/PI-theta1-theta2;   //��ؽ�3�Ƕ�
//				if(theta3>90)theta3=90;
//				if(theta3<-90)theta3=-90;	    //���ƶ�������Ƕȡ�90��

//        Target1   = 750-(Beta)*Ratio;   //���õ����  
//        Target2   = 789-(theta1-90)*Ratio;
//	      Target3   = 717+(theta2)*Ratio;
//	      Target4   = 750+(theta3)*Ratio;  
//				Target6   = 800-(Gamma)*Ratio;   //6���ɶȶ������ӵ����ɶ�  
//				Last_TargetX=TargetX;
//				Last_TargetY=TargetY;
//				return 0;
					return 1;
}
/**************************************************************************
�������ܣ���ʱ�жϺ��� ���еĿ��ƴ��붼��������		 
**************************************************************************/
int TIM2_IRQHandler(void)
{    
	if (TIM_GetITStatus(TIM2, TIM_IT_Update) != RESET) //���ָ����TIM�жϷ������:TIM �ж�Դ 
	{   
				TIM_ClearITPendingBit(TIM2, TIM_IT_Update  );  //���TIMx���жϴ�����λ:TIM �ж�Դ
		   if(delay_flag==1)
			 {
				 if(++delay_50==5)	 delay_50=0,delay_flag=0;  //���������ṩ50ms�ľ�׼��ʱ
			 }
			Key();//ɨ�谴���仯	
		if(Turn_Off(Voltage)==0)               //===�����ص�ѹ�������쳣
		{
			if(Flag_Way==1)     //�����˶�ѧ����֮��Ŀ���
			{
			   MachineBiStateMachine(&MachineBi_SM_Arg);
			}
			else	
			{
				 Control(Speed/3);	   //PS2���Ƶ������
			}
				 Xianfu_Pwm();   //
			Velocity1=Position_PID1(Position1,Target1);//���PID����
			Velocity2=Position_PID2(Position2,Target2);//���PID����
			Velocity3=Position_PID3(Position3,Target3);//���PID����
			Velocity4=Position_PID4(Position4,Target4);//���PID����
			Velocity5=Position_PID5(Position5,Target5);//���PID����
			Velocity6=Position_PID6(Position6,Target6);//���PID����
			Xianfu_Pwm2();
			Set_Pwm(Velocity1,Velocity2,Velocity3,Velocity4,Velocity5,Velocity6);    //��ֵ��PWM�Ĵ���
  	 }
		  Led_Flash(100);                     //===LED��˸;����ģʽ 1s�ı�һ��ָʾ�Ƶ�״̬	
			Voltage_All+=Get_battery_volt();     //��β����ۻ�
			if(++Voltage_Count==100) Voltage=Voltage_All/100,Voltage_All=0,Voltage_Count=0;//��ƽ��ֵ ��ȡ��ص�ѹ	       
   	}       	
	 return 0;	  
} 


/**************************************************************************
�������ܣ���ֵ��PWM�Ĵ���,�����ж�ת��
��ڲ���������PWM������PWM
����  ֵ����
**************************************************************************/
void Set_Pwm(float velocity1,float velocity2,float velocity3,float velocity4,float velocity5,float velocity6)
{	
		Position1+=velocity1;		   //�ٶȵĻ��֣��õ������λ��
		Position2+=velocity2;
		Position3+=velocity3;
		Position4+=velocity4;
		Position5+=velocity5;	
		Position6+=velocity6;		
	
	 TIM4->CCR1=Position1;    //��ֵ��STM32�ļĴ���
	 TIM4->CCR2=Position2;
	 TIM4->CCR3=Position3;
	 TIM4->CCR4=Position4;
	 TIM1->CCR1=Position5;
	 TIM1->CCR4=Position6;
}

/**************************************************************************
�������ܣ��쳣�رյ��
��ڲ�������ѹ
����  ֵ��1���쳣  0������
**************************************************************************/
u8 Turn_Off( int voltage)
{
	    u8 temp;
			if(voltage<700)//��ص�ѹ����  ��������ܿ���
			{	                                                
      temp=1;      
      }
			else
      temp=0;
      return temp;			
}

/**************************************************************************
�������ܣ�����PWM��ֵ 
��ڲ�������
����  ֵ����
**************************************************************************/
void Xianfu_Pwm(void)
{	
	  int Amplitude_H=1200, Amplitude_L=300;       //���������ֵ
    if(Target1<Amplitude_L)  Target1=Amplitude_L;	
		if(Target1>Amplitude_H)  Target1=Amplitude_H;	
	  if(Target2<Amplitude_L)  Target2=Amplitude_L;	
		if(Target2>Amplitude_H)  Target2=Amplitude_H;	
		if(Target3<Amplitude_L)  Target3=Amplitude_L;	
		if(Target3>Amplitude_H)  Target3=Amplitude_H;	
		if(Target4<Amplitude_L)  Target4=Amplitude_L;	
		if(Target4>Amplitude_H)  Target4=Amplitude_H;	
	  if(Target5<Amplitude_L)  Target5=Amplitude_L;	
		if(Target5>Amplitude_H)  Target5=Amplitude_H;	
		if(Target6<Amplitude_L)  Target6=Amplitude_L;	
		if(Target6>Amplitude_H)  Target6=Amplitude_H;		
}
void Xianfu_Pwm2(void)
{	
	  int Amplitude_H=Speed, Amplitude_L=-Speed;  
    if(Velocity1<Amplitude_L)  Velocity1=Amplitude_L;	
		if(Velocity1>Amplitude_H)  Velocity1=Amplitude_H;	
	  if(Velocity2<Amplitude_L)  Velocity2=Amplitude_L;	
		if(Velocity2>Amplitude_H)  Velocity2=Amplitude_H;	
		if(Velocity3<Amplitude_L)  Velocity3=Amplitude_L;	
		if(Velocity3>Amplitude_H)  Velocity3=Amplitude_H;	
		if(Velocity4<Amplitude_L)  Velocity4=Amplitude_L;	
		if(Velocity4>Amplitude_H)  Velocity4=Amplitude_H;	
	  if(Velocity5<Amplitude_L)  Velocity5=Amplitude_L;	
		if(Velocity5>Amplitude_H)  Velocity5=Amplitude_H;	
		if(Velocity6<Amplitude_L)  Velocity6=Amplitude_L;	
		if(Velocity6>Amplitude_H)  Velocity6=Amplitude_H;	
}
/**************************************************************************
�������ܣ������޸�С������״̬ 
��ڲ�������
����  ֵ����
**************************************************************************/
void Key(void)
{	
	u8 temp;
	temp=click_N_Double(50);         //˫�����
  if(temp==1)	Flag_Way=!Flag_Way;//�������ƻ�е�۵�״̬
 // if(temp==2)	Flag_Show=!Flag_Show;//������ʾ״̬
}

/**************************************************************************
�������ܣ����ƻ�е��
��ڲ���������Ŀ��
����  ֵ����
**************************************************************************/
void Control(float Step)
{ 	
			if(Flag_Way==1)    //�������
		{	
			 if(PS2_KEY==5)    TargetX+=Step;   //X��
	 else if(PS2_KEY==7)		TargetX-=Step;
	
	 else if(PS2_KEY==12)		TargetY+=Step;   //Y��
	 else if(PS2_KEY==10)		TargetY-=Step;
	
	 else if(PS2_KEY==8)		Target_Beta-=Step*1000;    //��̨
	 else if(PS2_KEY==6)		Target_Beta+=Step*1000;
	
	 else if(PS2_KEY==13)		Target_Alpha-=Step;     //��е�ֵĳ���
	 else if(PS2_KEY==15)		Target_Alpha+=Step;
	
	 else if(PS2_KEY==14)		Target5+=Step*3000;     //��е�ֵ��ź�
	 else if(PS2_KEY==16)		Target5-=Step*3000;
	
	 else if(PS2_KEY==4)		Target_Gamma+=Step*1000;     //6���ɶȶ������ӵĶ��
	 else if(PS2_KEY==1)		Target_Gamma-=Step*1000;
			
		}
	  else	//��������
		{ 
				if(PS2_KEY==8)     Target1+=Step;     //��̨
	 else if(PS2_KEY==6)		 Target1-=Step;
	
	 else if(PS2_KEY==12)			Target2-=Step;    //���
	 else if(PS2_KEY==10)			Target2+=Step;
	
	 else if(PS2_KEY==5)		Target3-=Step;   //�м�Ķ��
	 else if(PS2_KEY==7)		Target3+=Step;   
	
	 else if(PS2_KEY==13)		Target4-=Step;  //С��
	 else if(PS2_KEY==15)		Target4+=Step;
	
	 else if(PS2_KEY==14)		Target5+=Step;   //��е�ֵ��ź�
	 else if(PS2_KEY==16)		Target5-=Step;
	
	 else if(PS2_KEY==4)		Target6-=Step;  //6���ɶȶ������ӵĶ��
	 else if(PS2_KEY==1)		Target6+=Step;
		}
		if(PS2_KEY==11)		Speed+=0.05;  //�ٶȿ���
	  else if(PS2_KEY==9)		Speed-=0.05;
		if(Speed<=3)Speed=3;
		if(Speed>=30)Speed=30;
}
/**************************************************************************
�������ܣ�λ��ʽPID������
��ڲ���������������λ����Ϣ��Ŀ��λ��
����  ֵ�����PWM
����λ��ʽ��ɢPID��ʽ 
pwm=Kp*e(k)+Ki*��e(k)+Kd[e��k��-e(k-1)]
e(k)������ƫ�� 
e(k-1)������һ�ε�ƫ��  
��e(k)����e(k)�Լ�֮ǰ��ƫ����ۻ���;����kΪ1,2,,k;
pwm�������
**************************************************************************/
float Position_PID1 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //����ƫ��
	 Integral_bias+=Bias;	                                 //���ƫ��Ļ���
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //λ��ʽPID������
	 Last_Bias=Bias;                                       //������һ��ƫ�� 
	 return Pwm;                                           //�������
}
float Position_PID2 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //����ƫ��
	 Integral_bias+=Bias;	                                 //���ƫ��Ļ���
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //λ��ʽPID������
	 Last_Bias=Bias;                                       //������һ��ƫ�� 
	 return Pwm;                                           //�������
}
float Position_PID3 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //����ƫ��
	 Integral_bias+=Bias;	                                 //���ƫ��Ļ���
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //λ��ʽPID������
	 Last_Bias=Bias;                                       //������һ��ƫ�� 
	 return Pwm;                                           //�������
}
float Position_PID4 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //����ƫ��
	 Integral_bias+=Bias;	                                 //���ƫ��Ļ���
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //λ��ʽPID������
	 Last_Bias=Bias;                                       //������һ��ƫ�� 
	 return Pwm;                                           //�������
}
float Position_PID5 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //����ƫ��
	 Integral_bias+=Bias;	                                 //���ƫ��Ļ���
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //λ��ʽPID������
	 Last_Bias=Bias;                                       //������һ��ƫ�� 
	 return Pwm;                                           //�������
}
float Position_PID6 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //����ƫ��
	 Integral_bias+=Bias;	                                 //���ƫ��Ļ���
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //λ��ʽPID������
	 Last_Bias=Bias;                                       //������һ��ƫ�� 
	 return Pwm;                                           //�������
}


/**************************************************************************
�������ܣ�����ֵ����
��ڲ�����int
����  ֵ��unsigned int
**************************************************************************/
int myabs(int a)
{ 		   
	  int temp;
		if(a<0)  temp=-a;  
	  else temp=a;
	  return temp;
}
