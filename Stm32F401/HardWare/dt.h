#ifndef __DT_H_
#define __DT_H_
#include "stm32f4xx_hal.h"

extern uint8_t data_trans[20];

extern UART_HandleTypeDef huart1;
extern UART_HandleTypeDef huart2;
void DataTrans(void);
void data_encoder(uint8_t data);

#endif
