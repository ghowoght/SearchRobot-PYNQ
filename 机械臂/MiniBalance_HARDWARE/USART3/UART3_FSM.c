#include "UART3_FSM.h"

Procedure Uart_Steps[] = { Uart_Idle_Fun, Uart_Type_Judge_Fun, Uart_InstructionAssignment_Fun, Uart_DataAttributionJudge_Fun, Uart_DataAssignment_Fun};

Uart_SM_Arg_t	Uart3_SM_Arg ={
		.Data = 0,
		.DataAttribution = 0,
		.Instruction = 0,
		.ReceiveData = 0,
		.Type = 0
};

State Uart_Idle_Fun(void *arg)
{
	Uart_SM_Arg_t* Uart_SM_Arg = (Uart_SM_Arg_t*)arg;
	if(Uart_SM_Arg->ReceiveData == 0xAA)
	{
		return Type_Judge;
	}
	else
	{
		return Uart_Idle;
	}
}

State Uart_Type_Judge_Fun(void* arg)
{
	Uart_SM_Arg_t* Uart_SM_Arg = (Uart_SM_Arg_t*)arg;
	if(Uart_SM_Arg->ReceiveData == 0x0A)
	{
		Uart_SM_Arg->Type = Instruction_Type;
		return InstructionAssignment;
	}
	else if(Uart_SM_Arg->ReceiveData == 0x0F)
	{
		Uart_SM_Arg->Type = Data_Type;
		return DataAttributionJudge;
	}
	else
	{
		return Uart_Idle;
	}
}

State Uart_InstructionAssignment_Fun(void* arg)
{
	Uart_SM_Arg_t* Uart_SM_Arg = (Uart_SM_Arg_t*)arg;
	if(Uart_SM_Arg->Type == Instruction_Type)
	{
		Uart_SM_Arg->Instruction = Uart_SM_Arg->ReceiveData;
		return Uart_Idle;
	}
	else
	{
		return Uart_Idle;
	}
}

State Uart_DataAttributionJudge_Fun(void* arg)
{
	Uart_SM_Arg_t* Uart_SM_Arg = (Uart_SM_Arg_t*)arg;
	if(Uart_SM_Arg->Type == Data_Type)
	{
		Uart_SM_Arg->DataAttribution = Uart_SM_Arg->ReceiveData;
		return DataAssignment;
	}
	else
	{
		return Uart_Idle;
	}
}

State Uart_DataAssignment_Fun(void* arg)
{
	Uart_SM_Arg_t* Uart_SM_Arg = (Uart_SM_Arg_t*)arg;
	if(Uart_SM_Arg->DataAttribution == 0xA1)
	{
		Uart_SM_Arg->Data = Uart_SM_Arg->ReceiveData;
		MachineBi_SM_Arg.RealSense_Target.RealSense_TargetBeta= Uart_SM_Arg->Data;
		return Uart_Idle;
	}
	else if(Uart_SM_Arg->DataAttribution == 0xA2)
	{
		Uart_SM_Arg->Data = Uart_SM_Arg->ReceiveData;
		MachineBi_SM_Arg.RealSense_Target.RealSense_TargetX=Uart_SM_Arg->Data;
		return Uart_Idle;
	}
	else if(Uart_SM_Arg->DataAttribution == 0xA3)
	{
		Uart_SM_Arg->Data = Uart_SM_Arg->ReceiveData;
		MachineBi_SM_Arg.RealSense_Target.RealSense_TargetY=Uart_SM_Arg->Data;
		return Uart_Idle;
	}
	else
	{
		return Uart_Idle;
	}
}

void UartStateMachine(Uart_SM_Arg_t *arg)
{
	static State UART_Next_State = Uart_Idle;
	UART_Next_State = Uart_Steps[UART_Next_State](arg);
}


