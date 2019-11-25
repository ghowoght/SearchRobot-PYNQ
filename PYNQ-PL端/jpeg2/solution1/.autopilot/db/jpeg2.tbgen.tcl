set moduleName jpeg2
set isTopModule 1
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
set C_modelName {jpeg2}
set C_modelType { void 0 }
set C_modelArgList {
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
	{ "Name" : "rgb_in_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY", "bitSlice":[{"low":0,"up":23,"cElement": [{"cName": "rgb_in.V.data.V","cData": "int24","bit_use": { "low": 0,"up": 23},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rgb_in_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "rgb_in.V.keep.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rgb_in_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY", "bitSlice":[{"low":0,"up":2,"cElement": [{"cName": "rgb_in.V.strb.V","cData": "uint3","bit_use": { "low": 0,"up": 2},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "rgb_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "rgb_in.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "jpeg_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":7,"cElement": [{"cName": "jpeg_out.V.data.V","cData": "int8","bit_use": { "low": 0,"up": 7},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "jpeg_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "jpeg_out.V.keep.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "jpeg_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "jpeg_out.V.strb.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} , 
 	{ "Name" : "jpeg_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY", "bitSlice":[{"low":0,"up":0,"cElement": [{"cName": "jpeg_out.V.last.V","cData": "uint1","bit_use": { "low": 0,"up": 0},"cArray": [{"low" : 0,"up" : 0,"step" : 1}]}]}]} ]}
# RTL Port declarations: 
set portNum 32
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst_n sc_in sc_logic 1 reset -1 active_low_sync } 
	{ rgb_in_TDATA sc_in sc_lv 24 signal 0 } 
	{ rgb_in_TVALID sc_in sc_logic 1 invld 3 } 
	{ rgb_in_TREADY sc_out sc_logic 1 inacc 3 } 
	{ rgb_in_TKEEP sc_in sc_lv 3 signal 1 } 
	{ rgb_in_TSTRB sc_in sc_lv 3 signal 2 } 
	{ rgb_in_TLAST sc_in sc_lv 1 signal 3 } 
	{ jpeg_out_TDATA sc_out sc_lv 8 signal 4 } 
	{ jpeg_out_TVALID sc_out sc_logic 1 outvld 7 } 
	{ jpeg_out_TREADY sc_in sc_logic 1 outacc 7 } 
	{ jpeg_out_TKEEP sc_out sc_lv 1 signal 5 } 
	{ jpeg_out_TSTRB sc_out sc_lv 1 signal 6 } 
	{ jpeg_out_TLAST sc_out sc_lv 1 signal 7 } 
	{ s_axi_AXILiteS_AWVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_AWADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_WVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_WDATA sc_in sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_WSTRB sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_ARVALID sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARREADY sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_ARADDR sc_in sc_lv 4 signal -1 } 
	{ s_axi_AXILiteS_RVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_RDATA sc_out sc_lv 32 signal -1 } 
	{ s_axi_AXILiteS_RRESP sc_out sc_lv 2 signal -1 } 
	{ s_axi_AXILiteS_BVALID sc_out sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BREADY sc_in sc_logic 1 signal -1 } 
	{ s_axi_AXILiteS_BRESP sc_out sc_lv 2 signal -1 } 
	{ interrupt sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "s_axi_AXILiteS_AWADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWADDR" },"address":[{"name":"jpeg2","role":"start","value":"0","valid_bit":"0"},{"name":"jpeg2","role":"continue","value":"0","valid_bit":"4"},{"name":"jpeg2","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_AWVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWVALID" } },
	{ "name": "s_axi_AXILiteS_AWREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "AWREADY" } },
	{ "name": "s_axi_AXILiteS_WVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WVALID" } },
	{ "name": "s_axi_AXILiteS_WREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WREADY" } },
	{ "name": "s_axi_AXILiteS_WDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WDATA" } },
	{ "name": "s_axi_AXILiteS_WSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "WSTRB" } },
	{ "name": "s_axi_AXILiteS_ARADDR", "direction": "in", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARADDR" },"address":[{"name":"jpeg2","role":"start","value":"0","valid_bit":"0"},{"name":"jpeg2","role":"done","value":"0","valid_bit":"1"},{"name":"jpeg2","role":"idle","value":"0","valid_bit":"2"},{"name":"jpeg2","role":"ready","value":"0","valid_bit":"3"},{"name":"jpeg2","role":"auto_start","value":"0","valid_bit":"7"}] },
	{ "name": "s_axi_AXILiteS_ARVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARVALID" } },
	{ "name": "s_axi_AXILiteS_ARREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "ARREADY" } },
	{ "name": "s_axi_AXILiteS_RVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RVALID" } },
	{ "name": "s_axi_AXILiteS_RREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RREADY" } },
	{ "name": "s_axi_AXILiteS_RDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RDATA" } },
	{ "name": "s_axi_AXILiteS_RRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "RRESP" } },
	{ "name": "s_axi_AXILiteS_BVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BVALID" } },
	{ "name": "s_axi_AXILiteS_BREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BREADY" } },
	{ "name": "s_axi_AXILiteS_BRESP", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "AXILiteS", "role": "BRESP" } },
	{ "name": "interrupt", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "AXILiteS", "role": "interrupt" } }, 
 	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst_n", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst_n", "role": "default" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "206"],
		"CDFG" : "jpeg2",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "2540837", "EstimateLatencyMax" : "274935543",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_encodeToJPG_fu_116"}],
		"Port" : [
			{"Name" : "rgb_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "rgb_in_V_data_V"}]},
			{"Name" : "rgb_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "rgb_in_V_keep_V"}]},
			{"Name" : "rgb_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "rgb_in_V_strb_V"}]},
			{"Name" : "rgb_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "rgb_in_V_last_V"}]},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_p_write_byte_s_fu_184", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_p_write_byte_s_fu_184", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_p_write_byte_s_fu_184", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "206", "SubInstance" : "grp_p_write_byte_s_fu_184", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "p_anonymous_namespace_7", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_7"}]},
			{"Name" : "ZigZag", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "ZigZag"}]},
			{"Name" : "p_anonymous_namespace_6", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_6"}]},
			{"Name" : "p_anonymous_namespace_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_5"}]},
			{"Name" : "p_anonymous_namespace", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace"}]},
			{"Name" : "p_anonymous_namespace_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_10"}]},
			{"Name" : "p_anonymous_namespace_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_1"}]},
			{"Name" : "p_anonymous_namespace_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_3"}]},
			{"Name" : "p_anonymous_namespace_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_4"}]},
			{"Name" : "p_anonymous_namespace_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_8"}]},
			{"Name" : "p_anonymous_namespace_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "p_anonymous_namespace_9"}]},
			{"Name" : "JFIF0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "JFIF0"}]},
			{"Name" : "mask1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_encodeToJPG_fu_116", "Port" : "mask1"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_p_write_byte_s_fu_184", "SubBlockPort" : ["jpeg_out_TDATA_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_AXILiteS_s_axi_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_buffer_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_YTable_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_CbCrTable_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_Y_DC_Huffman_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_Y_DC_Huffman_1_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_Y_AC_Huffman_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_Y_AC_Huffman_1_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_CbCr_DC_Huff_U", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_CbCr_DC_Huff_1_U", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_CbCr_AC_Huff_U", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg1_m_CbCr_AC_Huff_1_U", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116", "Parent" : "0", "Child" : ["14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "161", "178", "181", "182", "185", "202", "203", "204", "205"],
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
					{"ID" : "161", "SubInstance" : "grp_p_convertColorSpace_fu_565", "Port" : "JpegEncoder_buffer"},
					{"ID" : "181", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "JpegEncoder_buffer"}]},
			{"Name" : "JpegEncoder_m_YTable", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "JpegEncoder_m_YTable"}]},
			{"Name" : "JpegEncoder_m_CbCrTable", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "JpegEncoder_m_CbCrTable"}]},
			{"Name" : "JpegEncoder_m_Y_DC_Huffman_Table_length", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTDC_length"},
					{"ID" : "204", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709", "Port" : "huffman_table_length"}]},
			{"Name" : "JpegEncoder_m_Y_DC_Huffman_Table_value", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTDC_value"},
					{"ID" : "204", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709", "Port" : "huffman_table_value"}]},
			{"Name" : "JpegEncoder_m_Y_AC_Huffman_Table_length", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTAC_length"},
					{"ID" : "202", "SubInstance" : "grp_p_computeHuffmanTable_fu_685", "Port" : "huffman_table_length"}]},
			{"Name" : "JpegEncoder_m_Y_AC_Huffman_Table_value", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTAC_value"},
					{"ID" : "202", "SubInstance" : "grp_p_computeHuffmanTable_fu_685", "Port" : "huffman_table_value"}]},
			{"Name" : "JpegEncoder_m_CbCr_DC_Huffman_Table_length", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTDC_length"},
					{"ID" : "205", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721", "Port" : "huffman_table_length"}]},
			{"Name" : "JpegEncoder_m_CbCr_DC_Huffman_Table_value", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTDC_value"},
					{"ID" : "205", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721", "Port" : "huffman_table_value"}]},
			{"Name" : "JpegEncoder_m_CbCr_AC_Huffman_Table_length", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTAC_length"},
					{"ID" : "203", "SubInstance" : "grp_p_computeHuffmanTable_fu_697", "Port" : "huffman_table_length"}]},
			{"Name" : "JpegEncoder_m_CbCr_AC_Huffman_Table_value", "Type" : "Memory", "Direction" : "IO",
				"SubConnect" : [
					{"ID" : "178", "SubInstance" : "grp_p_doHuffmanEncoding_fu_597", "Port" : "HTAC_value"},
					{"ID" : "203", "SubInstance" : "grp_p_computeHuffmanTable_fu_697", "Port" : "huffman_table_value"}]},
			{"Name" : "rgb_in_V_data_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "rgb_in_V_data_V"}]},
			{"Name" : "rgb_in_V_keep_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "rgb_in_V_keep_V"}]},
			{"Name" : "rgb_in_V_strb_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "rgb_in_V_strb_V"}]},
			{"Name" : "rgb_in_V_last_V", "Type" : "Axis", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "181", "SubInstance" : "grp_readFromBMP_fu_617", "Port" : "rgb_in_V_last_V"}]},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "p_anonymous_namespace_7", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "ZigZag", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_anonymous_namespace_6", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "p_anonymous_namespace_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709", "Port" : "nr_codes"},
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_5"}]},
			{"Name" : "p_anonymous_namespace", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "204", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_709", "Port" : "std_table"},
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace"}]},
			{"Name" : "p_anonymous_namespace_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_10"},
					{"ID" : "202", "SubInstance" : "grp_p_computeHuffmanTable_fu_685", "Port" : "nr_codes"}]},
			{"Name" : "p_anonymous_namespace_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_1"},
					{"ID" : "202", "SubInstance" : "grp_p_computeHuffmanTable_fu_685", "Port" : "std_table"}]},
			{"Name" : "p_anonymous_namespace_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_3"},
					{"ID" : "205", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721", "Port" : "nr_codes"}]},
			{"Name" : "p_anonymous_namespace_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_4"},
					{"ID" : "205", "SubInstance" : "grp_p_computeHuffmanTable_1_fu_721", "Port" : "std_table"}]},
			{"Name" : "p_anonymous_namespace_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_8"},
					{"ID" : "203", "SubInstance" : "grp_p_computeHuffmanTable_fu_697", "Port" : "nr_codes"}]},
			{"Name" : "p_anonymous_namespace_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "p_anonymous_namespace_9"},
					{"ID" : "203", "SubInstance" : "grp_p_computeHuffmanTable_fu_697", "Port" : "std_table"}]},
			{"Name" : "JFIF0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "185", "SubInstance" : "grp_p_write_jpeg_header_fu_651", "Port" : "JFIF0"}]},
			{"Name" : "mask1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "182", "SubInstance" : "grp_p_write_bitstring_s_fu_631", "Port" : "mask1"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_7_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.ZigZag_U", "Parent" : "13"},
	{"ID" : "16", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_6_U", "Parent" : "13"},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_5_U", "Parent" : "13"},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_U", "Parent" : "13"},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_10_U", "Parent" : "13"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_1_U", "Parent" : "13"},
	{"ID" : "21", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_3_U", "Parent" : "13"},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_4_U", "Parent" : "13"},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_8_U", "Parent" : "13"},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.p_anonymous_namespace_9_U", "Parent" : "13"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yData_0_U", "Parent" : "13"},
	{"ID" : "26", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yData_1_U", "Parent" : "13"},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yData_2_U", "Parent" : "13"},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yData_3_U", "Parent" : "13"},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yData_4_U", "Parent" : "13"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yData_5_U", "Parent" : "13"},
	{"ID" : "31", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yData_6_U", "Parent" : "13"},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yData_7_U", "Parent" : "13"},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbData_0_U", "Parent" : "13"},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbData_1_U", "Parent" : "13"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbData_2_U", "Parent" : "13"},
	{"ID" : "36", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbData_3_U", "Parent" : "13"},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbData_4_U", "Parent" : "13"},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbData_5_U", "Parent" : "13"},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbData_6_U", "Parent" : "13"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbData_7_U", "Parent" : "13"},
	{"ID" : "41", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crData_0_U", "Parent" : "13"},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crData_1_U", "Parent" : "13"},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crData_2_U", "Parent" : "13"},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crData_3_U", "Parent" : "13"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crData_4_U", "Parent" : "13"},
	{"ID" : "46", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crData_5_U", "Parent" : "13"},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crData_6_U", "Parent" : "13"},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crData_7_U", "Parent" : "13"},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.yQuant_U", "Parent" : "13"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.cbQuant_U", "Parent" : "13"},
	{"ID" : "51", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.crQuant_U", "Parent" : "13"},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.outputBitString_y_le_U", "Parent" : "13"},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.outputBitString_y_va_U", "Parent" : "13"},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.outputBitString_cr_l_U", "Parent" : "13"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.outputBitString_cr_v_U", "Parent" : "13"},
	{"ID" : "56", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.outputBitString_cb_l_U", "Parent" : "13"},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.outputBitString_cb_v_U", "Parent" : "13"},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405", "Parent" : "13", "Child" : ["59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160"],
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
	{"ID" : "59", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.mid_V_U", "Parent" : "58"},
	{"ID" : "60", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mux_832_8_1_1_U110", "Parent" : "58"},
	{"ID" : "61", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mux_832_8_1_1_U111", "Parent" : "58"},
	{"ID" : "62", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_am_addmul_1ncg_U112", "Parent" : "58"},
	{"ID" : "63", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_am_addmul_1ncg_U113", "Parent" : "58"},
	{"ID" : "64", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_ocq_U114", "Parent" : "58"},
	{"ID" : "65", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_pcA_U115", "Parent" : "58"},
	{"ID" : "66", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_mulsub_qcK_U116", "Parent" : "58"},
	{"ID" : "67", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_am_addmul_1rcU_U117", "Parent" : "58"},
	{"ID" : "68", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_mulsub_qcK_U118", "Parent" : "58"},
	{"ID" : "69", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_sc4_U119", "Parent" : "58"},
	{"ID" : "70", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_mulsub_tde_U120", "Parent" : "58"},
	{"ID" : "71", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nudo_U121", "Parent" : "58"},
	{"ID" : "72", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nudo_U122", "Parent" : "58"},
	{"ID" : "73", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U123", "Parent" : "58"},
	{"ID" : "74", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U124", "Parent" : "58"},
	{"ID" : "75", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U125", "Parent" : "58"},
	{"ID" : "76", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U126", "Parent" : "58"},
	{"ID" : "77", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U127", "Parent" : "58"},
	{"ID" : "78", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U128", "Parent" : "58"},
	{"ID" : "79", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U129", "Parent" : "58"},
	{"ID" : "80", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U130", "Parent" : "58"},
	{"ID" : "81", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U131", "Parent" : "58"},
	{"ID" : "82", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U132", "Parent" : "58"},
	{"ID" : "83", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U133", "Parent" : "58"},
	{"ID" : "84", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U134", "Parent" : "58"},
	{"ID" : "85", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U135", "Parent" : "58"},
	{"ID" : "86", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U136", "Parent" : "58"},
	{"ID" : "87", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U137", "Parent" : "58"},
	{"ID" : "88", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U138", "Parent" : "58"},
	{"ID" : "89", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U139", "Parent" : "58"},
	{"ID" : "90", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U140", "Parent" : "58"},
	{"ID" : "91", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U141", "Parent" : "58"},
	{"ID" : "92", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U142", "Parent" : "58"},
	{"ID" : "93", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U143", "Parent" : "58"},
	{"ID" : "94", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U144", "Parent" : "58"},
	{"ID" : "95", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U145", "Parent" : "58"},
	{"ID" : "96", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U146", "Parent" : "58"},
	{"ID" : "97", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U147", "Parent" : "58"},
	{"ID" : "98", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U148", "Parent" : "58"},
	{"ID" : "99", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U149", "Parent" : "58"},
	{"ID" : "100", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U150", "Parent" : "58"},
	{"ID" : "101", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U151", "Parent" : "58"},
	{"ID" : "102", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U152", "Parent" : "58"},
	{"ID" : "103", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U153", "Parent" : "58"},
	{"ID" : "104", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U154", "Parent" : "58"},
	{"ID" : "105", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U155", "Parent" : "58"},
	{"ID" : "106", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U156", "Parent" : "58"},
	{"ID" : "107", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U157", "Parent" : "58"},
	{"ID" : "108", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U158", "Parent" : "58"},
	{"ID" : "109", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U159", "Parent" : "58"},
	{"ID" : "110", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U160", "Parent" : "58"},
	{"ID" : "111", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U161", "Parent" : "58"},
	{"ID" : "112", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U162", "Parent" : "58"},
	{"ID" : "113", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U163", "Parent" : "58"},
	{"ID" : "114", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U164", "Parent" : "58"},
	{"ID" : "115", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U165", "Parent" : "58"},
	{"ID" : "116", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U166", "Parent" : "58"},
	{"ID" : "117", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U167", "Parent" : "58"},
	{"ID" : "118", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U168", "Parent" : "58"},
	{"ID" : "119", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U169", "Parent" : "58"},
	{"ID" : "120", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U170", "Parent" : "58"},
	{"ID" : "121", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U171", "Parent" : "58"},
	{"ID" : "122", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U172", "Parent" : "58"},
	{"ID" : "123", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U173", "Parent" : "58"},
	{"ID" : "124", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U174", "Parent" : "58"},
	{"ID" : "125", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U175", "Parent" : "58"},
	{"ID" : "126", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U176", "Parent" : "58"},
	{"ID" : "127", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U177", "Parent" : "58"},
	{"ID" : "128", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U178", "Parent" : "58"},
	{"ID" : "129", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U179", "Parent" : "58"},
	{"ID" : "130", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U180", "Parent" : "58"},
	{"ID" : "131", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U181", "Parent" : "58"},
	{"ID" : "132", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U182", "Parent" : "58"},
	{"ID" : "133", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U183", "Parent" : "58"},
	{"ID" : "134", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U184", "Parent" : "58"},
	{"ID" : "135", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U185", "Parent" : "58"},
	{"ID" : "136", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U186", "Parent" : "58"},
	{"ID" : "137", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U187", "Parent" : "58"},
	{"ID" : "138", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U188", "Parent" : "58"},
	{"ID" : "139", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U189", "Parent" : "58"},
	{"ID" : "140", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U190", "Parent" : "58"},
	{"ID" : "141", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U191", "Parent" : "58"},
	{"ID" : "142", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U192", "Parent" : "58"},
	{"ID" : "143", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U193", "Parent" : "58"},
	{"ID" : "144", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U194", "Parent" : "58"},
	{"ID" : "145", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U195", "Parent" : "58"},
	{"ID" : "146", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U196", "Parent" : "58"},
	{"ID" : "147", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U197", "Parent" : "58"},
	{"ID" : "148", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U198", "Parent" : "58"},
	{"ID" : "149", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nvdy_U199", "Parent" : "58"},
	{"ID" : "150", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_wdI_U200", "Parent" : "58"},
	{"ID" : "151", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U201", "Parent" : "58"},
	{"ID" : "152", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U202", "Parent" : "58"},
	{"ID" : "153", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mac_muladd_xdS_U203", "Parent" : "58"},
	{"ID" : "154", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nyd2_U204", "Parent" : "58"},
	{"ID" : "155", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nzec_U205", "Parent" : "58"},
	{"ID" : "156", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_11nAem_U206", "Parent" : "58"},
	{"ID" : "157", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U207", "Parent" : "58"},
	{"ID" : "158", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U208", "Parent" : "58"},
	{"ID" : "159", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U209", "Parent" : "58"},
	{"ID" : "160", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_foword_FDC_fu_405.jpeg2_mul_mul_10nBew_U210", "Parent" : "58"},
	{"ID" : "161", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565", "Parent" : "13", "Child" : ["162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177"],
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
	{"ID" : "162", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_kbM_U65", "Parent" : "161"},
	{"ID" : "163", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U66", "Parent" : "161"},
	{"ID" : "164", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U67", "Parent" : "161"},
	{"ID" : "165", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U68", "Parent" : "161"},
	{"ID" : "166", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U69", "Parent" : "161"},
	{"ID" : "167", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U70", "Parent" : "161"},
	{"ID" : "168", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U71", "Parent" : "161"},
	{"ID" : "169", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_lbW_U72", "Parent" : "161"},
	{"ID" : "170", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U73", "Parent" : "161"},
	{"ID" : "171", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U74", "Parent" : "161"},
	{"ID" : "172", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U75", "Parent" : "161"},
	{"ID" : "173", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U76", "Parent" : "161"},
	{"ID" : "174", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U77", "Parent" : "161"},
	{"ID" : "175", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U78", "Parent" : "161"},
	{"ID" : "176", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U79", "Parent" : "161"},
	{"ID" : "177", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_convertColorSpace_fu_565.jpeg2_mac_muladd_mb6_U80", "Parent" : "161"},
	{"ID" : "178", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_doHuffmanEncoding_fu_597", "Parent" : "13", "Child" : ["179", "180"],
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
	{"ID" : "179", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_doHuffmanEncoding_fu_597.jpeg2_shl_32ns_32CeG_U286", "Parent" : "178"},
	{"ID" : "180", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_doHuffmanEncoding_fu_597.jpeg2_shl_32ns_32DeQ_U287", "Parent" : "178"},
	{"ID" : "181", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_readFromBMP_fu_617", "Parent" : "13",
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
	{"ID" : "182", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_bitstring_s_fu_631", "Parent" : "13", "Child" : ["183", "184"],
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
					{"ID" : "184", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "184", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "mask1", "Type" : "Memory", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_p_write_byte_s_fu_193", "SubBlockPort" : ["jpeg_out_TDATA_blk_n"]}]},
	{"ID" : "183", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_bitstring_s_fu_631.mask1_U", "Parent" : "182"},
	{"ID" : "184", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_bitstring_s_fu_631.grp_p_write_byte_s_fu_193", "Parent" : "182",
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
	{"ID" : "185", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651", "Parent" : "13", "Child" : ["186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "200", "201"],
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
					{"ID" : "195", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "p"}]},
			{"Name" : "JpegEncoder_m_CbCrTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "195", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "p"}]},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "194", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "198", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "196", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "200", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "195", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "197", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "194", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "198", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "196", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "200", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "195", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "197", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "194", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "198", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "196", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "200", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "195", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "197", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "201", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "194", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "198", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "196", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "200", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "195", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "197", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "JFIF0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "198", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "JFIF0"}]},
			{"Name" : "p_anonymous_namespace_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "197", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "196", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "194", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "p"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_p_write_byte_s_fu_205", "SubBlockPort" : ["jpeg_out_TDATA_blk_n"]}]},
	{"ID" : "186", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_5_U", "Parent" : "185"},
	{"ID" : "187", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_U", "Parent" : "185"},
	{"ID" : "188", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_10_U", "Parent" : "185"},
	{"ID" : "189", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_1_U", "Parent" : "185"},
	{"ID" : "190", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_3_U", "Parent" : "185"},
	{"ID" : "191", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_4_U", "Parent" : "185"},
	{"ID" : "192", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_8_U", "Parent" : "185"},
	{"ID" : "193", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.p_anonymous_namespace_9_U", "Parent" : "185"},
	{"ID" : "194", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.grp_p_write_162bytes_s_fu_98", "Parent" : "185",
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
	{"ID" : "195", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.grp_p_write_64bytes_s_fu_113", "Parent" : "185",
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
	{"ID" : "196", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.grp_p_write_16bytes_s_fu_128", "Parent" : "185",
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
	{"ID" : "197", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.grp_p_write_12bytes_s_fu_145", "Parent" : "185",
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
	{"ID" : "198", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.grp_p_write_5bytes_s_fu_160", "Parent" : "185", "Child" : ["199"],
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
	{"ID" : "199", "Level" : "4", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.grp_p_write_5bytes_s_fu_160.JFIF0_U", "Parent" : "198"},
	{"ID" : "200", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.grp_p_write_word_s_fu_174", "Parent" : "185",
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
	{"ID" : "201", "Level" : "3", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_write_jpeg_header_fu_651.grp_p_write_byte_s_fu_205", "Parent" : "185",
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
	{"ID" : "202", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_computeHuffmanTable_fu_685", "Parent" : "13",
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
	{"ID" : "203", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_computeHuffmanTable_fu_697", "Parent" : "13",
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
	{"ID" : "204", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_computeHuffmanTable_1_fu_709", "Parent" : "13",
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
	{"ID" : "205", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_encodeToJPG_fu_116.grp_p_computeHuffmanTable_1_fu_721", "Parent" : "13",
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
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_byte_s_fu_184", "Parent" : "0",
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
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	jpeg2 {
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
		huffman_table_value {Type O LastRead -1 FirstWrite 6}}
	p_write_byte_s {
		JpegEncoder_outhebyte_last_V_read {Type I LastRead 0 FirstWrite -1}
		value_r {Type I LastRead 0 FirstWrite -1}
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 0}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "2540837", "Max" : "274935543"}
	, {"Name" : "Interval", "Min" : "2540838", "Max" : "274935544"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	rgb_in_V_data_V { axis {  { rgb_in_TDATA in_data 0 24 } } }
	rgb_in_V_keep_V { axis {  { rgb_in_TKEEP in_data 0 3 } } }
	rgb_in_V_strb_V { axis {  { rgb_in_TSTRB in_data 0 3 } } }
	rgb_in_V_last_V { axis {  { rgb_in_TVALID in_vld 0 1 }  { rgb_in_TREADY in_acc 1 1 }  { rgb_in_TLAST in_data 0 1 } } }
	jpeg_out_V_data_V { axis {  { jpeg_out_TDATA out_data 1 8 } } }
	jpeg_out_V_keep_V { axis {  { jpeg_out_TKEEP out_data 1 1 } } }
	jpeg_out_V_strb_V { axis {  { jpeg_out_TSTRB out_data 1 1 } } }
	jpeg_out_V_last_V { axis {  { jpeg_out_TVALID out_vld 1 1 }  { jpeg_out_TREADY out_acc 0 1 }  { jpeg_out_TLAST out_data 1 1 } } }
}

set busDeadlockParameterList { 
}

# RTL port scheduling information:
set fifoSchedulingInfoList { 
}

# RTL bus port read request latency information:
set busReadReqLatencyList { 
}

# RTL bus port write response latency information:
set busWriteResLatencyList { 
}

# RTL array port load latency information:
set memoryLoadLatencyList { 
}
