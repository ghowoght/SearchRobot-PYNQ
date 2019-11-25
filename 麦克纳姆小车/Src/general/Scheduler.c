#include "Scheduler.h"
#include "motor.h"

static void Loop_Task_1(u32 dT_us)	//2ms执行一次
{
	
}

static void Loop_Task_2(u32 dT_us)	//6ms执行一次
{

}


static void Loop_Task_5(u32 dT_us)	//11ms执行一次
{	

}



static void Loop_Task_8(u32 dT_us)	//20ms执行一次
{
	static int cnt = 0;
	
	Encoder_Task();
	Motor_Task();
	if(cnt++ >=25)
	{
		PDout(2) = ~PDout(2);
		cnt = 0;
//		printf("Hello World!\r\n");
	}
}


static void Loop_Task_9(u32 dT_us)	//50ms执行一次
{
	HAL_UART_Receive_IT(&huart2,&data_receive,1);
}

//////////////////////////
//调度器程序
//////////////////////////

//系统任务配置，创建不同执行频率的“线程”
static sched_task_t sched_tasks[] = 
{
	//任务n,    周期us,   上次时间us
	{Loop_Task_1 ,  2000,  0 },
	{Loop_Task_2 ,  6000,  0 },
//	{Loop_Task_2 ,  2500,  0 },
//	{Loop_Task_3 ,  2500,  0 },
//	{Loop_Task_4 ,  2500,  0 },
	{Loop_Task_5 ,  11000,  0 },
//	{Loop_Task_6 ,  9090,  0 },
//	{Loop_Task_7 ,  9090,  0 },
	{Loop_Task_8 , 20000,  0 },
	{Loop_Task_9 , 50000,  0 },
//	{Loop_Task_10,100000,  0 },
};

//根据数组长度，判断线程数量
#define TASK_NUM (sizeof(sched_tasks)/sizeof(sched_task_t))

u8 Main_Task(void)
{
	uint8_t index = 0;
	
	//循环判断其他所有线程任务，是否应该执行
	uint32_t time_now,delta_time_us;
	for(index=0;index < TASK_NUM;index++)
	{
		//获取系统当前时间，单位US
		time_now = GetSysRunTimeUs();
		//进行判断，如果当前时间减去上一次执行的时间，大于等于该线程的执行周期，则执行线程
		if(time_now - sched_tasks[index].last_run >= sched_tasks[index].interval_ticks)
		{
			delta_time_us = (u32)(time_now - sched_tasks[index].last_run);

			//更新线程的执行时间，用于下一次判断
			sched_tasks[index].last_run = time_now;
			//执行线程函数，使用的是函数指针
			sched_tasks[index].task_func(delta_time_us);

		}	 
	}
	
	return 0;
}

static uint64_t SysRunTimeMs = 0;

void HAL_SYSTICK_Callback(void)
{
	SysRunTimeMs++;
}

uint32_t GetSysRunTimeMs(void)
{
	return SysRunTimeMs;
}

uint32_t GetSysRunTimeUs(void)
{
	return SysRunTimeMs*1000 + (SysTick->LOAD - SysTick->VAL) * 1000 / SysTick->LOAD;
}


/******************* (C) COPYRIGHT 2019 ANO TECH *****END OF FILE************/
	

