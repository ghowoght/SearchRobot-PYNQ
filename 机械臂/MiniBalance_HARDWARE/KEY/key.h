#ifndef __KEY_H
#define __KEY_H	 
#include "sys.h"
  /**************************************************************************
作者：平衡小车之家
我的淘宝小店：http://shop114407458.taobao.com/
**************************************************************************/

#define KEY_S PAin(5)
#define KEY_P PCin(15)
#define KEY_J PAin(6)
#define KEY_M PCin(14)
#define KEY_X PCin(13)

void KEY_Init(void);          //按键初始化
u8 click_N_Double (u8 time);  //单击按键扫描和双击按键扫描
u8 click(void);               //单击按键扫描
u8 Long_Press(void);           //长按扫描  
#endif  
