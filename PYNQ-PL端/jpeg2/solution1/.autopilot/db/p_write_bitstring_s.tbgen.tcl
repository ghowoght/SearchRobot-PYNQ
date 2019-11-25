set moduleName p_write_bitstring_s
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
set C_modelName {_write_bitstring_}
set C_modelType { int 72 }
set C_modelArgList {
	{ JpegEncoder_outhebyte_data_V_read int 8 regular  }
	{ bs_length int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ bs_value int 32 regular {array 128 { 1 3 } 1 1 }  }
	{ counts int 32 regular  }
	{ newByte_read int 32 regular  }
	{ newBytePos_read int 32 regular  }
	{ jpeg_out_V_data_V int 8 regular {axi_s 1 volatile  { jpeg_out Data } }  }
	{ jpeg_out_V_keep_V int 1 regular {axi_s 1 volatile  { jpeg_out Keep } }  }
	{ jpeg_out_V_strb_V int 1 regular {axi_s 1 volatile  { jpeg_out Strb } }  }
	{ jpeg_out_V_last_V int 1 regular {axi_s 1 volatile  { jpeg_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "JpegEncoder_outhebyte_data_V_read", "interface" : "wire", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "bs_length", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "bs_value", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "counts", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "newByte_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "newBytePos_read", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "jpeg_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 72} ]}
# RTL Port declarations: 
set portNum 25
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ JpegEncoder_outhebyte_data_V_read sc_in sc_lv 8 signal 0 } 
	{ bs_length_address0 sc_out sc_lv 7 signal 1 } 
	{ bs_length_ce0 sc_out sc_logic 1 signal 1 } 
	{ bs_length_q0 sc_in sc_lv 32 signal 1 } 
	{ bs_value_address0 sc_out sc_lv 7 signal 2 } 
	{ bs_value_ce0 sc_out sc_logic 1 signal 2 } 
	{ bs_value_q0 sc_in sc_lv 32 signal 2 } 
	{ counts sc_in sc_lv 32 signal 3 } 
	{ newByte_read sc_in sc_lv 32 signal 4 } 
	{ newBytePos_read sc_in sc_lv 32 signal 5 } 
	{ jpeg_out_TDATA sc_out sc_lv 8 signal 6 } 
	{ jpeg_out_TVALID sc_out sc_logic 1 outvld 9 } 
	{ jpeg_out_TREADY sc_in sc_logic 1 outacc 9 } 
	{ jpeg_out_TKEEP sc_out sc_lv 1 signal 7 } 
	{ jpeg_out_TSTRB sc_out sc_lv 1 signal 8 } 
	{ jpeg_out_TLAST sc_out sc_lv 1 signal 9 } 
	{ ap_return_0 sc_out sc_lv 32 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
	{ ap_return_2 sc_out sc_lv 8 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "JpegEncoder_outhebyte_data_V_read", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_outhebyte_data_V_read", "role": "default" }} , 
 	{ "name": "bs_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bs_length", "role": "address0" }} , 
 	{ "name": "bs_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bs_length", "role": "ce0" }} , 
 	{ "name": "bs_length_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bs_length", "role": "q0" }} , 
 	{ "name": "bs_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "bs_value", "role": "address0" }} , 
 	{ "name": "bs_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "bs_value", "role": "ce0" }} , 
 	{ "name": "bs_value_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "bs_value", "role": "q0" }} , 
 	{ "name": "counts", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "counts", "role": "default" }} , 
 	{ "name": "newByte_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "newByte_read", "role": "default" }} , 
 	{ "name": "newBytePos_read", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "newBytePos_read", "role": "default" }} , 
 	{ "name": "jpeg_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "jpeg_out_V_data_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_keep_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_strb_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }} , 
 	{ "name": "ap_return_2", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "ap_return_2", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
					{"ID" : "2", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_data_V"}]},
			{"Name" : "jpeg_out_V_keep_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_keep_V"}]},
			{"Name" : "jpeg_out_V_strb_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_strb_V"}]},
			{"Name" : "jpeg_out_V_last_V", "Type" : "Axis", "Direction" : "O",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_p_write_byte_s_fu_193", "Port" : "jpeg_out_V_last_V"}]},
			{"Name" : "mask1", "Type" : "Memory", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_p_write_byte_s_fu_193", "SubBlockPort" : ["jpeg_out_TDATA_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.mask1_U", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_p_write_byte_s_fu_193", "Parent" : "0",
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
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "1", "Max" : "13675"}
	, {"Name" : "Interval", "Min" : "1", "Max" : "13675"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	JpegEncoder_outhebyte_data_V_read { ap_none {  { JpegEncoder_outhebyte_data_V_read in_data 0 8 } } }
	bs_length { ap_memory {  { bs_length_address0 mem_address 1 7 }  { bs_length_ce0 mem_ce 1 1 }  { bs_length_q0 mem_dout 0 32 } } }
	bs_value { ap_memory {  { bs_value_address0 mem_address 1 7 }  { bs_value_ce0 mem_ce 1 1 }  { bs_value_q0 mem_dout 0 32 } } }
	counts { ap_none {  { counts in_data 0 32 } } }
	newByte_read { ap_none {  { newByte_read in_data 0 32 } } }
	newBytePos_read { ap_none {  { newBytePos_read in_data 0 32 } } }
	jpeg_out_V_data_V { axis {  { jpeg_out_TDATA out_data 1 8 } } }
	jpeg_out_V_keep_V { axis {  { jpeg_out_TKEEP out_data 1 1 } } }
	jpeg_out_V_strb_V { axis {  { jpeg_out_TSTRB out_data 1 1 } } }
	jpeg_out_V_last_V { axis {  { jpeg_out_TVALID out_vld 1 1 }  { jpeg_out_TREADY out_acc 0 1 }  { jpeg_out_TLAST out_data 1 1 } } }
}
