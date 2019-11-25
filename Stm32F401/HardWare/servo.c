#include "servo.h"
#include "ppm.h"

enum 
{
	YAW = 0,
	PIT,
};

void ServoControl(void)
{
	if(CH[0] != 0)
	{
		float angle[2] = {0};
		angle[YAW] = (CH[0] - 1000) / 1000.0 * 180;
		angle[PIT] = (CH[1] - 1000) / 1000.0 * 180;
		TIM1->CCR3 = 2000 * (0.025 + angle[YAW] / 180.0 * 0.1);
		TIM1->CCR4 = 2000 * (0.025 + angle[PIT] / 180.0 * 0.1);
		printf("%5d %5d\r\n", TIM1->CCR3, TIM1->CCR4);
	}

}

