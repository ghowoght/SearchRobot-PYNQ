#ifndef __USRAT3_H
#define __USRAT3_H 
#include "sys.h"	  	
#include "stm32f10x_conf.h"

void uart3_init(u32 bound);
void Uart3_SendByte(u8 Data);
u8   Uart3_ReceiveByte(void);
void Uart3_SendString(char *str);
void USART3_IRQHandler(void);
#endif

