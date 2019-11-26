#include "MachineBi_FSM.h"

Procedure MachineBi_Steps[] = {
    MachineBi_Idle_Fun,
    Attitude_Solution_Fun,
    Rise_Up_toGrab_Fun,
    Horizional_Turn_toGrab_Fun,
    Drop_toGrab_Fun,
    Grab_Fun,
    Rise_Up_toIdle_Fun,
    Horizional_Turn_toIdle_Fun,
	Wait_Release_Item_Fun,
    Release_Item_Fun
};

const	int	RiseUpAngle=30;

MachineBi_SM_Arg_t	MachineBi_SM_Arg;

State MachineBi_Idle_Fun(void* arg)
{
	MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    if(Uart3_SM_Arg.Instruction == 0xA0)
    {
        HorizontalAttitudeSolution(SM_Arg);
        VerticalAttitudeSolution(SM_Arg);
        return Attitude_Solution;
    }
    else
    {
        return MachineBi_Idle;
    }
}

State Attitude_Solution_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    float P2,P3,P4;
    float T2,T3,T4;
    P2 = SM_Arg->Position.Position2;
    P3 = SM_Arg->Position.Position3;
    P4 = SM_Arg->Position.Position4;
    T2 = SM_Arg->Target.Target2;
    T3 = SM_Arg->Target.Target3;
    T4 = SM_Arg->Target.Target4;
    if((fabs(P2-T2)<1)&&(fabs(P3-T3)<1)&&(fabs(P4-T4)<1))
    {
        SM_Arg->Target.Target2 = T2 + RiseUpAngle*5;
        return Rise_Up_toGrab;
    }
    else
    {
        return Attitude_Solution;
    }
}

State Rise_Up_toGrab_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    float P2,T2,TB;
    P2 = SM_Arg->Position.Position2;
    T2 = SM_Arg->Target.Target2;
		TB = SM_Arg->MachineBi_Target.MachineBi_TargetBeta;
    if(fabs(P2-T2)<1)
    {
        SM_Arg->Target.Target1 = 750 - TB*Ratio;     //需要换算
        return Horizional_Turn_toGrab;
    }
    else
    {
        return Rise_Up_toGrab;
    }
    
}

State Horizional_Turn_toGrab_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    float P1,T1,T2;
    P1 = SM_Arg->Position.Position1;
    T1 = SM_Arg->Target.Target1;
    T2 = SM_Arg->Target.Target2;
    if(fabs(P1-T1)<1)
    {
        SM_Arg->Target.Target2 = T2 - RiseUpAngle*5;
        return Drop_toGrab;
    }
    else
    {
        return Horizional_Turn_toGrab;
    }
    
}

State Drop_toGrab_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    float P2,T2;
    P2 = SM_Arg->Position.Position2;
    T2 = SM_Arg->Target.Target2;
    if(fabs(P2-T2)<1)
    {
        SM_Arg->Target.Target5 = 500; //合拢爪子
        return Grab;
    }
    else
    {
        return Drop_toGrab;
    }
}

State Grab_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    float P5,T2,T5;
    P5 = SM_Arg->Position.Position5;
    T2 = SM_Arg->Target.Target2;
    T5 = SM_Arg->Target.Target5;
    if(fabs(P5-T5)<1)
    {
        SM_Arg->Target.Target2 = T2 + RiseUpAngle*5; 
        return  Rise_Up_toIdle;
    }
    else
    {
        return Grab;
    }    
}

State Rise_Up_toIdle_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    float P2,T2;
    P2 = SM_Arg->Position.Position2;
    T2 = SM_Arg->Target.Target2;
    if(fabs(P2-T2)<1)
    {
        SM_Arg->Target.Target1 = IdlePosition1;
        return Horizional_Turn_toIdle;
    }
    else
    {
        return Rise_Up_toIdle;
    }
}

State Horizional_Turn_toIdle_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    float P1,T1;
    P1 = SM_Arg->Position.Position1;
    T1 = SM_Arg->Target.Target1;
    if(fabs(P1-T1)<1)
    {
        Uart3_SendByte(0xAD);   //向PYNQ发送完成指令
        return Wait_Release_Item;
    }
    else
    {
        return Horizional_Turn_toIdle;
    }
}

State Wait_Release_Item_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    if (Uart3_SM_Arg.Instruction == 0xAF)
    {
        SM_Arg->Target.Target2 = IdlePosition2;
        SM_Arg->Target.Target3 = IdlePosition3;
        SM_Arg->Target.Target4 = IdlePosition4;
        SM_Arg->Target.Target5 = IdlePosition5;
        return Release_Item;
    }
    else
    {
        return Wait_Release_Item;
    }
    
}

State Release_Item_Fun(void* arg)
{
    MachineBi_SM_Arg_t* SM_Arg = (MachineBi_SM_Arg_t*)arg;
    float P2,P3,P4,P5,T2,T3,T4,T5;

    P2 = SM_Arg->Position.Position2;
    P3 = SM_Arg->Position.Position3;
    P4 = SM_Arg->Position.Position4;
    P5 = SM_Arg->Position.Position5;
    T2 = SM_Arg->Target.Target2;
    T3 = SM_Arg->Target.Target3;
    T4 = SM_Arg->Target.Target4;
    T5 = SM_Arg->Target.Target5;
    if((fabs(P2-T2)<1)&&(fabs(P3-T3)<1)&&(fabs(P4-T4)<1)&&(fabs(P5-T5)<1))
    {
        return MachineBi_Idle;
    }
    else
    {
        return Release_Item;
    }
}

void HorizontalAttitudeSolution(MachineBi_SM_Arg_t* arg)
{
	float T,RX,RB,MX,MB;
	MachineBi_SM_Arg_t *SM_Arg = (MachineBi_SM_Arg_t*)arg;
	T  = RealSense2MachineBiDis;
	RX = SM_Arg->RealSense_Target.RealSense_TargetX;
	RB = SM_Arg->RealSense_Target.RealSense_TargetBeta*PI/180;
	MX = sqrt(pow(T,2)+pow(RX,2)-2*T*RX*cos(RB));
	MB = 180 - acos((pow(T,2)+pow(MX,2)-pow(RX,2))/(2*T*MX))*180/PI;
	SM_Arg->MachineBi_Target.MachineBi_TargetBeta = MB; 
	SM_Arg->MachineBi_Target.MachineBi_TargetX = MX;
	SM_Arg->MachineBi_Target.MachineBi_TargetY = SM_Arg->RealSense_Target.RealSense_TargetY-CarH2; //��Ҫ����     
}

void VerticalAttitudeSolution(MachineBi_SM_Arg_t* arg)
{
	float T,d,theta_a,theta_b,theta_c,theta_1,theta_2,theta_3;
	MachineBi_SM_Arg_t *SM_Arg = (MachineBi_SM_Arg_t*)arg;
	d = SM_Arg->MachineBi_Target.MachineBi_TargetX - l3;
	T = sqrt(d*d+pow(SM_Arg->MachineBi_Target.MachineBi_TargetY,2));
	theta_a = acos((l1*l1+T*T-l2*l2)/(2*l1*T))*180/PI;
	theta_b = acos((T*T+l2*l2-l1*l1)/(2*l2*T))*180/PI;
	theta_c = acos((l1*l1+l2*l2-T*T)/(2*l1*l2))*180/PI;
	theta_1 = 90 - theta_a - atan(SM_Arg->MachineBi_Target.MachineBi_TargetY/d)*180/PI;
	theta_2 = 180 - theta_c;
	theta_3 = theta_b - - atan(SM_Arg->MachineBi_Target.MachineBi_TargetY/d)*180/PI;
	SM_Arg->Target.Target2 = 750-theta_1*Ratio;
	SM_Arg->Target.Target3 = 750+theta_2*Ratio; 
	SM_Arg->Target.Target4 = 750-theta_3*Ratio;
}

void  MachineBiStateMachine(MachineBi_SM_Arg_t* arg)
{
    static State MachineBiNext_State = MachineBi_Idle;
		MachineBiNext_State = MachineBi_Steps[MachineBiNext_State](arg);
}
