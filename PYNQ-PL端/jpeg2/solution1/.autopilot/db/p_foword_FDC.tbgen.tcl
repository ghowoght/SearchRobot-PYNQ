set moduleName p_foword_FDC
set isTopModule 0
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isFreeRunPipelineModule 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {_foword_FDC}
set C_modelType { void 0 }
set C_modelArgList {
	{ channel_data_0 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ channel_data_1 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ channel_data_2 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ channel_data_3 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ channel_data_4 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ channel_data_5 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ channel_data_6 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ channel_data_7 int 8 regular {array 8 { 1 1 } 1 1 }  }
	{ quant_1_read int 4 regular  }
	{ quant_2_read int 5 regular  }
	{ quant_3_read int 5 regular  }
	{ quant_4_read int 5 regular  }
	{ quant_5_read int 5 regular  }
	{ quant_6_read int 5 regular  }
	{ quant_7_read int 5 regular  }
	{ quant_8_read int 4 regular  }
	{ quant_9_read int 4 regular  }
	{ quant_10_read int 5 regular  }
	{ quant_11_read int 5 regular  }
	{ quant_12_read int 5 regular  }
	{ quant_13_read int 5 regular  }
	{ quant_14_read int 5 regular  }
	{ quant_15_read int 5 regular  }
	{ quant_16_read int 5 regular  }
	{ quant_17_read int 5 regular  }
	{ quant_18_read int 5 regular  }
	{ quant_19_read int 5 regular  }
	{ quant_20_read int 5 regular  }
	{ quant_21_read int 5 regular  }
	{ quant_22_read int 5 regular  }
	{ quant_23_read int 5 regular  }
	{ quant_24_read int 5 regular  }
	{ quant_25_read int 5 regular  }
	{ quant_26_read int 5 regular  }
	{ quant_27_read int 5 regular  }
	{ quant_28_read int 5 regular  }
	{ quant_29_read int 5 regular  }
	{ quant_30_read int 5 regular  }
	{ quant_31_read int 5 regular  }
	{ quant_32_read int 5 regular  }
	{ quant_33_read int 5 regular  }
	{ quant_34_read int 5 regular  }
	{ quant_35_read int 5 regular  }
	{ quant_36_read int 5 regular  }
	{ quant_39_read int 5 regular  }
	{ quant_40_read int 5 regular  }
	{ quant_41_read int 5 regular  }
	{ quant_42_read int 5 regular  }
	{ quant_43_read int 5 regular  }
	{ quant_44_read int 5 regular  }
	{ quant_47_read int 5 regular  }
	{ quant_48_read int 5 regular  }
	{ quant_49_read int 5 regular  }
	{ quant_50_read int 5 regular  }
	{ quant_51_read int 5 regular  }
	{ quant_56_read int 5 regular  }
	{ quant_57_read int 5 regular  }
	{ fdc_data int 11 regular {array 64 { 0 0 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "channel_data_0", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "channel_data_1", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "channel_data_2", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "channel_data_3", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "channel_data_4", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "channel_data_5", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "channel_data_6", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "channel_data_7", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "quant_1_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "quant_2_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_3_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_4_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_5_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_6_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_7_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_8_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "quant_9_read", "interface" : "wire", "bitwidth" : 4, "direction" : "READONLY"} , 
 	{ "Name" : "quant_10_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_11_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_12_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_13_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_14_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_15_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_16_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_17_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_18_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_19_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_20_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_21_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_22_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_23_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_24_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_25_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_26_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_27_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_28_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_29_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_30_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_31_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_32_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_33_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_34_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_35_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_36_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_39_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_40_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_41_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_42_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_43_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_44_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_47_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_48_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_49_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_50_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_51_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_56_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "quant_57_read", "interface" : "wire", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "fdc_data", "interface" : "memory", "bitwidth" : 11, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 111
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ channel_data_0_address0 sc_out sc_lv 3 signal 0 } 
	{ channel_data_0_ce0 sc_out sc_logic 1 signal 0 } 
	{ channel_data_0_q0 sc_in sc_lv 8 signal 0 } 
	{ channel_data_0_address1 sc_out sc_lv 3 signal 0 } 
	{ channel_data_0_ce1 sc_out sc_logic 1 signal 0 } 
	{ channel_data_0_q1 sc_in sc_lv 8 signal 0 } 
	{ channel_data_1_address0 sc_out sc_lv 3 signal 1 } 
	{ channel_data_1_ce0 sc_out sc_logic 1 signal 1 } 
	{ channel_data_1_q0 sc_in sc_lv 8 signal 1 } 
	{ channel_data_1_address1 sc_out sc_lv 3 signal 1 } 
	{ channel_data_1_ce1 sc_out sc_logic 1 signal 1 } 
	{ channel_data_1_q1 sc_in sc_lv 8 signal 1 } 
	{ channel_data_2_address0 sc_out sc_lv 3 signal 2 } 
	{ channel_data_2_ce0 sc_out sc_logic 1 signal 2 } 
	{ channel_data_2_q0 sc_in sc_lv 8 signal 2 } 
	{ channel_data_2_address1 sc_out sc_lv 3 signal 2 } 
	{ channel_data_2_ce1 sc_out sc_logic 1 signal 2 } 
	{ channel_data_2_q1 sc_in sc_lv 8 signal 2 } 
	{ channel_data_3_address0 sc_out sc_lv 3 signal 3 } 
	{ channel_data_3_ce0 sc_out sc_logic 1 signal 3 } 
	{ channel_data_3_q0 sc_in sc_lv 8 signal 3 } 
	{ channel_data_3_address1 sc_out sc_lv 3 signal 3 } 
	{ channel_data_3_ce1 sc_out sc_logic 1 signal 3 } 
	{ channel_data_3_q1 sc_in sc_lv 8 signal 3 } 
	{ channel_data_4_address0 sc_out sc_lv 3 signal 4 } 
	{ channel_data_4_ce0 sc_out sc_logic 1 signal 4 } 
	{ channel_data_4_q0 sc_in sc_lv 8 signal 4 } 
	{ channel_data_4_address1 sc_out sc_lv 3 signal 4 } 
	{ channel_data_4_ce1 sc_out sc_logic 1 signal 4 } 
	{ channel_data_4_q1 sc_in sc_lv 8 signal 4 } 
	{ channel_data_5_address0 sc_out sc_lv 3 signal 5 } 
	{ channel_data_5_ce0 sc_out sc_logic 1 signal 5 } 
	{ channel_data_5_q0 sc_in sc_lv 8 signal 5 } 
	{ channel_data_5_address1 sc_out sc_lv 3 signal 5 } 
	{ channel_data_5_ce1 sc_out sc_logic 1 signal 5 } 
	{ channel_data_5_q1 sc_in sc_lv 8 signal 5 } 
	{ channel_data_6_address0 sc_out sc_lv 3 signal 6 } 
	{ channel_data_6_ce0 sc_out sc_logic 1 signal 6 } 
	{ channel_data_6_q0 sc_in sc_lv 8 signal 6 } 
	{ channel_data_6_address1 sc_out sc_lv 3 signal 6 } 
	{ channel_data_6_ce1 sc_out sc_logic 1 signal 6 } 
	{ channel_data_6_q1 sc_in sc_lv 8 signal 6 } 
	{ channel_data_7_address0 sc_out sc_lv 3 signal 7 } 
	{ channel_data_7_ce0 sc_out sc_logic 1 signal 7 } 
	{ channel_data_7_q0 sc_in sc_lv 8 signal 7 } 
	{ channel_data_7_address1 sc_out sc_lv 3 signal 7 } 
	{ channel_data_7_ce1 sc_out sc_logic 1 signal 7 } 
	{ channel_data_7_q1 sc_in sc_lv 8 signal 7 } 
	{ quant_1_read sc_in sc_lv 4 signal 8 } 
	{ quant_2_read sc_in sc_lv 5 signal 9 } 
	{ quant_3_read sc_in sc_lv 5 signal 10 } 
	{ quant_4_read sc_in sc_lv 5 signal 11 } 
	{ quant_5_read sc_in sc_lv 5 signal 12 } 
	{ quant_6_read sc_in sc_lv 5 signal 13 } 
	{ quant_7_read sc_in sc_lv 5 signal 14 } 
	{ quant_8_read sc_in sc_lv 4 signal 15 } 
	{ quant_9_read sc_in sc_lv 4 signal 16 } 
	{ quant_10_read sc_in sc_lv 5 signal 17 } 
	{ quant_11_read sc_in sc_lv 5 signal 18 } 
	{ quant_12_read sc_in sc_lv 5 signal 19 } 
	{ quant_13_read sc_in sc_lv 5 signal 20 } 
	{ quant_14_read sc_in sc_lv 5 signal 21 } 
	{ quant_15_read sc_in sc_lv 5 signal 22 } 
	{ quant_16_read sc_in sc_lv 5 signal 23 } 
	{ quant_17_read sc_in sc_lv 5 signal 24 } 
	{ quant_18_read sc_in sc_lv 5 signal 25 } 
	{ quant_19_read sc_in sc_lv 5 signal 26 } 
	{ quant_20_read sc_in sc_lv 5 signal 27 } 
	{ quant_21_read sc_in sc_lv 5 signal 28 } 
	{ quant_22_read sc_in sc_lv 5 signal 29 } 
	{ quant_23_read sc_in sc_lv 5 signal 30 } 
	{ quant_24_read sc_in sc_lv 5 signal 31 } 
	{ quant_25_read sc_in sc_lv 5 signal 32 } 
	{ quant_26_read sc_in sc_lv 5 signal 33 } 
	{ quant_27_read sc_in sc_lv 5 signal 34 } 
	{ quant_28_read sc_in sc_lv 5 signal 35 } 
	{ quant_29_read sc_in sc_lv 5 signal 36 } 
	{ quant_30_read sc_in sc_lv 5 signal 37 } 
	{ quant_31_read sc_in sc_lv 5 signal 38 } 
	{ quant_32_read sc_in sc_lv 5 signal 39 } 
	{ quant_33_read sc_in sc_lv 5 signal 40 } 
	{ quant_34_read sc_in sc_lv 5 signal 41 } 
	{ quant_35_read sc_in sc_lv 5 signal 42 } 
	{ quant_36_read sc_in sc_lv 5 signal 43 } 
	{ quant_39_read sc_in sc_lv 5 signal 44 } 
	{ quant_40_read sc_in sc_lv 5 signal 45 } 
	{ quant_41_read sc_in sc_lv 5 signal 46 } 
	{ quant_42_read sc_in sc_lv 5 signal 47 } 
	{ quant_43_read sc_in sc_lv 5 signal 48 } 
	{ quant_44_read sc_in sc_lv 5 signal 49 } 
	{ quant_47_read sc_in sc_lv 5 signal 50 } 
	{ quant_48_read sc_in sc_lv 5 signal 51 } 
	{ quant_49_read sc_in sc_lv 5 signal 52 } 
	{ quant_50_read sc_in sc_lv 5 signal 53 } 
	{ quant_51_read sc_in sc_lv 5 signal 54 } 
	{ quant_56_read sc_in sc_lv 5 signal 55 } 
	{ quant_57_read sc_in sc_lv 5 signal 56 } 
	{ fdc_data_address0 sc_out sc_lv 6 signal 57 } 
	{ fdc_data_ce0 sc_out sc_logic 1 signal 57 } 
	{ fdc_data_we0 sc_out sc_logic 1 signal 57 } 
	{ fdc_data_d0 sc_out sc_lv 11 signal 57 } 
	{ fdc_data_address1 sc_out sc_lv 6 signal 57 } 
	{ fdc_data_ce1 sc_out sc_logic 1 signal 57 } 
	{ fdc_data_we1 sc_out sc_logic 1 signal 57 } 
	{ fdc_data_d1 sc_out sc_lv 11 signal 57 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "channel_data_0_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_0", "role": "address0" }} , 
 	{ "name": "channel_data_0_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_0", "role": "ce0" }} , 
 	{ "name": "channel_data_0_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_0", "role": "q0" }} , 
 	{ "name": "channel_data_0_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_0", "role": "address1" }} , 
 	{ "name": "channel_data_0_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_0", "role": "ce1" }} , 
 	{ "name": "channel_data_0_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_0", "role": "q1" }} , 
 	{ "name": "channel_data_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_1", "role": "address0" }} , 
 	{ "name": "channel_data_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_1", "role": "ce0" }} , 
 	{ "name": "channel_data_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_1", "role": "q0" }} , 
 	{ "name": "channel_data_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_1", "role": "address1" }} , 
 	{ "name": "channel_data_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_1", "role": "ce1" }} , 
 	{ "name": "channel_data_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_1", "role": "q1" }} , 
 	{ "name": "channel_data_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_2", "role": "address0" }} , 
 	{ "name": "channel_data_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_2", "role": "ce0" }} , 
 	{ "name": "channel_data_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_2", "role": "q0" }} , 
 	{ "name": "channel_data_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_2", "role": "address1" }} , 
 	{ "name": "channel_data_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_2", "role": "ce1" }} , 
 	{ "name": "channel_data_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_2", "role": "q1" }} , 
 	{ "name": "channel_data_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_3", "role": "address0" }} , 
 	{ "name": "channel_data_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_3", "role": "ce0" }} , 
 	{ "name": "channel_data_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_3", "role": "q0" }} , 
 	{ "name": "channel_data_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_3", "role": "address1" }} , 
 	{ "name": "channel_data_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_3", "role": "ce1" }} , 
 	{ "name": "channel_data_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_3", "role": "q1" }} , 
 	{ "name": "channel_data_4_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_4", "role": "address0" }} , 
 	{ "name": "channel_data_4_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_4", "role": "ce0" }} , 
 	{ "name": "channel_data_4_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_4", "role": "q0" }} , 
 	{ "name": "channel_data_4_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_4", "role": "address1" }} , 
 	{ "name": "channel_data_4_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_4", "role": "ce1" }} , 
 	{ "name": "channel_data_4_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_4", "role": "q1" }} , 
 	{ "name": "channel_data_5_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_5", "role": "address0" }} , 
 	{ "name": "channel_data_5_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_5", "role": "ce0" }} , 
 	{ "name": "channel_data_5_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_5", "role": "q0" }} , 
 	{ "name": "channel_data_5_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_5", "role": "address1" }} , 
 	{ "name": "channel_data_5_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_5", "role": "ce1" }} , 
 	{ "name": "channel_data_5_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_5", "role": "q1" }} , 
 	{ "name": "channel_data_6_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_6", "role": "address0" }} , 
 	{ "name": "channel_data_6_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_6", "role": "ce0" }} , 
 	{ "name": "channel_data_6_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_6", "role": "q0" }} , 
 	{ "name": "channel_data_6_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_6", "role": "address1" }} , 
 	{ "name": "channel_data_6_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_6", "role": "ce1" }} , 
 	{ "name": "channel_data_6_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_6", "role": "q1" }} , 
 	{ "name": "channel_data_7_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_7", "role": "address0" }} , 
 	{ "name": "channel_data_7_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_7", "role": "ce0" }} , 
 	{ "name": "channel_data_7_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_7", "role": "q0" }} , 
 	{ "name": "channel_data_7_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "channel_data_7", "role": "address1" }} , 
 	{ "name": "channel_data_7_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "channel_data_7", "role": "ce1" }} , 
 	{ "name": "channel_data_7_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "channel_data_7", "role": "q1" }} , 
 	{ "name": "quant_1_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "quant_1_read", "role": "default" }} , 
 	{ "name": "quant_2_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_2_read", "role": "default" }} , 
 	{ "name": "quant_3_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_3_read", "role": "default" }} , 
 	{ "name": "quant_4_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_4_read", "role": "default" }} , 
 	{ "name": "quant_5_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_5_read", "role": "default" }} , 
 	{ "name": "quant_6_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_6_read", "role": "default" }} , 
 	{ "name": "quant_7_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_7_read", "role": "default" }} , 
 	{ "name": "quant_8_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "quant_8_read", "role": "default" }} , 
 	{ "name": "quant_9_read", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "quant_9_read", "role": "default" }} , 
 	{ "name": "quant_10_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_10_read", "role": "default" }} , 
 	{ "name": "quant_11_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_11_read", "role": "default" }} , 
 	{ "name": "quant_12_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_12_read", "role": "default" }} , 
 	{ "name": "quant_13_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_13_read", "role": "default" }} , 
 	{ "name": "quant_14_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_14_read", "role": "default" }} , 
 	{ "name": "quant_15_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_15_read", "role": "default" }} , 
 	{ "name": "quant_16_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_16_read", "role": "default" }} , 
 	{ "name": "quant_17_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_17_read", "role": "default" }} , 
 	{ "name": "quant_18_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_18_read", "role": "default" }} , 
 	{ "name": "quant_19_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_19_read", "role": "default" }} , 
 	{ "name": "quant_20_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_20_read", "role": "default" }} , 
 	{ "name": "quant_21_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_21_read", "role": "default" }} , 
 	{ "name": "quant_22_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_22_read", "role": "default" }} , 
 	{ "name": "quant_23_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_23_read", "role": "default" }} , 
 	{ "name": "quant_24_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_24_read", "role": "default" }} , 
 	{ "name": "quant_25_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_25_read", "role": "default" }} , 
 	{ "name": "quant_26_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_26_read", "role": "default" }} , 
 	{ "name": "quant_27_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_27_read", "role": "default" }} , 
 	{ "name": "quant_28_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_28_read", "role": "default" }} , 
 	{ "name": "quant_29_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_29_read", "role": "default" }} , 
 	{ "name": "quant_30_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_30_read", "role": "default" }} , 
 	{ "name": "quant_31_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_31_read", "role": "default" }} , 
 	{ "name": "quant_32_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_32_read", "role": "default" }} , 
 	{ "name": "quant_33_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_33_read", "role": "default" }} , 
 	{ "name": "quant_34_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_34_read", "role": "default" }} , 
 	{ "name": "quant_35_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_35_read", "role": "default" }} , 
 	{ "name": "quant_36_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_36_read", "role": "default" }} , 
 	{ "name": "quant_39_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_39_read", "role": "default" }} , 
 	{ "name": "quant_40_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_40_read", "role": "default" }} , 
 	{ "name": "quant_41_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_41_read", "role": "default" }} , 
 	{ "name": "quant_42_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_42_read", "role": "default" }} , 
 	{ "name": "quant_43_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_43_read", "role": "default" }} , 
 	{ "name": "quant_44_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_44_read", "role": "default" }} , 
 	{ "name": "quant_47_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_47_read", "role": "default" }} , 
 	{ "name": "quant_48_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_48_read", "role": "default" }} , 
 	{ "name": "quant_49_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_49_read", "role": "default" }} , 
 	{ "name": "quant_50_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_50_read", "role": "default" }} , 
 	{ "name": "quant_51_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_51_read", "role": "default" }} , 
 	{ "name": "quant_56_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_56_read", "role": "default" }} , 
 	{ "name": "quant_57_read", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "quant_57_read", "role": "default" }} , 
 	{ "name": "fdc_data_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "fdc_data", "role": "address0" }} , 
 	{ "name": "fdc_data_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fdc_data", "role": "ce0" }} , 
 	{ "name": "fdc_data_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fdc_data", "role": "we0" }} , 
 	{ "name": "fdc_data_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "fdc_data", "role": "d0" }} , 
 	{ "name": "fdc_data_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "fdc_data", "role": "address1" }} , 
 	{ "name": "fdc_data_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fdc_data", "role": "ce1" }} , 
 	{ "name": "fdc_data_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "fdc_data", "role": "we1" }} , 
 	{ "name": "fdc_data_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "fdc_data", "role": "d1" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102"],
		"CDFG" : "p_foword_FDC",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "96", "EstimateLatencyMax" : "96",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "channel_data_0", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "channel_data_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "channel_data_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "channel_data_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "channel_data_4", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "channel_data_5", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "channel_data_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "channel_data_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "quant_1_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_2_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_3_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_4_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_5_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_6_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_7_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_8_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_9_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_10_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_11_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_12_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_13_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_14_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_15_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_16_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_17_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_18_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_19_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_20_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_21_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_22_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_23_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_24_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_25_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_26_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_27_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_28_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_29_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_30_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_31_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_32_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_33_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_34_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_35_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_36_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_39_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_40_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_41_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_42_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_43_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_44_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_47_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_48_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_49_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_50_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_51_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_56_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "quant_57_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "fdc_data", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mid_V_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mux_832_8_1_1_U110", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mux_832_8_1_1_U111", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_am_addmul_1ncg_U112", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_am_addmul_1ncg_U113", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_ocq_U114", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_pcA_U115", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_mulsub_qcK_U116", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_am_addmul_1rcU_U117", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_mulsub_qcK_U118", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_sc4_U119", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_mulsub_tde_U120", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nudo_U121", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nudo_U122", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U123", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U124", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_wdI_U125", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U126", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U127", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U128", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nyd2_U129", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nzec_U130", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nAem_U131", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U132", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U133", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_wdI_U134", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U135", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U136", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U137", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nyd2_U138", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nzec_U139", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nAem_U140", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U141", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U142", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U143", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U144", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_wdI_U145", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U146", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U147", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U148", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nyd2_U149", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nzec_U150", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nAem_U151", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U152", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U153", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U154", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U155", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_wdI_U156", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U157", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U158", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U159", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nyd2_U160", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nzec_U161", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nAem_U162", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U163", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U164", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U165", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U166", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_wdI_U167", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U168", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U169", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U170", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nyd2_U171", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nzec_U172", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nAem_U173", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U174", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U175", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U176", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U177", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_wdI_U178", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U179", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U180", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U181", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nyd2_U182", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nzec_U183", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nAem_U184", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U185", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U186", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U187", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U188", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_wdI_U189", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U190", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U191", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U192", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nyd2_U193", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nzec_U194", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nAem_U195", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U196", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U197", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U198", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nvdy_U199", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_wdI_U200", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U201", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U202", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mac_muladd_xdS_U203", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nyd2_U204", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nzec_U205", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_11nAem_U206", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U207", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U208", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U209", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_mul_mul_10nBew_U210", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_foword_FDC {
		channel_data_0 {Type I LastRead 5 FirstWrite -1}
		channel_data_1 {Type I LastRead 5 FirstWrite -1}
		channel_data_2 {Type I LastRead 5 FirstWrite -1}
		channel_data_3 {Type I LastRead 5 FirstWrite -1}
		channel_data_4 {Type I LastRead 5 FirstWrite -1}
		channel_data_5 {Type I LastRead 5 FirstWrite -1}
		channel_data_6 {Type I LastRead 5 FirstWrite -1}
		channel_data_7 {Type I LastRead 5 FirstWrite -1}
		quant_1_read {Type I LastRead 0 FirstWrite -1}
		quant_2_read {Type I LastRead 0 FirstWrite -1}
		quant_3_read {Type I LastRead 0 FirstWrite -1}
		quant_4_read {Type I LastRead 0 FirstWrite -1}
		quant_5_read {Type I LastRead 0 FirstWrite -1}
		quant_6_read {Type I LastRead 0 FirstWrite -1}
		quant_7_read {Type I LastRead 0 FirstWrite -1}
		quant_8_read {Type I LastRead 0 FirstWrite -1}
		quant_9_read {Type I LastRead 0 FirstWrite -1}
		quant_10_read {Type I LastRead 0 FirstWrite -1}
		quant_11_read {Type I LastRead 0 FirstWrite -1}
		quant_12_read {Type I LastRead 0 FirstWrite -1}
		quant_13_read {Type I LastRead 0 FirstWrite -1}
		quant_14_read {Type I LastRead 0 FirstWrite -1}
		quant_15_read {Type I LastRead 0 FirstWrite -1}
		quant_16_read {Type I LastRead 0 FirstWrite -1}
		quant_17_read {Type I LastRead 0 FirstWrite -1}
		quant_18_read {Type I LastRead 0 FirstWrite -1}
		quant_19_read {Type I LastRead 0 FirstWrite -1}
		quant_20_read {Type I LastRead 0 FirstWrite -1}
		quant_21_read {Type I LastRead 0 FirstWrite -1}
		quant_22_read {Type I LastRead 0 FirstWrite -1}
		quant_23_read {Type I LastRead 0 FirstWrite -1}
		quant_24_read {Type I LastRead 0 FirstWrite -1}
		quant_25_read {Type I LastRead 0 FirstWrite -1}
		quant_26_read {Type I LastRead 0 FirstWrite -1}
		quant_27_read {Type I LastRead 0 FirstWrite -1}
		quant_28_read {Type I LastRead 0 FirstWrite -1}
		quant_29_read {Type I LastRead 0 FirstWrite -1}
		quant_30_read {Type I LastRead 0 FirstWrite -1}
		quant_31_read {Type I LastRead 0 FirstWrite -1}
		quant_32_read {Type I LastRead 0 FirstWrite -1}
		quant_33_read {Type I LastRead 0 FirstWrite -1}
		quant_34_read {Type I LastRead 0 FirstWrite -1}
		quant_35_read {Type I LastRead 0 FirstWrite -1}
		quant_36_read {Type I LastRead 0 FirstWrite -1}
		quant_39_read {Type I LastRead 0 FirstWrite -1}
		quant_40_read {Type I LastRead 0 FirstWrite -1}
		quant_41_read {Type I LastRead 0 FirstWrite -1}
		quant_42_read {Type I LastRead 0 FirstWrite -1}
		quant_43_read {Type I LastRead 0 FirstWrite -1}
		quant_44_read {Type I LastRead 0 FirstWrite -1}
		quant_47_read {Type I LastRead 0 FirstWrite -1}
		quant_48_read {Type I LastRead 0 FirstWrite -1}
		quant_49_read {Type I LastRead 0 FirstWrite -1}
		quant_50_read {Type I LastRead 0 FirstWrite -1}
		quant_51_read {Type I LastRead 0 FirstWrite -1}
		quant_56_read {Type I LastRead 0 FirstWrite -1}
		quant_57_read {Type I LastRead 0 FirstWrite -1}
		fdc_data {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "96", "Max" : "96"}
	, {"Name" : "Interval", "Min" : "96", "Max" : "96"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	channel_data_0 { ap_memory {  { channel_data_0_address0 mem_address 1 3 }  { channel_data_0_ce0 mem_ce 1 1 }  { channel_data_0_q0 mem_dout 0 8 }  { channel_data_0_address1 MemPortADDR2 1 3 }  { channel_data_0_ce1 MemPortCE2 1 1 }  { channel_data_0_q1 MemPortDOUT2 0 8 } } }
	channel_data_1 { ap_memory {  { channel_data_1_address0 mem_address 1 3 }  { channel_data_1_ce0 mem_ce 1 1 }  { channel_data_1_q0 mem_dout 0 8 }  { channel_data_1_address1 MemPortADDR2 1 3 }  { channel_data_1_ce1 MemPortCE2 1 1 }  { channel_data_1_q1 MemPortDOUT2 0 8 } } }
	channel_data_2 { ap_memory {  { channel_data_2_address0 mem_address 1 3 }  { channel_data_2_ce0 mem_ce 1 1 }  { channel_data_2_q0 mem_dout 0 8 }  { channel_data_2_address1 MemPortADDR2 1 3 }  { channel_data_2_ce1 MemPortCE2 1 1 }  { channel_data_2_q1 MemPortDOUT2 0 8 } } }
	channel_data_3 { ap_memory {  { channel_data_3_address0 mem_address 1 3 }  { channel_data_3_ce0 mem_ce 1 1 }  { channel_data_3_q0 mem_dout 0 8 }  { channel_data_3_address1 MemPortADDR2 1 3 }  { channel_data_3_ce1 MemPortCE2 1 1 }  { channel_data_3_q1 MemPortDOUT2 0 8 } } }
	channel_data_4 { ap_memory {  { channel_data_4_address0 mem_address 1 3 }  { channel_data_4_ce0 mem_ce 1 1 }  { channel_data_4_q0 mem_dout 0 8 }  { channel_data_4_address1 MemPortADDR2 1 3 }  { channel_data_4_ce1 MemPortCE2 1 1 }  { channel_data_4_q1 MemPortDOUT2 0 8 } } }
	channel_data_5 { ap_memory {  { channel_data_5_address0 mem_address 1 3 }  { channel_data_5_ce0 mem_ce 1 1 }  { channel_data_5_q0 mem_dout 0 8 }  { channel_data_5_address1 MemPortADDR2 1 3 }  { channel_data_5_ce1 MemPortCE2 1 1 }  { channel_data_5_q1 MemPortDOUT2 0 8 } } }
	channel_data_6 { ap_memory {  { channel_data_6_address0 mem_address 1 3 }  { channel_data_6_ce0 mem_ce 1 1 }  { channel_data_6_q0 mem_dout 0 8 }  { channel_data_6_address1 MemPortADDR2 1 3 }  { channel_data_6_ce1 MemPortCE2 1 1 }  { channel_data_6_q1 MemPortDOUT2 0 8 } } }
	channel_data_7 { ap_memory {  { channel_data_7_address0 mem_address 1 3 }  { channel_data_7_ce0 mem_ce 1 1 }  { channel_data_7_q0 mem_dout 0 8 }  { channel_data_7_address1 MemPortADDR2 1 3 }  { channel_data_7_ce1 MemPortCE2 1 1 }  { channel_data_7_q1 MemPortDOUT2 0 8 } } }
	quant_1_read { ap_none {  { quant_1_read in_data 0 4 } } }
	quant_2_read { ap_none {  { quant_2_read in_data 0 5 } } }
	quant_3_read { ap_none {  { quant_3_read in_data 0 5 } } }
	quant_4_read { ap_none {  { quant_4_read in_data 0 5 } } }
	quant_5_read { ap_none {  { quant_5_read in_data 0 5 } } }
	quant_6_read { ap_none {  { quant_6_read in_data 0 5 } } }
	quant_7_read { ap_none {  { quant_7_read in_data 0 5 } } }
	quant_8_read { ap_none {  { quant_8_read in_data 0 4 } } }
	quant_9_read { ap_none {  { quant_9_read in_data 0 4 } } }
	quant_10_read { ap_none {  { quant_10_read in_data 0 5 } } }
	quant_11_read { ap_none {  { quant_11_read in_data 0 5 } } }
	quant_12_read { ap_none {  { quant_12_read in_data 0 5 } } }
	quant_13_read { ap_none {  { quant_13_read in_data 0 5 } } }
	quant_14_read { ap_none {  { quant_14_read in_data 0 5 } } }
	quant_15_read { ap_none {  { quant_15_read in_data 0 5 } } }
	quant_16_read { ap_none {  { quant_16_read in_data 0 5 } } }
	quant_17_read { ap_none {  { quant_17_read in_data 0 5 } } }
	quant_18_read { ap_none {  { quant_18_read in_data 0 5 } } }
	quant_19_read { ap_none {  { quant_19_read in_data 0 5 } } }
	quant_20_read { ap_none {  { quant_20_read in_data 0 5 } } }
	quant_21_read { ap_none {  { quant_21_read in_data 0 5 } } }
	quant_22_read { ap_none {  { quant_22_read in_data 0 5 } } }
	quant_23_read { ap_none {  { quant_23_read in_data 0 5 } } }
	quant_24_read { ap_none {  { quant_24_read in_data 0 5 } } }
	quant_25_read { ap_none {  { quant_25_read in_data 0 5 } } }
	quant_26_read { ap_none {  { quant_26_read in_data 0 5 } } }
	quant_27_read { ap_none {  { quant_27_read in_data 0 5 } } }
	quant_28_read { ap_none {  { quant_28_read in_data 0 5 } } }
	quant_29_read { ap_none {  { quant_29_read in_data 0 5 } } }
	quant_30_read { ap_none {  { quant_30_read in_data 0 5 } } }
	quant_31_read { ap_none {  { quant_31_read in_data 0 5 } } }
	quant_32_read { ap_none {  { quant_32_read in_data 0 5 } } }
	quant_33_read { ap_none {  { quant_33_read in_data 0 5 } } }
	quant_34_read { ap_none {  { quant_34_read in_data 0 5 } } }
	quant_35_read { ap_none {  { quant_35_read in_data 0 5 } } }
	quant_36_read { ap_none {  { quant_36_read in_data 0 5 } } }
	quant_39_read { ap_none {  { quant_39_read in_data 0 5 } } }
	quant_40_read { ap_none {  { quant_40_read in_data 0 5 } } }
	quant_41_read { ap_none {  { quant_41_read in_data 0 5 } } }
	quant_42_read { ap_none {  { quant_42_read in_data 0 5 } } }
	quant_43_read { ap_none {  { quant_43_read in_data 0 5 } } }
	quant_44_read { ap_none {  { quant_44_read in_data 0 5 } } }
	quant_47_read { ap_none {  { quant_47_read in_data 0 5 } } }
	quant_48_read { ap_none {  { quant_48_read in_data 0 5 } } }
	quant_49_read { ap_none {  { quant_49_read in_data 0 5 } } }
	quant_50_read { ap_none {  { quant_50_read in_data 0 5 } } }
	quant_51_read { ap_none {  { quant_51_read in_data 0 5 } } }
	quant_56_read { ap_none {  { quant_56_read in_data 0 5 } } }
	quant_57_read { ap_none {  { quant_57_read in_data 0 5 } } }
	fdc_data { ap_memory {  { fdc_data_address0 mem_address 1 6 }  { fdc_data_ce0 mem_ce 1 1 }  { fdc_data_we0 mem_we 1 1 }  { fdc_data_d0 mem_din 1 11 }  { fdc_data_address1 MemPortADDR2 1 6 }  { fdc_data_ce1 MemPortCE2 1 1 }  { fdc_data_we1 MemPortWE2 1 1 }  { fdc_data_d1 MemPortDIN2 1 11 } } }
}
