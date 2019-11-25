#include "Drv_Spi.h"


/* SPI读写函数 */
uint8_t Drv_Spi0SingleWirteAndRead(uint8_t SendData)
{
    uint8_t ReceiveData;
	
		HAL_SPI_TransmitReceive(&hspi2,&SendData,&ReceiveData,1,10);

    return ReceiveData;
}

void Drv_Spi0Transmit(uint8_t *ucp_Data, uint16_t us_Size)
{
    uint16_t i = 0;
    /* 连续写入数据 */
    for(i = 0; i < us_Size; i++)
    {
        Drv_Spi0SingleWirteAndRead(ucp_Data[i]);
    }
}

void Drv_Spi0Receive(uint8_t *ucp_Data, uint16_t us_Size)
{
    uint16_t i = 0;
    /* 连续读取数据 */
		
//		uint8_t SendData = 0xFF;
//		HAL_SPI_TransmitReceive(&hspi2,&SendData,ucp_Data,us_Size,10);

    for(i = 0; i < us_Size; i++)
    {
        ucp_Data[i] = Drv_Spi0SingleWirteAndRead(0xFF);
    }
}

