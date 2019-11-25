#include "dt.h"
#include "ppm.h"

//数据拆分宏定义，在发送大于1字节的数据类型时，比如int16、float等，需要把数据拆分成单独字节进行发送
#define BYTE0(dwTemp)       ( *( (char *)(&dwTemp)		) )
#define BYTE1(dwTemp)       ( *( (char *)(&dwTemp) + 1) )
#define BYTE2(dwTemp)       ( *( (char *)(&dwTemp) + 2) )
#define BYTE3(dwTemp)       ( *( (char *)(&dwTemp) + 3) )

uint8_t data_to_send[100];
void DataTrans(void)
{
	uint8_t _cnt = 0;
	
	data_to_send[_cnt++]=0xAA;
	data_to_send[_cnt++]=0xBB;
	
	// x控制量
	data_to_send[_cnt++]=BYTE1(CH[1]); 
	data_to_send[_cnt++]=BYTE0(CH[1]);
	// y控制量
	data_to_send[_cnt++]=BYTE1(CH[0]);
	data_to_send[_cnt++]=BYTE0(CH[0]);
	// yaw控制量
	data_to_send[_cnt++]=BYTE1(CH[3]);
	data_to_send[_cnt++]=BYTE0(CH[3]);
	
	// pitch
	data_to_send[_cnt++]=data_trans[2];
	data_to_send[_cnt++]=data_trans[3];
	// yaw
	data_to_send[_cnt++]=data_trans[4];
	data_to_send[_cnt++]=data_trans[5];
	
	int16_t sum = CH[1] + CH[0] + CH[3];// + (int16_t)((data_trans[6] << 8) | data_trans[7]);
	data_to_send[_cnt++]=BYTE1(sum);
	data_to_send[_cnt++]=BYTE0(sum);
	
	HAL_UART_Transmit(&huart2, data_to_send, _cnt, 0xFFFF); 
//	printf("%5d %5d %5d\r\n",CH[1],CH[0],CH[3]);
}

void HAL_UART_RxCpltCallback(UART_HandleTypeDef *UartHandle) 
{ 
	HAL_UART_Receive_IT(&huart1,&data_receive,1);
		
	data_encoder(data_receive);
}

uint8_t data_trans[20] = {0};
void data_encoder(uint8_t data)
{
    static uint8_t datatemp[20];
    static int state = 0;
    if (state == 0 && data == 0xAA) 
    {
			state++;
    }
		else if (state == 1 && data == 0xBB) 
    {
			state++;
    }
    else if (state == 2)
    {
				static uint8_t cnt = 0;
        datatemp[cnt++] = data;
				if(cnt == 8)
				{
					for(int i = 0; i < 8; i++)
					{
						data_trans[i] = datatemp[i];
					}
					state++;
					cnt = 0;
				}
        
    }
    
		if (state == 3)
    {
//				printf("%d\r\n", (data_trans[0] << 8) | data_trans[1]);
        state = 0;
    }

}


