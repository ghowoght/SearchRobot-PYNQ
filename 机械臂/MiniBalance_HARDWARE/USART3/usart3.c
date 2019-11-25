#include "usart3.h"
  /**************************************************************************
作者：平衡小车之家
我的淘宝小店：http://shop114407458.taobao.com/
**************************************************************************/
u8 Usart3_Receive;

/**************************************************************************
函数功能：串口3初始化
入口参数： bound:波特率
返回  值：无
**************************************************************************/
void uart3_init(u32 bound)
{  	 
	  //GPIO端口设置
  GPIO_InitTypeDef GPIO_InitStructure;
	USART_InitTypeDef USART_InitStructure;
	NVIC_InitTypeDef NVIC_InitStructure;
	 
	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);	//使能UGPIOB时钟
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_USART3, ENABLE);	//使能USART3时钟
	//USART3_TX  
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_10; //PB.10
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;	//复用推挽输出
  GPIO_Init(GPIOB, &GPIO_InitStructure);
   
  //USART3_RX	  
  GPIO_InitStructure.GPIO_Pin = GPIO_Pin_11;//PB11
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_IN_FLOATING;//浮空输入
  GPIO_Init(GPIOB, &GPIO_InitStructure);

  //Usart3 NVIC 配置
  NVIC_InitStructure.NVIC_IRQChannel = USART3_IRQn;
	NVIC_InitStructure.NVIC_IRQChannelPreemptionPriority=0 ;//抢占优先级3
	NVIC_InitStructure.NVIC_IRQChannelSubPriority = 1;		//子优先级3
	NVIC_InitStructure.NVIC_IRQChannelCmd = ENABLE;			//IRQ通道使能
	NVIC_Init(&NVIC_InitStructure);	//根据指定的参数初始化VIC寄存器
   //USART 初始化设置
	USART_InitStructure.USART_BaudRate = bound;//串口波特率
	USART_InitStructure.USART_WordLength = USART_WordLength_8b;//字长为8位数据格式
	USART_InitStructure.USART_StopBits = USART_StopBits_1;//一个停止位
	USART_InitStructure.USART_Parity = USART_Parity_No;//无奇偶校验位
	USART_InitStructure.USART_HardwareFlowControl = USART_HardwareFlowControl_None;//无硬件数据流控制
	USART_InitStructure.USART_Mode = USART_Mode_Rx | USART_Mode_Tx;	//收发模式
  USART_Init(USART3, &USART_InitStructure);     //初始化串口3
  USART_ITConfig(USART3, USART_IT_RXNE, ENABLE);//开启串口接受中断
  USART_Cmd(USART3, ENABLE);                    //使能串口3 
}

/**************************************************************************
函数功能：串口3接收中断
入口参数：无
返回  值：无
**************************************************************************/
void USART3_IRQHandler(void)
{	
	if(USART_GetITStatus(USART3, USART_IT_RXNE) != RESET) //接收到数据
	{	  
//		static	int uart_receive=0;//蓝牙接收相关变量
//		static u8 Flag_PID,i,j,Receive[50];
//		static float Data;
//  	 uart_receive=USART_ReceiveData(USART3); 
//		Usart3_Receive=uart_receive;
//		
//	  if(uart_receive>10)  //默认使用app为：MiniBalanceV3.5 因为MiniBalanceV3.5的遥控指令为A~H 其HEX都大于10
//    {			
//  	}
//		if(uart_receive<10)     //备用app为：MiniBalanceV1.0  因为MiniBalanceV1.0的遥控指令为0~8 其HEX都小于10
//		{	
//  //////刹车
//  	}	

//		
//		if(Usart3_Receive==0x7B) Flag_PID=1;  //指令起始位
//		if(Usart3_Receive==0x7D) Flag_PID=2;  //指令停止位
//		 if(Flag_PID==1)                      //记录参数
//		 {
//			Receive[i]=Usart3_Receive;
//			i++;
//		 }
//		 if(Flag_PID==2)   //执行
//		 {
//			     if(Receive[3]==0x50) 	       PID_Send=1;  //获取设备参数
//			     else  if(Receive[3]==0x57) 	 Flash_Send=1;   //掉电保存参数
//					 else  if(Receive[1]!=0x23)                    //更新PID参数
//					 {								
//						for(j=i;j>=4;j--)
//						{
//						  Data+=(Receive[j-1]-48)*pow(10,i-j);
//						}
//						switch(Receive[1])
//						 {
//							 case 0x30:  Balance_Kp=Data/100;break;
//							 case 0x31:  Balance_Kd=Data/100;break;
//							 case 0x32:  Velocity_Kp=Data/100;break;
//							 case 0x33:  Velocity_Ki=Data/100;break;
//							 case 0x34:  break;
//							 case 0x35:  break;
//							 case 0x36:  break;
//							 case 0x37:  break;
//							 case 0x38:  break;
//						 }
//					 }				 
//					 Flag_PID=0;   //相关标志位清零
//					 i=0;
//					 j=0;
//					 Data=0;
//					 memset(Receive, 0, sizeof(u8)*50);
//		 } 
	}  											 
} 


