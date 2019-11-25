set moduleName encodeToJPG
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
set C_modelName {encodeToJPG}
set C_modelType { void 0 }
set C_modelArgList {
	{ JpegEncoder_buffer int 8 regular {array 15360 { 2 2 } 1 1 }  }
	{ JpegEncoder_m_YTable int 8 regular {array 64 { 2 3 } 1 1 }  }
	{ JpegEncoder_m_CbCrTable int 8 regular {array 64 { 2 3 } 1 1 }  }
	{ JpegEncoder_m_Y_DC_Huffman_Table_length int 5 regular {array 12 { 2 3 } 1 1 }  }
	{ JpegEncoder_m_Y_DC_Huffman_Table_value int 16 regular {array 12 { 2 3 } 1 1 }  }
	{ JpegEncoder_m_Y_AC_Huffman_Table_length int 5 regular {array 256 { 2 1 } 1 1 }  }
	{ JpegEncoder_m_Y_AC_Huffman_Table_value int 16 regular {array 256 { 2 1 } 1 1 }  }
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_length int 5 regular {array 12 { 2 3 } 1 1 }  }
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_value int 16 regular {array 12 { 2 3 } 1 1 }  }
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length int 5 regular {array 256 { 2 1 } 1 1 }  }
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value int 16 regular {array 256 { 2 1 } 1 1 }  }
	{ rgb_in_V_data_V int 24 regular {axi_s 0 volatile  { rgb_in Data } }  }
	{ rgb_in_V_keep_V int 3 regular {axi_s 0 volatile  { rgb_in Keep } }  }
	{ rgb_in_V_strb_V int 3 regular {axi_s 0 volatile  { rgb_in Strb } }  }
	{ rgb_in_V_last_V int 1 regular {axi_s 0 volatile  { rgb_in Last } }  }
	{ jpeg_out_V_data_V int 8 regular {axi_s 1 volatile  { jpeg_out Data } }  }
	{ jpeg_out_V_keep_V int 1 regular {axi_s 1 volatile  { jpeg_out Keep } }  }
	{ jpeg_out_V_strb_V int 1 regular {axi_s 1 volatile  { jpeg_out Strb } }  }
	{ jpeg_out_V_last_V int 1 regular {axi_s 1 volatile  { jpeg_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "JpegEncoder_buffer", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_YTable", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_CbCrTable", "interface" : "memory", "bitwidth" : 8, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_Y_DC_Huffman_Table_length", "interface" : "memory", "bitwidth" : 5, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_Y_DC_Huffman_Table_value", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_Y_AC_Huffman_Table_length", "interface" : "memory", "bitwidth" : 5, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_Y_AC_Huffman_Table_value", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_CbCr_DC_Huffman_Table_length", "interface" : "memory", "bitwidth" : 5, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_CbCr_DC_Huffman_Table_value", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "interface" : "memory", "bitwidth" : 5, "direction" : "READWRITE"} , 
 	{ "Name" : "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "interface" : "memory", "bitwidth" : 16, "direction" : "READWRITE"} , 
 	{ "Name" : "rgb_in_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb_in_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "rgb_in_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "rgb_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} , 
 	{ "Name" : "jpeg_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 90
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ JpegEncoder_buffer_address0 sc_out sc_lv 14 signal 0 } 
	{ JpegEncoder_buffer_ce0 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_buffer_we0 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_buffer_d0 sc_out sc_lv 8 signal 0 } 
	{ JpegEncoder_buffer_q0 sc_in sc_lv 8 signal 0 } 
	{ JpegEncoder_buffer_address1 sc_out sc_lv 14 signal 0 } 
	{ JpegEncoder_buffer_ce1 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_buffer_we1 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_buffer_d1 sc_out sc_lv 8 signal 0 } 
	{ JpegEncoder_buffer_q1 sc_in sc_lv 8 signal 0 } 
	{ JpegEncoder_m_YTable_address0 sc_out sc_lv 6 signal 1 } 
	{ JpegEncoder_m_YTable_ce0 sc_out sc_logic 1 signal 1 } 
	{ JpegEncoder_m_YTable_we0 sc_out sc_logic 1 signal 1 } 
	{ JpegEncoder_m_YTable_d0 sc_out sc_lv 8 signal 1 } 
	{ JpegEncoder_m_YTable_q0 sc_in sc_lv 8 signal 1 } 
	{ JpegEncoder_m_CbCrTable_address0 sc_out sc_lv 6 signal 2 } 
	{ JpegEncoder_m_CbCrTable_ce0 sc_out sc_logic 1 signal 2 } 
	{ JpegEncoder_m_CbCrTable_we0 sc_out sc_logic 1 signal 2 } 
	{ JpegEncoder_m_CbCrTable_d0 sc_out sc_lv 8 signal 2 } 
	{ JpegEncoder_m_CbCrTable_q0 sc_in sc_lv 8 signal 2 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_length_address0 sc_out sc_lv 4 signal 3 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_length_ce0 sc_out sc_logic 1 signal 3 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_length_we0 sc_out sc_logic 1 signal 3 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_length_d0 sc_out sc_lv 5 signal 3 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_length_q0 sc_in sc_lv 5 signal 3 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_value_address0 sc_out sc_lv 4 signal 4 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_value_ce0 sc_out sc_logic 1 signal 4 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_value_we0 sc_out sc_logic 1 signal 4 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_value_d0 sc_out sc_lv 16 signal 4 } 
	{ JpegEncoder_m_Y_DC_Huffman_Table_value_q0 sc_in sc_lv 16 signal 4 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_length_address0 sc_out sc_lv 8 signal 5 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_length_ce0 sc_out sc_logic 1 signal 5 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_length_we0 sc_out sc_logic 1 signal 5 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_length_d0 sc_out sc_lv 5 signal 5 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_length_q0 sc_in sc_lv 5 signal 5 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_length_address1 sc_out sc_lv 8 signal 5 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_length_ce1 sc_out sc_logic 1 signal 5 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_length_q1 sc_in sc_lv 5 signal 5 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_value_address0 sc_out sc_lv 8 signal 6 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_value_ce0 sc_out sc_logic 1 signal 6 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_value_we0 sc_out sc_logic 1 signal 6 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_value_d0 sc_out sc_lv 16 signal 6 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_value_q0 sc_in sc_lv 16 signal 6 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_value_address1 sc_out sc_lv 8 signal 6 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_value_ce1 sc_out sc_logic 1 signal 6 } 
	{ JpegEncoder_m_Y_AC_Huffman_Table_value_q1 sc_in sc_lv 16 signal 6 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_length_address0 sc_out sc_lv 4 signal 7 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_length_ce0 sc_out sc_logic 1 signal 7 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_length_we0 sc_out sc_logic 1 signal 7 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_length_d0 sc_out sc_lv 5 signal 7 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_length_q0 sc_in sc_lv 5 signal 7 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_value_address0 sc_out sc_lv 4 signal 8 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_value_ce0 sc_out sc_logic 1 signal 8 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_value_we0 sc_out sc_logic 1 signal 8 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_value_d0 sc_out sc_lv 16 signal 8 } 
	{ JpegEncoder_m_CbCr_DC_Huffman_Table_value_q0 sc_in sc_lv 16 signal 8 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length_address0 sc_out sc_lv 8 signal 9 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length_ce0 sc_out sc_logic 1 signal 9 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length_we0 sc_out sc_logic 1 signal 9 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length_d0 sc_out sc_lv 5 signal 9 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length_q0 sc_in sc_lv 5 signal 9 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length_address1 sc_out sc_lv 8 signal 9 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length_ce1 sc_out sc_logic 1 signal 9 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_length_q1 sc_in sc_lv 5 signal 9 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value_address0 sc_out sc_lv 8 signal 10 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value_ce0 sc_out sc_logic 1 signal 10 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value_we0 sc_out sc_logic 1 signal 10 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value_d0 sc_out sc_lv 16 signal 10 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value_q0 sc_in sc_lv 16 signal 10 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value_address1 sc_out sc_lv 8 signal 10 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value_ce1 sc_out sc_logic 1 signal 10 } 
	{ JpegEncoder_m_CbCr_AC_Huffman_Table_value_q1 sc_in sc_lv 16 signal 10 } 
	{ rgb_in_TDATA sc_in sc_lv 24 signal 11 } 
	{ rgb_in_TVALID sc_in sc_logic 1 invld 14 } 
	{ rgb_in_TREADY sc_out sc_logic 1 inacc 14 } 
	{ rgb_in_TKEEP sc_in sc_lv 3 signal 12 } 
	{ rgb_in_TSTRB sc_in sc_lv 3 signal 13 } 
	{ rgb_in_TLAST sc_in sc_lv 1 signal 14 } 
	{ jpeg_out_TDATA sc_out sc_lv 8 signal 15 } 
	{ jpeg_out_TVALID sc_out sc_logic 1 outvld 18 } 
	{ jpeg_out_TREADY sc_in sc_logic 1 outacc 18 } 
	{ jpeg_out_TKEEP sc_out sc_lv 1 signal 16 } 
	{ jpeg_out_TSTRB sc_out sc_lv 1 signal 17 } 
	{ jpeg_out_TLAST sc_out sc_lv 1 signal 18 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "JpegEncoder_buffer_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "address0" }} , 
 	{ "name": "JpegEncoder_buffer_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_buffer_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "we0" }} , 
 	{ "name": "JpegEncoder_buffer_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "d0" }} , 
 	{ "name": "JpegEncoder_buffer_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "q0" }} , 
 	{ "name": "JpegEncoder_buffer_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "address1" }} , 
 	{ "name": "JpegEncoder_buffer_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "ce1" }} , 
 	{ "name": "JpegEncoder_buffer_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "we1" }} , 
 	{ "name": "JpegEncoder_buffer_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "d1" }} , 
 	{ "name": "JpegEncoder_buffer_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "q1" }} , 
 	{ "name": "JpegEncoder_m_YTable_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "JpegEncoder_m_YTable", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_YTable_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_YTable", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_YTable_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_YTable", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_YTable_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_YTable", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_YTable_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_YTable", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_CbCrTable_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCrTable", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_CbCrTable_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCrTable", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_CbCrTable_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCrTable", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_CbCrTable_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCrTable", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_CbCrTable_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCrTable", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_length", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_length", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_length_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_length", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_length_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_length", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_length_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_length", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_value", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_value", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_value_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_value", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_value_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_value", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_Y_DC_Huffman_Table_value_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_DC_Huffman_Table_value", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_length", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_length", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_length_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_length", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_length_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_length", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_length_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_length", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_length_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_length", "role": "address1" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_length_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_length", "role": "ce1" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_length_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_length", "role": "q1" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_value", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_value", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_value_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_value", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_value_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_value", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_value_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_value", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_value_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_value", "role": "address1" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_value_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_value", "role": "ce1" }} , 
 	{ "name": "JpegEncoder_m_Y_AC_Huffman_Table_value_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_Y_AC_Huffman_Table_value", "role": "q1" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_length", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_DC_Huffman_Table_value", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "role": "address1" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "role": "ce1" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "role": "q1" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "role": "we0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "role": "d0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "role": "address1" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "role": "ce1" }} , 
 	{ "name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "role": "q1" }} , 
 	{ "name": "rgb_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb_in_V_data_V", "role": "default" }} , 
 	{ "name": "rgb_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rgb_in_V_last_V", "role": "default" }} , 
 	{ "name": "rgb_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rgb_in_V_last_V", "role": "default" }} , 
 	{ "name": "rgb_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rgb_in_V_keep_V", "role": "default" }} , 
 	{ "name": "rgb_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rgb_in_V_strb_V", "role": "default" }} , 
 	{ "name": "rgb_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb_in_V_last_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "jpeg_out_V_data_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_keep_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_strb_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "148", "165", "168", "169", "172", "189", "190", "191", "192"],
		"CDFG" : "encodeToJPG",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2540834", "EstimateLatencyMax" : "274935540",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state11", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_foword_FDC_fu_405"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_foword_FDC_fu_405"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_foword_FDC_fu_405"},
			{"State" : "ap_ST_fsm_state9", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_convertColorSpace_fu_565"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597"},
			{"State" : "ap_ST_fsm_state7", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readFromBMP_fu_617"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_bitstring_s_fu_631"},
			{"State" : "ap_ST_fsm_state17", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_bitstring_s_fu_631"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_bitstring_s_fu_631"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_jpeg_header_fu_651"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_computeHuffmanTable_fu_685"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_computeHuffmanTable_fu_697"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709"},
			{"State" : "ap_ST_fsm_state5", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721"}],
		"Port" : [
			{"Name" : "JpegEncoder_buffer", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "148", "SubInstance" : "grp_p_convertColorSpace_fu_565", "Port" : "JpegEncoder_buffer"},
					{"ID" : "168", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "JpegEncoder_buffer"}]},
			{"Name" : "JpegEncoder_m_YTable", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "JpegEncoder_m_YTable"}]},
			{"Name" : "JpegEncoder_m_CbCrTable", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "JpegEncoder_m_CbCrTable"}]},
			{"Name" : "JpegEncoder_m_Y_DC_Huffman_Table_length", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTDC_length"},
					{"ID" : "191", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709", "Port" : "huffman_table_length"}]},
			{"Name" : "JpegEncoder_m_Y_DC_Huffman_Table_value", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTDC_value"},
					{"ID" : "191", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709", "Port" : "huffman_table_value"}]},
			{"Name" : "JpegEncoder_m_Y_AC_Huffman_Table_length", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTAC_length"},
					{"ID" : "189", "SubInstance" : "grp_p_computeHuffmanTable_fu_685", "Port" : "huffman_table_length"}]},
			{"Name" : "JpegEncoder_m_Y_AC_Huffman_Table_value", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTAC_value"},
					{"ID" : "189", "SubInstance" : "grp_p_computeHuffmanTable_fu_685", "Port" : "huffman_table_value"}]},
			{"Name" : "JpegEncoder_m_CbCr_DC_Huffman_Table_length", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTDC_length"},
					{"ID" : "192", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721", "Port" : "huffman_table_length"}]},
			{"Name" : "JpegEncoder_m_CbCr_DC_Huffman_Table_value", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTDC_value"},
					{"ID" : "192", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721", "Port" : "huffman_table_value"}]},
			{"Name" : "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTAC_length"},
					{"ID" : "190", "SubInstance" : "grp_p_computeHuffmanTable_fu_697", "Port" : "huffman_table_length"}]},
			{"Name" : "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "165", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTAC_value"},
					{"ID" : "190", "SubInstance" : "grp_p_computeHuffmanTable_fu_697", "Port" : "huffman_table_value"}]},
			{"Name" : "rgb_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "rgb_in_V_data_V"}]},
			{"Name" : "rgb_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "rgb_in_V_keep_V"}]},
			{"Name" : "rgb_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "rgb_in_V_strb_V"}]},
			{"Name" : "rgb_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "168", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "rgb_in_V_last_V"}]},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "p_anonymous_namespace_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ZigZag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_anonymous_namespace_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_anonymous_namespace_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709", "Port" : "nr_codes"},
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_5"}]},
			{"Name" : "p_anonymous_namespace", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "191", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709", "Port" : "std_table"},
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace"}]},
			{"Name" : "p_anonymous_namespace_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_10"},
					{"ID" : "189", "SubInstance" : "grp_p_computeHuffmanTable_fu_685", "Port" : "nr_codes"}]},
			{"Name" : "p_anonymous_namespace_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_1"},
					{"ID" : "189", "SubInstance" : "grp_p_computeHuffmanTable_fu_685", "Port" : "std_table"}]},
			{"Name" : "p_anonymous_namespace_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_3"},
					{"ID" : "192", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721", "Port" : "nr_codes"}]},
			{"Name" : "p_anonymous_namespace_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_4"},
					{"ID" : "192", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721", "Port" : "std_table"}]},
			{"Name" : "p_anonymous_namespace_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_8"},
					{"ID" : "190", "SubInstance" : "grp_p_computeHuffmanTable_fu_697", "Port" : "nr_codes"}]},
			{"Name" : "p_anonymous_namespace_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_9"},
					{"ID" : "190", "SubInstance" : "grp_p_computeHuffmanTable_fu_697", "Port" : "std_table"}]},
			{"Name" : "JFIF0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "172", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "JFIF0"}]},
			{"Name" : "mask1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "169", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "mask1"}]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_7_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.ZigZag_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_6_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_5_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_10_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_1_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_3_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_4_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_8_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_9_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yData_0_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yData_1_U", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yData_2_U", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yData_3_U", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yData_4_U", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yData_5_U", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yData_6_U", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yData_7_U", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbData_0_U", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbData_1_U", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbData_2_U", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbData_3_U", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbData_4_U", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbData_5_U", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbData_6_U", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbData_7_U", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crData_0_U", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crData_1_U", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crData_2_U", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crData_3_U", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crData_4_U", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crData_5_U", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crData_6_U", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crData_7_U", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.yQuant_U", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.cbQuant_U", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crQuant_U", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputBitString_y_le_U", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputBitString_y_va_U", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputBitString_cr_l_U", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputBitString_cr_v_U", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputBitString_cb_l_U", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.outputBitString_cb_v_U", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405", "Parent" : "0", "Child" : ["46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147"],
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
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.mid_V_U", "Parent" : "45"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mux_832_8_1_1_U110", "Parent" : "45"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mux_832_8_1_1_U111", "Parent" : "45"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_am_addmul_1ncg_U112", "Parent" : "45"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_am_addmul_1ncg_U113", "Parent" : "45"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_ocq_U114", "Parent" : "45"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_pcA_U115", "Parent" : "45"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_mulsub_qcK_U116", "Parent" : "45"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_am_addmul_1rcU_U117", "Parent" : "45"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_mulsub_qcK_U118", "Parent" : "45"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_sc4_U119", "Parent" : "45"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_mulsub_tde_U120", "Parent" : "45"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nudo_U121", "Parent" : "45"},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nudo_U122", "Parent" : "45"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U123", "Parent" : "45"},
	{"ID" : "61", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U124", "Parent" : "45"},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U125", "Parent" : "45"},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U126", "Parent" : "45"},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U127", "Parent" : "45"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U128", "Parent" : "45"},
	{"ID" : "66", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U129", "Parent" : "45"},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U130", "Parent" : "45"},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U131", "Parent" : "45"},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U132", "Parent" : "45"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U133", "Parent" : "45"},
	{"ID" : "71", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U134", "Parent" : "45"},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U135", "Parent" : "45"},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U136", "Parent" : "45"},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U137", "Parent" : "45"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U138", "Parent" : "45"},
	{"ID" : "76", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U139", "Parent" : "45"},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U140", "Parent" : "45"},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U141", "Parent" : "45"},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U142", "Parent" : "45"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U143", "Parent" : "45"},
	{"ID" : "81", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U144", "Parent" : "45"},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U145", "Parent" : "45"},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U146", "Parent" : "45"},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U147", "Parent" : "45"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U148", "Parent" : "45"},
	{"ID" : "86", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U149", "Parent" : "45"},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U150", "Parent" : "45"},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U151", "Parent" : "45"},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U152", "Parent" : "45"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U153", "Parent" : "45"},
	{"ID" : "91", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U154", "Parent" : "45"},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U155", "Parent" : "45"},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U156", "Parent" : "45"},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U157", "Parent" : "45"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U158", "Parent" : "45"},
	{"ID" : "96", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U159", "Parent" : "45"},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U160", "Parent" : "45"},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U161", "Parent" : "45"},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U162", "Parent" : "45"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U163", "Parent" : "45"},
	{"ID" : "101", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U164", "Parent" : "45"},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U165", "Parent" : "45"},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U166", "Parent" : "45"},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U167", "Parent" : "45"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U168", "Parent" : "45"},
	{"ID" : "106", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U169", "Parent" : "45"},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U170", "Parent" : "45"},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U171", "Parent" : "45"},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U172", "Parent" : "45"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U173", "Parent" : "45"},
	{"ID" : "111", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U174", "Parent" : "45"},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U175", "Parent" : "45"},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U176", "Parent" : "45"},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U177", "Parent" : "45"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U178", "Parent" : "45"},
	{"ID" : "116", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U179", "Parent" : "45"},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U180", "Parent" : "45"},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U181", "Parent" : "45"},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U182", "Parent" : "45"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U183", "Parent" : "45"},
	{"ID" : "121", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U184", "Parent" : "45"},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U185", "Parent" : "45"},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U186", "Parent" : "45"},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U187", "Parent" : "45"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U188", "Parent" : "45"},
	{"ID" : "126", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U189", "Parent" : "45"},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U190", "Parent" : "45"},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U191", "Parent" : "45"},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U192", "Parent" : "45"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U193", "Parent" : "45"},
	{"ID" : "131", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U194", "Parent" : "45"},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U195", "Parent" : "45"},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U196", "Parent" : "45"},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U197", "Parent" : "45"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U198", "Parent" : "45"},
	{"ID" : "136", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U199", "Parent" : "45"},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U200", "Parent" : "45"},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U201", "Parent" : "45"},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U202", "Parent" : "45"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U203", "Parent" : "45"},
	{"ID" : "141", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U204", "Parent" : "45"},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U205", "Parent" : "45"},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U206", "Parent" : "45"},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U207", "Parent" : "45"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U208", "Parent" : "45"},
	{"ID" : "146", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U209", "Parent" : "45"},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U210", "Parent" : "45"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565", "Parent" : "0", "Child" : ["149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164"],
		"CDFG" : "p_convertColorSpace",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "114", "EstimateLatencyMax" : "114",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "JpegEncoder_buffer", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "xPos", "Type" : "None", "Direction" : "I"},
			{"Name" : "yData_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "yData_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "cbData_7", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_0", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_4", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_5", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_6", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "crData_7", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_kbM_U65", "Parent" : "148"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U66", "Parent" : "148"},
	{"ID" : "151", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U67", "Parent" : "148"},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U68", "Parent" : "148"},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U69", "Parent" : "148"},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U70", "Parent" : "148"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U71", "Parent" : "148"},
	{"ID" : "156", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U72", "Parent" : "148"},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U73", "Parent" : "148"},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U74", "Parent" : "148"},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U75", "Parent" : "148"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U76", "Parent" : "148"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U77", "Parent" : "148"},
	{"ID" : "162", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U78", "Parent" : "148"},
	{"ID" : "163", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U79", "Parent" : "148"},
	{"ID" : "164", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U80", "Parent" : "148"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_doHuffmanEncoding_fu_597", "Parent" : "0", "Child" : ["166", "167"],
		"CDFG" : "p_doHuffmanEncoding",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "10", "EstimateLatencyMax" : "14425",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "DU", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "prevDC_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "HTDC_length", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "HTDC_value", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "HTAC_length", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "HTAC_value", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "outputBitString_length", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "outputBitString_value", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "166", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_doHuffmanEncoding_fu_597.jpeg2_shl_32ns_32CeG_U286", "Parent" : "165"},
	{"ID" : "167", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_doHuffmanEncoding_fu_597.jpeg2_shl_32ns_32DeQ_U287", "Parent" : "165"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readFromBMP_fu_617", "Parent" : "0",
		"CDFG" : "readFromBMP",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "8321", "EstimateLatencyMax" : "8321",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "JpegEncoder_buffer", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "rgb_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "rgb_in_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "rgb_in_V_keep_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rgb_in_V_strb_V", "Type" : "Axis", "Direction" : "I"},
			{"Name" : "rgb_in_V_last_V", "Type" : "Axis", "Direction" : "I"}]},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_bitstring_s_fu_631", "Parent" : "0", "Child" : ["170", "171"],
		"CDFG" : "p_write_bitstring_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "13675",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "JpegEncoder_outhebyte_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "bs_length", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "bs_value", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "counts", "Type" : "None", "Direction" : "I"},
			{"Name" : "newByte_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "newBytePos_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "171", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "mask1", "Type" : "Memory", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_p_write_byte_s_fu_193", "SubBlockPort" : ["jpeg_out_TDATA_blk_n"]}]},
	{"ID" : "170", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_bitstring_s_fu_631.mask1_U", "Parent" : "169"},
	{"ID" : "171", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_bitstring_s_fu_631.grp_p_write_byte_s_fu_193", "Parent" : "169",
		"CDFG" : "p_write_byte_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "JpegEncoder_outhebyte_last_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651", "Parent" : "0", "Child" : ["173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "187", "188"],
		"CDFG" : "p_write_jpeg_header",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1199", "EstimateLatencyMax" : "1199",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state60", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_162bytes_s_fu_98"},
			{"State" : "ap_ST_fsm_state70", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_162bytes_s_fu_98"},
			{"State" : "ap_ST_fsm_state24", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_64bytes_s_fu_113"},
			{"State" : "ap_ST_fsm_state27", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_64bytes_s_fu_113"},
			{"State" : "ap_ST_fsm_state53", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_16bytes_s_fu_128"},
			{"State" : "ap_ST_fsm_state58", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_16bytes_s_fu_128"},
			{"State" : "ap_ST_fsm_state63", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_16bytes_s_fu_128"},
			{"State" : "ap_ST_fsm_state68", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_16bytes_s_fu_128"},
			{"State" : "ap_ST_fsm_state55", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_12bytes_s_fu_145"},
			{"State" : "ap_ST_fsm_state65", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_12bytes_s_fu_145"},
			{"State" : "ap_ST_fsm_state8", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_5bytes_s_fu_160"},
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state4", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state6", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state13", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state15", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state19", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state21", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state29", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state31", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state34", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state36", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state48", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state50", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state72", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"},
			{"State" : "ap_ST_fsm_state74", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_p_write_word_s_fu_174"}],
		"Port" : [
			{"Name" : "JpegEncoder_m_YTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "p"}]},
			{"Name" : "JpegEncoder_m_CbCrTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "p"}]},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "181", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "185", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "183", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "187", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "182", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "184", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "181", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "185", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "183", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "187", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "182", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "184", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "181", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "185", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "183", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "187", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "182", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "184", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "188", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "181", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "185", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "183", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "187", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "182", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "184", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "JFIF0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "JFIF0"}]},
			{"Name" : "p_anonymous_namespace_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "183", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "p"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_p_write_byte_s_fu_205", "SubBlockPort" : ["jpeg_out_TDATA_blk_n"]}]},
	{"ID" : "173", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_5_U", "Parent" : "172"},
	{"ID" : "174", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_U", "Parent" : "172"},
	{"ID" : "175", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_10_U", "Parent" : "172"},
	{"ID" : "176", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_1_U", "Parent" : "172"},
	{"ID" : "177", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_3_U", "Parent" : "172"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_4_U", "Parent" : "172"},
	{"ID" : "179", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_8_U", "Parent" : "172"},
	{"ID" : "180", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_9_U", "Parent" : "172"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.grp_p_write_162bytes_s_fu_98", "Parent" : "172",
		"CDFG" : "p_write_162bytes_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "325", "EstimateLatencyMax" : "325",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.grp_p_write_64bytes_s_fu_113", "Parent" : "172",
		"CDFG" : "p_write_64bytes_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "129", "EstimateLatencyMax" : "129",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "183", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.grp_p_write_16bytes_s_fu_128", "Parent" : "172",
		"CDFG" : "p_write_16bytes_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "33", "EstimateLatencyMax" : "33",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "184", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.grp_p_write_12bytes_s_fu_145", "Parent" : "172",
		"CDFG" : "p_write_12bytes_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "25", "EstimateLatencyMax" : "25",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "p", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.grp_p_write_5bytes_s_fu_160", "Parent" : "172", "Child" : ["186"],
		"CDFG" : "p_write_5bytes_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "11",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "JFIF0", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.grp_p_write_5bytes_s_fu_160.JFIF0_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.grp_p_write_word_s_fu_174", "Parent" : "172",
		"CDFG" : "p_write_word_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "inf", "Type" : "None", "Direction" : "I"},
			{"Name" : "sec", "Type" : "None", "Direction" : "I"},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "188", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_jpeg_header_fu_651.grp_p_write_byte_s_fu_205", "Parent" : "172",
		"CDFG" : "p_write_byte_s",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "0", "EstimateLatencyMin" : "0", "EstimateLatencyMax" : "0",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "JpegEncoder_outhebyte_last_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "value_r", "Type" : "None", "Direction" : "I"},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O"},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_computeHuffmanTable_fu_685", "Parent" : "0",
		"CDFG" : "p_computeHuffmanTable",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "10305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "nr_codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "std_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "huffman_table_length", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "huffman_table_value", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_computeHuffmanTable_fu_697", "Parent" : "0",
		"CDFG" : "p_computeHuffmanTable",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "10305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "nr_codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "std_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "huffman_table_length", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "huffman_table_value", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_computeHuffmanTable_1_fu_709", "Parent" : "0",
		"CDFG" : "p_computeHuffmanTable_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "10305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "nr_codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "std_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "huffman_table_length", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "huffman_table_value", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_computeHuffmanTable_1_fu_721", "Parent" : "0",
		"CDFG" : "p_computeHuffmanTable_1",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "65", "EstimateLatencyMax" : "10305",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "nr_codes", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "std_table", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "huffman_table_length", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "huffman_table_value", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	encodeToJPG {
		JpegEncoder_buffer {Type IO LastRead 15 FirstWrite -1}
		JpegEncoder_m_YTable {Type IO LastRead 1 FirstWrite -1}
		JpegEncoder_m_CbCrTable {Type IO LastRead 1 FirstWrite -1}
		JpegEncoder_m_Y_DC_Huffman_Table_length {Type IO LastRead 5 FirstWrite -1}
		JpegEncoder_m_Y_DC_Huffman_Table_value {Type IO LastRead 5 FirstWrite -1}
		JpegEncoder_m_Y_AC_Huffman_Table_length {Type IO LastRead 142 FirstWrite -1}
		JpegEncoder_m_Y_AC_Huffman_Table_value {Type IO LastRead 142 FirstWrite -1}
		JpegEncoder_m_CbCr_DC_Huffman_Table_length {Type IO LastRead 5 FirstWrite -1}
		JpegEncoder_m_CbCr_DC_Huffman_Table_value {Type IO LastRead 5 FirstWrite -1}
		JpegEncoder_m_CbCr_AC_Huffman_Table_length {Type IO LastRead 142 FirstWrite -1}
		JpegEncoder_m_CbCr_AC_Huffman_Table_value {Type IO LastRead 142 FirstWrite -1}
		rgb_in_V_data_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_keep_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_strb_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_last_V {Type I LastRead 12 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}
		p_anonymous_namespace_7 {Type I LastRead -1 FirstWrite -1}
		ZigZag {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_6 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_5 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_10 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_1 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_3 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_4 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_8 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_9 {Type I LastRead -1 FirstWrite -1}
		JFIF0 {Type I LastRead -1 FirstWrite -1}
		mask1 {Type I LastRead -1 FirstWrite -1}}
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
		fdc_data {Type O LastRead -1 FirstWrite 11}}
	p_convertColorSpace {
		JpegEncoder_buffer {Type I LastRead 15 FirstWrite -1}
		xPos {Type I LastRead 0 FirstWrite -1}
		yData_0 {Type O LastRead -1 FirstWrite 15}
		yData_1 {Type O LastRead -1 FirstWrite 15}
		yData_2 {Type O LastRead -1 FirstWrite 15}
		yData_3 {Type O LastRead -1 FirstWrite 15}
		yData_4 {Type O LastRead -1 FirstWrite 15}
		yData_5 {Type O LastRead -1 FirstWrite 15}
		yData_6 {Type O LastRead -1 FirstWrite 15}
		yData_7 {Type O LastRead -1 FirstWrite 15}
		cbData_0 {Type O LastRead -1 FirstWrite 18}
		cbData_1 {Type O LastRead -1 FirstWrite 18}
		cbData_2 {Type O LastRead -1 FirstWrite 18}
		cbData_3 {Type O LastRead -1 FirstWrite 18}
		cbData_4 {Type O LastRead -1 FirstWrite 18}
		cbData_5 {Type O LastRead -1 FirstWrite 18}
		cbData_6 {Type O LastRead -1 FirstWrite 18}
		cbData_7 {Type O LastRead -1 FirstWrite 18}
		crData_0 {Type O LastRead -1 FirstWrite 18}
		crData_1 {Type O LastRead -1 FirstWrite 18}
		crData_2 {Type O LastRead -1 FirstWrite 18}
		crData_3 {Type O LastRead -1 FirstWrite 18}
		crData_4 {Type O LastRead -1 FirstWrite 18}
		crData_5 {Type O LastRead -1 FirstWrite 18}
		crData_6 {Type O LastRead -1 FirstWrite 18}
		crData_7 {Type O LastRead -1 FirstWrite 18}}
	p_doHuffmanEncoding {
		DU {Type I LastRead 137 FirstWrite -1}
		prevDC_read {Type I LastRead 2 FirstWrite -1}
		HTDC_length {Type I LastRead 5 FirstWrite -1}
		HTDC_value {Type I LastRead 5 FirstWrite -1}
		HTAC_length {Type I LastRead 142 FirstWrite -1}
		HTAC_value {Type I LastRead 142 FirstWrite -1}
		outputBitString_length {Type O LastRead -1 FirstWrite 4}
		outputBitString_value {Type O LastRead -1 FirstWrite 4}}
	readFromBMP {
		JpegEncoder_buffer {Type O LastRead -1 FirstWrite 2}
		rgb_in_V_data_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_keep_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_strb_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_last_V {Type I LastRead 12 FirstWrite -1}}
	p_write_bitstring_s {
		JpegEncoder_outhebyte_data_V_read {Type I LastRead 0 FirstWrite -1}
		bs_length {Type I LastRead 1 FirstWrite -1}
		bs_value {Type I LastRead 1 FirstWrite -1}
		counts {Type I LastRead 0 FirstWrite -1}
		newByte_read {Type I LastRead 0 FirstWrite -1}
		newBytePos_read {Type I LastRead 0 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}
		mask1 {Type I LastRead -1 FirstWrite -1}}
	p_write_byte_s {
		JpegEncoder_outhebyte_last_V_read {Type I LastRead 0 FirstWrite -1}
		value_r {Type I LastRead 0 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}}
	p_write_jpeg_header {
		JpegEncoder_m_YTable {Type I LastRead 1 FirstWrite -1}
		JpegEncoder_m_CbCrTable {Type I LastRead 1 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}
		JFIF0 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_5 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_10 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_1 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_3 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_4 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_8 {Type I LastRead -1 FirstWrite -1}
		p_anonymous_namespace_9 {Type I LastRead -1 FirstWrite -1}}
	p_write_162bytes_s {
		p {Type I LastRead 1 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 2}}
	p_write_64bytes_s {
		p {Type I LastRead 1 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 2}}
	p_write_16bytes_s {
		p {Type I LastRead 1 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 2}}
	p_write_12bytes_s {
		p {Type I LastRead 1 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 2}}
	p_write_5bytes_s {
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		JFIF0 {Type I LastRead -1 FirstWrite -1}}
	p_write_word_s {
		inf {Type I LastRead 0 FirstWrite -1}
		sec {Type I LastRead 1 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}}
	p_write_byte_s {
		JpegEncoder_outhebyte_last_V_read {Type I LastRead 0 FirstWrite -1}
		value_r {Type I LastRead 0 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}}
	p_computeHuffmanTable {
		nr_codes {Type I LastRead 2 FirstWrite -1}
		std_table {Type I LastRead 4 FirstWrite -1}
		huffman_table_length {Type O LastRead -1 FirstWrite 6}
		huffman_table_value {Type O LastRead -1 FirstWrite 6}}
	p_computeHuffmanTable {
		nr_codes {Type I LastRead 2 FirstWrite -1}
		std_table {Type I LastRead 4 FirstWrite -1}
		huffman_table_length {Type O LastRead -1 FirstWrite 6}
		huffman_table_value {Type O LastRead -1 FirstWrite 6}}
	p_computeHuffmanTable_1 {
		nr_codes {Type I LastRead 2 FirstWrite -1}
		std_table {Type I LastRead 4 FirstWrite -1}
		huffman_table_length {Type O LastRead -1 FirstWrite 6}
		huffman_table_value {Type O LastRead -1 FirstWrite 6}}
	p_computeHuffmanTable_1 {
		nr_codes {Type I LastRead 2 FirstWrite -1}
		std_table {Type I LastRead 4 FirstWrite -1}
		huffman_table_length {Type O LastRead -1 FirstWrite 6}
		huffman_table_value {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2540834", "Max" : "274935540"}
	, {"Name" : "Interval", "Min" : "2540834", "Max" : "274935540"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	JpegEncoder_buffer { ap_memory {  { JpegEncoder_buffer_address0 mem_address 1 14 }  { JpegEncoder_buffer_ce0 mem_ce 1 1 }  { JpegEncoder_buffer_we0 mem_we 1 1 }  { JpegEncoder_buffer_d0 mem_din 1 8 }  { JpegEncoder_buffer_q0 mem_dout 0 8 }  { JpegEncoder_buffer_address1 MemPortADDR2 1 14 }  { JpegEncoder_buffer_ce1 MemPortCE2 1 1 }  { JpegEncoder_buffer_we1 MemPortWE2 1 1 }  { JpegEncoder_buffer_d1 MemPortDIN2 1 8 }  { JpegEncoder_buffer_q1 MemPortDOUT2 0 8 } } }
	JpegEncoder_m_YTable { ap_memory {  { JpegEncoder_m_YTable_address0 mem_address 1 6 }  { JpegEncoder_m_YTable_ce0 mem_ce 1 1 }  { JpegEncoder_m_YTable_we0 mem_we 1 1 }  { JpegEncoder_m_YTable_d0 mem_din 1 8 }  { JpegEncoder_m_YTable_q0 mem_dout 0 8 } } }
	JpegEncoder_m_CbCrTable { ap_memory {  { JpegEncoder_m_CbCrTable_address0 mem_address 1 6 }  { JpegEncoder_m_CbCrTable_ce0 mem_ce 1 1 }  { JpegEncoder_m_CbCrTable_we0 mem_we 1 1 }  { JpegEncoder_m_CbCrTable_d0 mem_din 1 8 }  { JpegEncoder_m_CbCrTable_q0 mem_dout 0 8 } } }
	JpegEncoder_m_Y_DC_Huffman_Table_length { ap_memory {  { JpegEncoder_m_Y_DC_Huffman_Table_length_address0 mem_address 1 4 }  { JpegEncoder_m_Y_DC_Huffman_Table_length_ce0 mem_ce 1 1 }  { JpegEncoder_m_Y_DC_Huffman_Table_length_we0 mem_we 1 1 }  { JpegEncoder_m_Y_DC_Huffman_Table_length_d0 mem_din 1 5 }  { JpegEncoder_m_Y_DC_Huffman_Table_length_q0 mem_dout 0 5 } } }
	JpegEncoder_m_Y_DC_Huffman_Table_value { ap_memory {  { JpegEncoder_m_Y_DC_Huffman_Table_value_address0 mem_address 1 4 }  { JpegEncoder_m_Y_DC_Huffman_Table_value_ce0 mem_ce 1 1 }  { JpegEncoder_m_Y_DC_Huffman_Table_value_we0 mem_we 1 1 }  { JpegEncoder_m_Y_DC_Huffman_Table_value_d0 mem_din 1 16 }  { JpegEncoder_m_Y_DC_Huffman_Table_value_q0 mem_dout 0 16 } } }
	JpegEncoder_m_Y_AC_Huffman_Table_length { ap_memory {  { JpegEncoder_m_Y_AC_Huffman_Table_length_address0 mem_address 1 8 }  { JpegEncoder_m_Y_AC_Huffman_Table_length_ce0 mem_ce 1 1 }  { JpegEncoder_m_Y_AC_Huffman_Table_length_we0 mem_we 1 1 }  { JpegEncoder_m_Y_AC_Huffman_Table_length_d0 mem_din 1 5 }  { JpegEncoder_m_Y_AC_Huffman_Table_length_q0 mem_dout 0 5 }  { JpegEncoder_m_Y_AC_Huffman_Table_length_address1 MemPortADDR2 1 8 }  { JpegEncoder_m_Y_AC_Huffman_Table_length_ce1 MemPortCE2 1 1 }  { JpegEncoder_m_Y_AC_Huffman_Table_length_q1 MemPortDOUT2 0 5 } } }
	JpegEncoder_m_Y_AC_Huffman_Table_value { ap_memory {  { JpegEncoder_m_Y_AC_Huffman_Table_value_address0 mem_address 1 8 }  { JpegEncoder_m_Y_AC_Huffman_Table_value_ce0 mem_ce 1 1 }  { JpegEncoder_m_Y_AC_Huffman_Table_value_we0 mem_we 1 1 }  { JpegEncoder_m_Y_AC_Huffman_Table_value_d0 mem_din 1 16 }  { JpegEncoder_m_Y_AC_Huffman_Table_value_q0 mem_dout 0 16 }  { JpegEncoder_m_Y_AC_Huffman_Table_value_address1 MemPortADDR2 1 8 }  { JpegEncoder_m_Y_AC_Huffman_Table_value_ce1 MemPortCE2 1 1 }  { JpegEncoder_m_Y_AC_Huffman_Table_value_q1 MemPortDOUT2 0 16 } } }
	JpegEncoder_m_CbCr_DC_Huffman_Table_length { ap_memory {  { JpegEncoder_m_CbCr_DC_Huffman_Table_length_address0 mem_address 1 4 }  { JpegEncoder_m_CbCr_DC_Huffman_Table_length_ce0 mem_ce 1 1 }  { JpegEncoder_m_CbCr_DC_Huffman_Table_length_we0 mem_we 1 1 }  { JpegEncoder_m_CbCr_DC_Huffman_Table_length_d0 mem_din 1 5 }  { JpegEncoder_m_CbCr_DC_Huffman_Table_length_q0 mem_dout 0 5 } } }
	JpegEncoder_m_CbCr_DC_Huffman_Table_value { ap_memory {  { JpegEncoder_m_CbCr_DC_Huffman_Table_value_address0 mem_address 1 4 }  { JpegEncoder_m_CbCr_DC_Huffman_Table_value_ce0 mem_ce 1 1 }  { JpegEncoder_m_CbCr_DC_Huffman_Table_value_we0 mem_we 1 1 }  { JpegEncoder_m_CbCr_DC_Huffman_Table_value_d0 mem_din 1 16 }  { JpegEncoder_m_CbCr_DC_Huffman_Table_value_q0 mem_dout 0 16 } } }
	JpegEncoder_m_CbCr_AC_Huffman_Table_length { ap_memory {  { JpegEncoder_m_CbCr_AC_Huffman_Table_length_address0 mem_address 1 8 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_length_ce0 mem_ce 1 1 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_length_we0 mem_we 1 1 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_length_d0 mem_din 1 5 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_length_q0 mem_dout 0 5 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_length_address1 MemPortADDR2 1 8 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_length_ce1 MemPortCE2 1 1 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_length_q1 MemPortDOUT2 0 5 } } }
	JpegEncoder_m_CbCr_AC_Huffman_Table_value { ap_memory {  { JpegEncoder_m_CbCr_AC_Huffman_Table_value_address0 mem_address 1 8 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_value_ce0 mem_ce 1 1 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_value_we0 mem_we 1 1 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_value_d0 mem_din 1 16 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_value_q0 mem_dout 0 16 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_value_address1 MemPortADDR2 1 8 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_value_ce1 MemPortCE2 1 1 }  { JpegEncoder_m_CbCr_AC_Huffman_Table_value_q1 MemPortDOUT2 0 16 } } }
	rgb_in_V_data_V { axis {  { rgb_in_TDATA in_data 0 24 } } }
	rgb_in_V_keep_V { axis {  { rgb_in_TKEEP in_data 0 3 } } }
	rgb_in_V_strb_V { axis {  { rgb_in_TSTRB in_data 0 3 } } }
	rgb_in_V_last_V { axis {  { rgb_in_TVALID in_vld 0 1 }  { rgb_in_TREADY in_acc 1 1 }  { rgb_in_TLAST in_data 0 1 } } }
	jpeg_out_V_data_V { axis {  { jpeg_out_TDATA out_data 1 8 } } }
	jpeg_out_V_keep_V { axis {  { jpeg_out_TKEEP out_data 1 1 } } }
	jpeg_out_V_strb_V { axis {  { jpeg_out_TSTRB out_data 1 1 } } }
	jpeg_out_V_last_V { axis {  { jpeg_out_TVALID out_vld 1 1 }  { jpeg_out_TREADY out_acc 0 1 }  { jpeg_out_TLAST out_data 1 1 } } }
}
