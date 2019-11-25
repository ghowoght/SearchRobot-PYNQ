// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef XJPEG2_H
#define XJPEG2_H

#ifdef __cplusplus
extern "C" {
#endif

/***************************** Include Files *********************************/
#ifndef __linux__
#include "xil_types.h"
#include "xil_assert.h"
#include "xstatus.h"
#include "xil_io.h"
#else
#include <stdint.h>
#include <assert.h>
#include <dirent.h>
#include <fcntl.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <sys/mman.h>
#include <unistd.h>
#include <stddef.h>
#endif
#include "xjpeg2_hw.h"

/**************************** Type Definitions ******************************/
#ifdef __linux__
typedef uint8_t u8;
typedef uint16_t u16;
typedef uint32_t u32;
#else
typedef struct {
    u16 DeviceId;
    u32 Axilites_BaseAddress;
} XJpeg2_Config;
#endif

typedef struct {
    u32 Axilites_BaseAddress;
    u32 IsReady;
} XJpeg2;

/***************** Macros (Inline Functions) Definitions *********************/
#ifndef __linux__
#define XJpeg2_WriteReg(BaseAddress, RegOffset, Data) \
    Xil_Out32((BaseAddress) + (RegOffset), (u32)(Data))
#define XJpeg2_ReadReg(BaseAddress, RegOffset) \
    Xil_In32((BaseAddress) + (RegOffset))
#else
#define XJpeg2_WriteReg(BaseAddress, RegOffset, Data) \
    *(volatile u32*)((BaseAddress) + (RegOffset)) = (u32)(Data)
#define XJpeg2_ReadReg(BaseAddress, RegOffset) \
    *(volatile u32*)((BaseAddress) + (RegOffset))

#define Xil_AssertVoid(expr)    assert(expr)
#define Xil_AssertNonvoid(expr) assert(expr)

#define XST_SUCCESS             0
#define XST_DEVICE_NOT_FOUND    2
#define XST_OPEN_DEVICE_FAILED  3
#define XIL_COMPONENT_IS_READY  1
#endif

/************************** Function Prototypes *****************************/
#ifndef __linux__
int XJpeg2_Initialize(XJpeg2 *InstancePtr, u16 DeviceId);
XJpeg2_Config* XJpeg2_LookupConfig(u16 DeviceId);
int XJpeg2_CfgInitialize(XJpeg2 *InstancePtr, XJpeg2_Config *ConfigPtr);
#else
int XJpeg2_Initialize(XJpeg2 *InstancePtr, const char* InstanceName);
int XJpeg2_Release(XJpeg2 *InstancePtr);
#endif

void XJpeg2_Start(XJpeg2 *InstancePtr);
u32 XJpeg2_IsDone(XJpeg2 *InstancePtr);
u32 XJpeg2_IsIdle(XJpeg2 *InstancePtr);
u32 XJpeg2_IsReady(XJpeg2 *InstancePtr);
void XJpeg2_EnableAutoRestart(XJpeg2 *InstancePtr);
void XJpeg2_DisableAutoRestart(XJpeg2 *InstancePtr);


void XJpeg2_InterruptGlobalEnable(XJpeg2 *InstancePtr);
void XJpeg2_InterruptGlobalDisable(XJpeg2 *InstancePtr);
void XJpeg2_InterruptEnable(XJpeg2 *InstancePtr, u32 Mask);
void XJpeg2_InterruptDisable(XJpeg2 *InstancePtr, u32 Mask);
void XJpeg2_InterruptClear(XJpeg2 *InstancePtr, u32 Mask);
u32 XJpeg2_InterruptGetEnabled(XJpeg2 *InstancePtr);
u32 XJpeg2_InterruptGetStatus(XJpeg2 *InstancePtr);

#ifdef __cplusplus
}
#endif

#endif
