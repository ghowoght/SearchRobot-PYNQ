set moduleName p_write_jpeg_header
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
set C_modelName {_write_jpeg_header}
set C_modelType { int 8 }
set C_modelArgList {
	{ JpegEncoder_m_YTable int 8 regular {array 64 { 1 3 } 1 1 }  }
	{ JpegEncoder_m_CbCrTable int 8 regular {array 64 { 1 3 } 1 1 }  }
	{ jpeg_out_V_data_V int 8 regular {axi_s 1 volatile  { jpeg_out Data } }  }
	{ jpeg_out_V_keep_V int 1 regular {axi_s 1 volatile  { jpeg_out Keep } }  }
	{ jpeg_out_V_strb_V int 1 regular {axi_s 1 volatile  { jpeg_out Strb } }  }
	{ jpeg_out_V_last_V int 1 regular {axi_s 1 volatile  { jpeg_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "JpegEncoder_m_YTable", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "JpegEncoder_m_CbCrTable", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "jpeg_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 8} ]}
# RTL Port declarations: 
set portNum 19
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ JpegEncoder_m_YTable_address0 sc_out sc_lv 6 signal 0 } 
	{ JpegEncoder_m_YTable_ce0 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_m_YTable_q0 sc_in sc_lv 8 signal 0 } 
	{ JpegEncoder_m_CbCrTable_address0 sc_out sc_lv 6 signal 1 } 
	{ JpegEncoder_m_CbCrTable_ce0 sc_out sc_logic 1 signal 1 } 
	{ JpegEncoder_m_CbCrTable_q0 sc_in sc_lv 8 signal 1 } 
	{ jpeg_out_TDATA sc_out sc_lv 8 signal 2 } 
	{ jpeg_out_TVALID sc_out sc_logic 1 outvld 5 } 
	{ jpeg_out_TREADY sc_in sc_logic 1 outacc 5 } 
	{ jpeg_out_TKEEP sc_out sc_lv 1 signal 3 } 
	{ jpeg_out_TSTRB sc_out sc_lv 1 signal 4 } 
	{ jpeg_out_TLAST sc_out sc_lv 1 signal 5 } 
	{ ap_return sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "JpegEncoder_m_YTable_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "JpegEncoder_m_YTable", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_YTable_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_YTable", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_YTable_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_YTable", "role": "q0" }} , 
 	{ "name": "JpegEncoder_m_CbCrTable_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCrTable", "role": "address0" }} , 
 	{ "name": "JpegEncoder_m_CbCrTable_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCrTable", "role": "ce0" }} , 
 	{ "name": "JpegEncoder_m_CbCrTable_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_m_CbCrTable", "role": "q0" }} , 
 	{ "name": "jpeg_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "jpeg_out_V_data_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_keep_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_strb_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "15", "16"],
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
					{"ID" : "10", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "p"}]},
			{"Name" : "JpegEncoder_m_CbCrTable", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "10", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "p"}]},
			{"Name" : "jpeg_out_V_data_V", "Type" : "Axis", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "jpeg_out_TDATA_blk_n", "Type" : "RtlSignal"}],
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "9", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "13", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "11", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "15", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "10", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_data_V"},
					{"ID" : "12", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "9", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "13", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "11", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "15", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "10", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_keep_V"},
					{"ID" : "12", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "9", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "13", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "11", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "15", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "10", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_strb_V"},
					{"ID" : "12", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "16", "SubInstance" : "grp_p_write_byte_s_fu_205", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "9", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "13", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "11", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "15", "SubInstance" : "grp_p_write_word_s_fu_174", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "10", "SubInstance" : "grp_p_write_64bytes_s_fu_113", "Port" : "jpeg_out_V_last_V"},
					{"ID" : "12", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "JFIF0", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "13", "SubInstance" : "grp_p_write_5bytes_s_fu_160", "Port" : "JFIF0"}]},
			{"Name" : "p_anonymous_namespace_5", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_10", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_1", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_3", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_4", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "12", "SubInstance" : "grp_p_write_12bytes_s_fu_145", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_8", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "11", "SubInstance" : "grp_p_write_16bytes_s_fu_128", "Port" : "p"}]},
			{"Name" : "p_anonymous_namespace_9", "Type" : "Memory", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "9", "SubInstance" : "grp_p_write_162bytes_s_fu_98", "Port" : "p"}]}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_p_write_byte_s_fu_205", "SubBlockPort" : ["jpeg_out_TDATA_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_5_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_U", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_10_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_1_U", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_3_U", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_4_U", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_8_U", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.p_anonymous_namespace_9_U", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_162bytes_s_fu_98", "Parent" : "0",
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
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_64bytes_s_fu_113", "Parent" : "0",
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
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_16bytes_s_fu_128", "Parent" : "0",
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
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_12bytes_s_fu_145", "Parent" : "0",
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
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_5bytes_s_fu_160", "Parent" : "0", "Child" : ["14"],
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
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_p_write_5bytes_s_fu_160.JFIF0_U", "Parent" : "13"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_word_s_fu_174", "Parent" : "0",
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
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_byte_s_fu_205", "Parent" : "0",
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
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1199", "Max" : "1199"}
	, {"Name" : "Interval", "Min" : "1199", "Max" : "1199"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	JpegEncoder_m_YTable { ap_memory {  { JpegEncoder_m_YTable_address0 mem_address 1 6 }  { JpegEncoder_m_YTable_ce0 mem_ce 1 1 }  { JpegEncoder_m_YTable_q0 mem_dout 0 8 } } }
	JpegEncoder_m_CbCrTable { ap_memory {  { JpegEncoder_m_CbCrTable_address0 mem_address 1 6 }  { JpegEncoder_m_CbCrTable_ce0 mem_ce 1 1 }  { JpegEncoder_m_CbCrTable_q0 mem_dout 0 8 } } }
	jpeg_out_V_data_V { axis {  { jpeg_out_TDATA out_data 1 8 } } }
	jpeg_out_V_keep_V { axis {  { jpeg_out_TKEEP out_data 1 1 } } }
	jpeg_out_V_strb_V { axis {  { jpeg_out_TSTRB out_data 1 1 } } }
	jpeg_out_V_last_V { axis {  { jpeg_out_TVALID out_vld 1 1 }  { jpeg_out_TREADY out_acc 0 1 }  { jpeg_out_TLAST out_data 1 1 } } }
}
