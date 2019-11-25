set moduleName p_write_5bytes_s
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
set C_modelName {_write_5bytes_}
set C_modelType { void 0 }
set C_modelArgList {
	{ jpeg_out_V_data_V int 8 regular {axi_s 1 volatile  { jpeg_out Data } }  }
	{ jpeg_out_V_keep_V int 1 regular {axi_s 1 volatile  { jpeg_out Keep } }  }
	{ jpeg_out_V_strb_V int 1 regular {axi_s 1 volatile  { jpeg_out Strb } }  }
	{ jpeg_out_V_last_V int 1 regular {axi_s 1 volatile  { jpeg_out Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "jpeg_out_V_data_V", "interface" : "axis", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_keep_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_strb_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} , 
 	{ "Name" : "jpeg_out_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 12
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ jpeg_out_TDATA sc_out sc_lv 8 signal 0 } 
	{ jpeg_out_TVALID sc_out sc_logic 1 outvld 3 } 
	{ jpeg_out_TREADY sc_in sc_logic 1 outacc 0 } 
	{ jpeg_out_TKEEP sc_out sc_lv 1 signal 1 } 
	{ jpeg_out_TSTRB sc_out sc_lv 1 signal 2 } 
	{ jpeg_out_TLAST sc_out sc_lv 1 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "jpeg_out_TDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "jpeg_out_V_data_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "outvld", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "outacc", "bundle":{"name": "jpeg_out_V_data_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TKEEP", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_keep_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_strb_V", "role": "default" }} , 
 	{ "name": "jpeg_out_TLAST", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "jpeg_out_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.JFIF0_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_write_5bytes_s {
		jpeg_out_V_data_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_keep_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_strb_V {Type O LastRead -1 FirstWrite 2}
		jpeg_out_V_last_V {Type O LastRead -1 FirstWrite 2}
		JFIF0 {Type I LastRead -1 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "11"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "11"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	jpeg_out_V_data_V { axis {  { jpeg_out_TDATA out_data 1 8 }  { jpeg_out_TREADY out_acc 0 1 } } }
	jpeg_out_V_keep_V { axis {  { jpeg_out_TKEEP out_data 1 1 } } }
	jpeg_out_V_strb_V { axis {  { jpeg_out_TSTRB out_data 1 1 } } }
	jpeg_out_V_last_V { axis {  { jpeg_out_TVALID out_vld 1 1 }  { jpeg_out_TLAST out_data 1 1 } } }
}
