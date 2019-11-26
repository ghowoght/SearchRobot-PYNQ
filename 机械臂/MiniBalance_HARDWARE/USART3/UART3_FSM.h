/*
 * UART1_FSM.h
 *
 *  Created on: 2019Äê11ÔÂ24ÈÕ
 *      Author: 99317
 */

#ifndef INC_UART1_FSM_H_
#define INC_UART1_FSM_H_

#define Instruction_Type	1
#define Data_Type			2

#include "usart3.h"
#include "FSM.h"
#include "MachineBi_FSM.h"

enum{
	Uart_Idle,
	Type_Judge,
	InstructionAssignment,
	DataAttributionJudge,
	DataAssignment
};

typedef struct{
	u8	ReceiveData;
	u8	Type;
	u8	Instruction;
	u8 	DataAttribution;
	u8	Data;
}Uart_SM_Arg_t;

State Uart_Idle_Fun(void *arg);
State Uart_Type_Judge_Fun(void* arg);
State Uart_InstructionAssignment_Fun(void* arg);
State Uart_DataAttributionJudge_Fun(void* arg);
State Uart_DataAssignment_Fun(void* arg);
void  UartStateMachine(Uart_SM_Arg_t *arg);

extern Uart_SM_Arg_t	Uart3_SM_Arg;


#endif /* INC_UART1_FSM_H_ */
