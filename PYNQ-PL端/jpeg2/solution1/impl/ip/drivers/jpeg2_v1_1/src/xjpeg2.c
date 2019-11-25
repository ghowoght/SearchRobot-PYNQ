// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
/***************************** Include Files *********************************/
#include "xjpeg2.h"

/************************** Function Implementation *************************/
#ifndef __linux__
int XJpeg2_CfgInitialize(XJpeg2 *InstancePtr, XJpeg2_Config *ConfigPtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(ConfigPtr != NULL);

    InstancePtr->Axilites_BaseAddress = ConfigPtr->Axilites_BaseAddress;
    InstancePtr->IsReady = XIL_COMPONENT_IS_READY;

    return XST_SUCCESS;
}
#endif

void XJpeg2_Start(XJpeg2 *InstancePtr) {
    u32 Data;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XJpeg2_ReadReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_AP_CTRL) & 0x80;
    XJpeg2_WriteReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_AP_CTRL, Data | 0x01);
}

u32 XJpeg2_IsDone(XJpeg2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XJpeg2_ReadReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_AP_CTRL);
    return (Data >> 1) & 0x1;
}

u32 XJpeg2_IsIdle(XJpeg2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XJpeg2_ReadReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_AP_CTRL);
    return (Data >> 2) & 0x1;
}

u32 XJpeg2_IsReady(XJpeg2 *InstancePtr) {
    u32 Data;

    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Data = XJpeg2_ReadReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_AP_CTRL);
    // check ap_start to see if the pcore is ready for next input
    return !(Data & 0x1);
}

void XJpeg2_EnableAutoRestart(XJpeg2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XJpeg2_WriteReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_AP_CTRL, 0x80);
}

void XJpeg2_DisableAutoRestart(XJpeg2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XJpeg2_WriteReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_AP_CTRL, 0);
}

void XJpeg2_InterruptGlobalEnable(XJpeg2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XJpeg2_WriteReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_GIE, 1);
}

void XJpeg2_InterruptGlobalDisable(XJpeg2 *InstancePtr) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XJpeg2_WriteReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_GIE, 0);
}

void XJpeg2_InterruptEnable(XJpeg2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XJpeg2_ReadReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_IER);
    XJpeg2_WriteReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_IER, Register | Mask);
}

void XJpeg2_InterruptDisable(XJpeg2 *InstancePtr, u32 Mask) {
    u32 Register;

    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    Register =  XJpeg2_ReadReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_IER);
    XJpeg2_WriteReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_IER, Register & (~Mask));
}

void XJpeg2_InterruptClear(XJpeg2 *InstancePtr, u32 Mask) {
    Xil_AssertVoid(InstancePtr != NULL);
    Xil_AssertVoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    XJpeg2_WriteReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_ISR, Mask);
}

u32 XJpeg2_InterruptGetEnabled(XJpeg2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XJpeg2_ReadReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_IER);
}

u32 XJpeg2_InterruptGetStatus(XJpeg2 *InstancePtr) {
    Xil_AssertNonvoid(InstancePtr != NULL);
    Xil_AssertNonvoid(InstancePtr->IsReady == XIL_COMPONENT_IS_READY);

    return XJpeg2_ReadReg(InstancePtr->Axilites_BaseAddress, XJPEG2_AXILITES_ADDR_ISR);
}

