#include "ppm.h"

#define PULSE_MIN   800
#define PULSE_MAX   2200

void PPM_Decode(void)
{
	static int periodVal[2] = {0};
	int pulseHigh = 0;
	periodVal[0] = TIM3->CCR1;
	if(periodVal[0] > periodVal[1])
	{
		pulseHigh = (periodVal[0] - periodVal[1]);
	}
	else
	{
		pulseHigh = (periodVal[0] - periodVal[1] + 0xFFFF);
	}
	periodVal[1] = periodVal[0];
	PPM_Cal(pulseHigh);
}

int CH[8] = {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};
int CH_Ori[8] = {1500, 1500, 1500, 1500, 1500, 1500, 1500, 1500};


float my_deadzone(float x,float ref,float zoom)
{
	float t;
	if(x>ref)
	{
		t = x - zoom;
		if(t<ref)
		{
			t = ref;
		}
	}
	else
	{
		t = x + zoom;
		if(t>ref)
		{
			t = ref;
		}
	}
  return (t);
}

void PPM_Cal(int pulseHigh)
{
	static uint8_t CNT = 0;
	if(pulseHigh > 5000) //说明一帧结束
	{
		CNT = 0;
		int16_t deadzone = 50;
		for(int i = 0; i < 8; i++)
		{
			CH[i] = my_deadzone(CH_Ori[i], 1500, deadzone);
		}
	}
	else
	{
		if(pulseHigh >PULSE_MIN && pulseHigh < PULSE_MAX)
		{
			if(CNT < 16)
			{
				CNT = CNT > 7 ? 7 : CNT;
				CH_Ori[CNT++] = pulseHigh;
			}
		}
		
	}
}
