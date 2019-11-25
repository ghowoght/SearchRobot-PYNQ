#include "show.h"
  /**************************************************************************
���ߣ�ƽ��С��֮��
�ҵ��Ա�С�꣺http://shop114407458.taobao.com/
**************************************************************************/
unsigned char i;          //��������
unsigned char Send_Count; //������Ҫ���͵����ݸ���
float Vol;
/**************************************************************************
�������ܣ�OLED��ʾ
��ڲ�������
����  ֵ����
**************************************************************************/
void oled_show(void)
{                         
                          OLED_ShowString(0,0,"K");
	                        OLED_ShowNumber(5,0,PS2_KEY,2,12);
	
	                        OLED_ShowString(20,0,"S");
	                        OLED_ShowNumber(27,0,Speed,2,12);
	
		                      OLED_ShowString(53,0,".");
		                      OLED_ShowString(75,0,"V");
		                      OLED_ShowNumber(40,0,Voltage/100,2,12);
		                      OLED_ShowNumber(63,0,Voltage%100,2,12);
		 if(Voltage%100<10) 	OLED_ShowNumber(57,0,0,2,12);
		      if(Flag_Way==1) OLED_ShowString(90,0,"XYZ");  //�������
		else if(Flag_Way==0)	OLED_ShowString(90,0,"ABC");   //��������
	//=============��ʾ���A��״̬=======================//	
	  if( Target1<0)		    OLED_ShowString(00,10,"-"),
		                      OLED_ShowNumber(15,10,-Target1,6,12);
		else                 	OLED_ShowString(0,10,"+"),
		                      OLED_ShowNumber(15,10, Target1,6,12); 
		
		if( Position1<0)		  OLED_ShowString(60,10,"-"),
		                      OLED_ShowNumber(75,10,-Position1,6,12);
		else                 	OLED_ShowString(60,10,"+"),
		                      OLED_ShowNumber(75,10, Position1,6,12);
		//=============��ʾ���B��״̬=======================//	
		  if( Target2<0)		  OLED_ShowString(00,20,"-"),
		                      OLED_ShowNumber(15,20,-Target2,6,12);
		else                 	OLED_ShowString(0,20,"+"),
		                      OLED_ShowNumber(15,20, Target2,6,12); 
		  
		if( Position2<0)		  OLED_ShowString(60,20,"-"),
		                      OLED_ShowNumber(75,20,-Position2,6,12);
		else                 	OLED_ShowString(60,20,"+"),
		                      OLED_ShowNumber(75,20, Position2,6,12);
 		//=============��ʾ���C��״̬=======================//	
		  if( Target3<0)		  OLED_ShowString(00,30,"-"),
		                      OLED_ShowNumber(15,30,-Target3,6,12);
		else                 	OLED_ShowString(0,30,"+"),
		                      OLED_ShowNumber(15,30, Target3,6,12); 
		  
		if( Position3<0)		  OLED_ShowString(60,30,"-"),
		                      OLED_ShowNumber(75,30,-Position3,6,12);
		else                 	OLED_ShowString(60,30,"+"),
		                      OLED_ShowNumber(75,30, Position3,6,12);	
		//=============��ʾ���D��״̬=======================//	
		  if( Target4<0)	  	OLED_ShowString(00,40,"-"),
		                      OLED_ShowNumber(15,40,-Target4,6,12);
		else                 	OLED_ShowString(0,40,"+"),
		                      OLED_ShowNumber(15,40, Target4,6,12); 
		
		if( Position4<0)		  OLED_ShowString(60,40,"-"),
		                      OLED_ShowNumber(75,40,-Position4,6,12);
		else                 	OLED_ShowString(60,40,"+"),
		                      OLED_ShowNumber(75,40, Position4,6,12);
			//=============��ʾ���D��״̬=======================//	
    if( Target5<0)	    	OLED_ShowString(00,50,"-"),
		                      OLED_ShowNumber(15,50,-Target5,6,12);
		else                 	OLED_ShowString(0,50,"+"),
		                      OLED_ShowNumber(15,50, Target5,6,12); 
		
		if( Position5<0)		  OLED_ShowString(60,50,"-"),
		                      OLED_ShowNumber(75,50,-Position5,6,12);
		else                 	OLED_ShowString(60,50,"+"),
		                      OLED_ShowNumber(75,50, Position5,6,12);

		//=============ˢ��=======================//
		OLED_Refresh_Gram();	
	}
/**************************************************************************
�������ܣ���APP��������
��ڲ�������
����  ֵ����
��    �ߣ�ƽ��С��֮��
**************************************************************************/
void APP_Show(void)
{    
		static u8 flag;
	  int app_2,app_3,app_4;
		app_4=(Voltage-1110)*2/3;		if(app_4<0)app_4=0;if(app_4>100)app_4=100;   //�Ե�ѹ���ݽ��д���
//    app_3=Moto1/50; if(app_3<0)app_3=-app_3;			                           //�Ա��������ݾ������ݴ������ͼ�λ�
//		app_2=Moto2/50;  if(app_2<0)app_2=-app_2;
	  flag=!flag;
	if(PID_Send==1)//����PID����
	{
		printf("{C%d:%d:%d:%d:%d:%d:%d:%d:%d}$",(int)(Balance_Kp*100),(int)(Balance_Kd*100),(int)(Velocity_Kp*100),(int)(Velocity_Ki*100),0,0,0,0,0);//��ӡ��APP����	
		PID_Send=0;	
	}	
   else	if(flag==0)// 
   printf("{A%d:%d:%d:%d}$",(u8)app_2,(u8)app_3,(u8)app_4,0);//��ӡ��APP����
	 else
	 printf("{B%d:%d:%d:%d:%d}$",(int)Position1,(int)Position2,(int)Position3,(int)Position4,(int)Position5);//��ӡ��APP���� ��ʾ����
}
/**************************************************************************
�������ܣ�����ʾ��������λ���������� �ر���ʾ��
��ڲ�������
����  ֵ����
��    �ߣ�ƽ��С��֮��
**************************************************************************/
void DataScope(void)
{   
    Vol=(float)Voltage/100;
		DataScope_Get_Channel_Data(Position1, 1 );   //��ʾ�Ƕ� ��λ���ȣ��㣩
		DataScope_Get_Channel_Data(Position2, 2 );   //��ʾ�����������ľ��� ��λ��CM 
		DataScope_Get_Channel_Data(Position3, 3 );   //��ʾ��ص�ѹ ��λ��V
		DataScope_Get_Channel_Data(Position4, 4 );   
		DataScope_Get_Channel_Data(Position5, 5 ); //����Ҫ��ʾ�������滻0������
//		DataScope_Get_Channel_Data(0 , 6 );//����Ҫ��ʾ�������滻0������
//		DataScope_Get_Channel_Data(0, 7 );
//		DataScope_Get_Channel_Data( 0, 8 ); 
//		DataScope_Get_Channel_Data(0, 9 );  
//		DataScope_Get_Channel_Data( 0 , 10);
		Send_Count = DataScope_Data_Generate(5);
		for( i = 0 ; i < Send_Count; i++) 
		{
		while((USART1->SR&0X40)==0);  
		USART1->DR = DataScope_OutPut_Buffer[i]; 
		}
}
