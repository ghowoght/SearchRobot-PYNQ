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
函数功能：数学模型
入口参数：末端执行器位姿态
返回  值：无
**************************************************************************/
u8 Kinematic_Analysis(float x,float y,float Beta,float Alpha,float Gamma)
{  
//	      float m,n,k,a,b,c,theta1,theta2,theta3,s1ps2;
//				m=l2*cos(Alpha)-x;   //中间变量
//				n=l2*sin(Alpha)-y;   //中间变量
//	      k=(l1*l1-l0*l0-m*m-n*n)/2/l0;//中间变量
//	      a=m*m+n*n;             //解一元二次方程
//	      b=-2*n*k;
//	      c=k*k-m*m;
//	   
//	      if(b*b-4*a*c<=0) 
//        { 
//				TargetX=Last_TargetX;		
//			  TargetY=Last_TargetY;		
//				return 0; //防止出现非实数解
//				}
//	
//	      theta1=(-b+sqrt(b*b-4*a*c))/2/a;  //得到一元二次方程的解，只取其中一个，另外一个解是(-b+sqrt(b*b-4*a*c))/2/a
//	      theta1=asin(theta1)*180/PI;       //弧度换成角度

//	      if(theta1>90)theta1=90;           //控制舵机的最大角度±90°
//				if(theta1<-90)theta1=-90;
//	
//	      k=(l0*l0-l1*l1-m*m-n*n)/2/l1;     //过程系数
//				a=m*m+n*n;                        //解一元二次方程
//				b=-2*n*k;
//				c=k*k-m*m;
//	
//	      if(b*b-4*a*c<=0)  
//				{	
//				TargetX=Last_TargetX;		
//			  TargetY=Last_TargetY;
//				return 0;         //防止出现非实数解
//				}
//	      s1ps2=(-b-sqrt(b*b-4*a*c))/2/a;      //得到一元二次方程的解，只取其中一个，另外一个解是(-b+sqrt(b*b-4*a*c))/2/a
//	      s1ps2=asin(s1ps2)*180/PI;            //弧度换成角度
//	
//				if(s1ps2>90)theta2=90;    
//				if(s1ps2<-90)theta2=-90;  
//				
//	      theta2=s1ps2-theta1;
//			  if(theta2>90)theta2=90;      //控制舵机的最大角度±90°
//				if(theta2<-90)theta2=-90;    //控制舵机的最大角度±90°
//	
//	      theta3=Alpha*180/PI-theta1-theta2;   //求关节3角度
//				if(theta3>90)theta3=90;
//				if(theta3<-90)theta3=-90;	    //控制舵机的最大角度±90°

//        Target1   = 750-(Beta)*Ratio;   //作用到输出  
//        Target2   = 789-(theta1-90)*Ratio;
//	      Target3   = 717+(theta2)*Ratio;
//	      Target4   = 750+(theta3)*Ratio;  
//				Target6   = 800-(Gamma)*Ratio;   //6自由度额外增加的自由度  
//				Last_TargetX=TargetX;
//				Last_TargetY=TargetY;
//				return 0;
					return 1;
}
/**************************************************************************
函数功能：定时中断函数 所有的控制代码都在这里面		 
**************************************************************************/
int TIM2_IRQHandler(void)
{    
	if (TIM_GetITStatus(TIM2, TIM_IT_Update) != RESET) //检查指定的TIM中断发生与否:TIM 中断源 
	{   
				TIM_ClearITPendingBit(TIM2, TIM_IT_Update  );  //清除TIMx的中断待处理位:TIM 中断源
		   if(delay_flag==1)
			 {
				 if(++delay_50==5)	 delay_50=0,delay_flag=0;  //给主函数提供50ms的精准延时
			 }
			Key();//扫描按键变化	
		if(Turn_Off(Voltage)==0)               //===如果电池电压不存在异常
		{
			if(Flag_Way==1)     //进行运动学分析之后的控制
			{
			   MachineBiStateMachine(&MachineBi_SM_Arg);
			}
			else	
			{
				 Control(Speed/3);	   //PS2控制单个舵机
			}
				 Xianfu_Pwm();   //
			Velocity1=Position_PID1(Position1,Target1);//舵机PID控制
			Velocity2=Position_PID2(Position2,Target2);//舵机PID控制
			Velocity3=Position_PID3(Position3,Target3);//舵机PID控制
			Velocity4=Position_PID4(Position4,Target4);//舵机PID控制
			Velocity5=Position_PID5(Position5,Target5);//舵机PID控制
			Velocity6=Position_PID6(Position6,Target6);//舵机PID控制
			Xianfu_Pwm2();
			Set_Pwm(Velocity1,Velocity2,Velocity3,Velocity4,Velocity5,Velocity6);    //赋值给PWM寄存器
  	 }
		  Led_Flash(100);                     //===LED闪烁;常规模式 1s改变一次指示灯的状态	
			Voltage_All+=Get_battery_volt();     //多次采样累积
			if(++Voltage_Count==100) Voltage=Voltage_All/100,Voltage_All=0,Voltage_Count=0;//求平均值 获取电池电压	       
   	}       	
	 return 0;	  
} 


/**************************************************************************
函数功能：赋值给PWM寄存器,并且判断转向
入口参数：左轮PWM、右轮PWM
返回  值：无
**************************************************************************/
void Set_Pwm(float velocity1,float velocity2,float velocity3,float velocity4,float velocity5,float velocity6)
{	
		Position1+=velocity1;		   //速度的积分，得到舵机的位置
		Position2+=velocity2;
		Position3+=velocity3;
		Position4+=velocity4;
		Position5+=velocity5;	
		Position6+=velocity6;		
	
	 TIM4->CCR1=Position1;    //赋值给STM32的寄存器
	 TIM4->CCR2=Position2;
	 TIM4->CCR3=Position3;
	 TIM4->CCR4=Position4;
	 TIM1->CCR1=Position5;
	 TIM1->CCR4=Position6;
}

/**************************************************************************
函数功能：异常关闭电机
入口参数：电压
返回  值：1：异常  0：正常
**************************************************************************/
u8 Turn_Off( int voltage)
{
	    u8 temp;
			if(voltage<700)//电池电压过低  舵机将不能控制
			{	                                                
      temp=1;      
      }
			else
      temp=0;
      return temp;			
}

/**************************************************************************
函数功能：限制PWM赋值 
入口参数：无
返回  值：无
**************************************************************************/
void Xianfu_Pwm(void)
{	
	  int Amplitude_H=1200, Amplitude_L=300;       //舵机脉宽极限值
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
函数功能：按键修改小车运行状态 
入口参数：无
返回  值：无
**************************************************************************/
void Key(void)
{	
	u8 temp;
	temp=click_N_Double(50);         //双击检测
  if(temp==1)	Flag_Way=!Flag_Way;//单击控制机械臂的状态
 // if(temp==2)	Flag_Show=!Flag_Show;//控制显示状态
}

/**************************************************************************
函数功能：控制机械臂
入口参数：控制目标
返回  值：无
**************************************************************************/
void Control(float Step)
{ 	
			if(Flag_Way==1)    //坐标控制
		{	
			 if(PS2_KEY==5)    TargetX+=Step;   //X轴
	 else if(PS2_KEY==7)		TargetX-=Step;
	
	 else if(PS2_KEY==12)		TargetY+=Step;   //Y轴
	 else if(PS2_KEY==10)		TargetY-=Step;
	
	 else if(PS2_KEY==8)		Target_Beta-=Step*1000;    //云台
	 else if(PS2_KEY==6)		Target_Beta+=Step*1000;
	
	 else if(PS2_KEY==13)		Target_Alpha-=Step;     //机械手的朝向
	 else if(PS2_KEY==15)		Target_Alpha+=Step;
	
	 else if(PS2_KEY==14)		Target5+=Step*3000;     //机械手的张合
	 else if(PS2_KEY==16)		Target5-=Step*3000;
	
	 else if(PS2_KEY==4)		Target_Gamma+=Step*1000;     //6自由度额外增加的舵机
	 else if(PS2_KEY==1)		Target_Gamma-=Step*1000;
			
		}
	  else	//单独控制
		{ 
				if(PS2_KEY==8)     Target1+=Step;     //云台
	 else if(PS2_KEY==6)		 Target1-=Step;
	
	 else if(PS2_KEY==12)			Target2-=Step;    //大臂
	 else if(PS2_KEY==10)			Target2+=Step;
	
	 else if(PS2_KEY==5)		Target3-=Step;   //中间的舵机
	 else if(PS2_KEY==7)		Target3+=Step;   
	
	 else if(PS2_KEY==13)		Target4-=Step;  //小臂
	 else if(PS2_KEY==15)		Target4+=Step;
	
	 else if(PS2_KEY==14)		Target5+=Step;   //机械手的张合
	 else if(PS2_KEY==16)		Target5-=Step;
	
	 else if(PS2_KEY==4)		Target6-=Step;  //6自由度额外增加的舵机
	 else if(PS2_KEY==1)		Target6+=Step;
		}
		if(PS2_KEY==11)		Speed+=0.05;  //速度控制
	  else if(PS2_KEY==9)		Speed-=0.05;
		if(Speed<=3)Speed=3;
		if(Speed>=30)Speed=30;
}
/**************************************************************************
函数功能：位置式PID控制器
入口参数：编码器测量位置信息，目标位置
返回  值：电机PWM
根据位置式离散PID公式 
pwm=Kp*e(k)+Ki*∑e(k)+Kd[e（k）-e(k-1)]
e(k)代表本次偏差 
e(k-1)代表上一次的偏差  
∑e(k)代表e(k)以及之前的偏差的累积和;其中k为1,2,,k;
pwm代表输出
**************************************************************************/
float Position_PID1 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //计算偏差
	 Integral_bias+=Bias;	                                 //求出偏差的积分
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //位置式PID控制器
	 Last_Bias=Bias;                                       //保存上一次偏差 
	 return Pwm;                                           //增量输出
}
float Position_PID2 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //计算偏差
	 Integral_bias+=Bias;	                                 //求出偏差的积分
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //位置式PID控制器
	 Last_Bias=Bias;                                       //保存上一次偏差 
	 return Pwm;                                           //增量输出
}
float Position_PID3 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //计算偏差
	 Integral_bias+=Bias;	                                 //求出偏差的积分
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //位置式PID控制器
	 Last_Bias=Bias;                                       //保存上一次偏差 
	 return Pwm;                                           //增量输出
}
float Position_PID4 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //计算偏差
	 Integral_bias+=Bias;	                                 //求出偏差的积分
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //位置式PID控制器
	 Last_Bias=Bias;                                       //保存上一次偏差 
	 return Pwm;                                           //增量输出
}
float Position_PID5 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //计算偏差
	 Integral_bias+=Bias;	                                 //求出偏差的积分
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //位置式PID控制器
	 Last_Bias=Bias;                                       //保存上一次偏差 
	 return Pwm;                                           //增量输出
}
float Position_PID6 (float Encoder,float Target)
{ 	
	 static float Bias,Pwm,Integral_bias,Last_Bias;
	 Bias=Target-Encoder;                                  //计算偏差
	 Integral_bias+=Bias;	                                 //求出偏差的积分
	 Pwm=Position_KP*Bias/100+Position_KI*Integral_bias/100+Position_KD*(Bias-Last_Bias)/100;       //位置式PID控制器
	 Last_Bias=Bias;                                       //保存上一次偏差 
	 return Pwm;                                           //增量输出
}


/**************************************************************************
函数功能：绝对值函数
入口参数：int
返回  值：unsigned int
**************************************************************************/
int myabs(int a)
{ 		   
	  int temp;
		if(a<0)  temp=-a;  
	  else temp=a;
	  return temp;
}
