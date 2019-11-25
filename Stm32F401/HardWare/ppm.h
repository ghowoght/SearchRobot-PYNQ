#ifndef __PPM_H_
#define __PPM_H_

//#include "sys.h"

#include "stm32f4xx_hal.h"

extern int CH[8];

void PPM_Decode(void);

void PPM_Cal(int pulseHigh);

#endif

