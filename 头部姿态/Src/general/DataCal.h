/* Define to prevent recursive inclusion -------------------------------------*/
#ifndef __FLIGHT_DATA_COMP_H
#define __FLIGHT_DATA_COMP_H
/* Includes ------------------------------------------------------------------*/
#include "data.h"
#include "Filter.h"
#include "Math.h"
/* Exported types ------------------------------------------------------------*/
/* Exported constants --------------------------------------------------------*/
extern s32 baro_height,ref_height_get;
extern u16 ref_tof_height;
/* Exported macro ------------------------------------------------------------*/
/* Exported functions ------------------------------------------------------- */

void Sensor_Get(void);

void IMU_Update_Task(u8 dT_ms);
	
#endif

