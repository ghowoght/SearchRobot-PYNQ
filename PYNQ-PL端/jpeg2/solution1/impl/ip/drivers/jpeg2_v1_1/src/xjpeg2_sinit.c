// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __linux__

#include "xstatus.h"
#include "xparameters.h"
#include "xjpeg2.h"

extern XJpeg2_Config XJpeg2_ConfigTable[];

XJpeg2_Config *XJpeg2_LookupConfig(u16 DeviceId) {
	XJpeg2_Config *ConfigPtr = NULL;

	int Index;

	for (Index = 0; Index < XPAR_XJPEG2_NUM_INSTANCES; Index++) {
		if (XJpeg2_ConfigTable[Index].DeviceId == DeviceId) {
			ConfigPtr = &XJpeg2_ConfigTable[Index];
			break;
		}
	}

	return ConfigPtr;
}

int XJpeg2_Initialize(XJpeg2 *InstancePtr, u16 DeviceId) {
	XJpeg2_Config *ConfigPtr;

	Xil_AssertNonvoid(InstancePtr != NULL);

	ConfigPtr = XJpeg2_LookupConfig(DeviceId);
	if (ConfigPtr == NULL) {
		InstancePtr->IsReady = 0;
		return (XST_DEVICE_NOT_FOUND);
	}

	return XJpeg2_CfgInitialize(InstancePtr, ConfigPtr);
}

#endif

