#include "sys.h"
#include "Scheduler.h"

void delay_us(int i)
{
	u32 temp;
	SysTick->LOAD=10.5*i;         //������װ��ֵ, 168MHZʱ
	SysTick->CTRL=0X01;         //ʹ�ܣ����������޶����������ⲿʱ��Դ
	SysTick->VAL=0;                //���������
	do
	{
		temp=SysTick->CTRL;           //��ȡ��ǰ������ֵ
	}
	while((temp&0x01)&&(!(temp&(1<<16))));     //�ȴ�ʱ�䵽��
	SysTick->CTRL=0;    //�رռ�����
	SysTick->VAL=0;        //��ռ�����
}
void delay_ms(int i)
{
	for(;i>0;i--)
	{
		delay_us(1000);
	}
}

