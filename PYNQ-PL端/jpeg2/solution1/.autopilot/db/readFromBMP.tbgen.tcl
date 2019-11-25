set moduleName readFromBMP
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
set C_modelName {readFromBMP}
set C_modelType { void 0 }
set C_modelArgList {
	{ JpegEncoder_buffer int 8 regular {array 15360 { 0 0 } 0 1 }  }
	{ rgb_in_V_data_V int 24 regular {axi_s 0 volatile  { rgb_in Data } }  }
	{ rgb_in_V_keep_V int 3 regular {axi_s 0 volatile  { rgb_in Keep } }  }
	{ rgb_in_V_strb_V int 3 regular {axi_s 0 volatile  { rgb_in Strb } }  }
	{ rgb_in_V_last_V int 1 regular {axi_s 0 volatile  { rgb_in Last } }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "JpegEncoder_buffer", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "rgb_in_V_data_V", "interface" : "axis", "bitwidth" : 24, "direction" : "READONLY"} , 
 	{ "Name" : "rgb_in_V_keep_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "rgb_in_V_strb_V", "interface" : "axis", "bitwidth" : 3, "direction" : "READONLY"} , 
 	{ "Name" : "rgb_in_V_last_V", "interface" : "axis", "bitwidth" : 1, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 20
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
	{ JpegEncoder_buffer_address1 sc_out sc_lv 14 signal 0 } 
	{ JpegEncoder_buffer_ce1 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_buffer_we1 sc_out sc_logic 1 signal 0 } 
	{ JpegEncoder_buffer_d1 sc_out sc_lv 8 signal 0 } 
	{ rgb_in_TDATA sc_in sc_lv 24 signal 1 } 
	{ rgb_in_TVALID sc_in sc_logic 1 invld 1 } 
	{ rgb_in_TREADY sc_out sc_logic 1 inacc 4 } 
	{ rgb_in_TKEEP sc_in sc_lv 3 signal 2 } 
	{ rgb_in_TSTRB sc_in sc_lv 3 signal 3 } 
	{ rgb_in_TLAST sc_in sc_lv 1 signal 4 } 
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
 	{ "name": "JpegEncoder_buffer_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":14, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "address1" }} , 
 	{ "name": "JpegEncoder_buffer_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "ce1" }} , 
 	{ "name": "JpegEncoder_buffer_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "we1" }} , 
 	{ "name": "JpegEncoder_buffer_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "JpegEncoder_buffer", "role": "d1" }} , 
 	{ "name": "rgb_in_TDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":24, "type": "signal", "bundle":{"name": "rgb_in_V_data_V", "role": "default" }} , 
 	{ "name": "rgb_in_TVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "invld", "bundle":{"name": "rgb_in_V_data_V", "role": "default" }} , 
 	{ "name": "rgb_in_TREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "inacc", "bundle":{"name": "rgb_in_V_last_V", "role": "default" }} , 
 	{ "name": "rgb_in_TKEEP", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rgb_in_V_keep_V", "role": "default" }} , 
 	{ "name": "rgb_in_TSTRB", "direction": "in", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "rgb_in_V_strb_V", "role": "default" }} , 
 	{ "name": "rgb_in_TLAST", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "rgb_in_V_last_V", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "rgb_in_V_last_V", "Type" : "Axis", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	readFromBMP {
		JpegEncoder_buffer {Type O LastRead -1 FirstWrite 2}
		rgb_in_V_data_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_keep_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_strb_V {Type I LastRead 12 FirstWrite -1}
		rgb_in_V_last_V {Type I LastRead 12 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "8321", "Max" : "8321"}
	, {"Name" : "Interval", "Min" : "8321", "Max" : "8321"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	JpegEncoder_buffer { ap_memory {  { JpegEncoder_buffer_address0 mem_address 1 14 }  { JpegEncoder_buffer_ce0 mem_ce 1 1 }  { JpegEncoder_buffer_we0 mem_we 1 1 }  { JpegEncoder_buffer_d0 mem_din 1 8 }  { JpegEncoder_buffer_address1 MemPortADDR2 1 14 }  { JpegEncoder_buffer_ce1 MemPortCE2 1 1 }  { JpegEncoder_buffer_we1 MemPortWE2 1 1 }  { JpegEncoder_buffer_d1 MemPortDIN2 1 8 } } }
	rgb_in_V_data_V { axis {  { rgb_in_TDATA in_data 0 24 }  { rgb_in_TVALID in_vld 0 1 } } }
	rgb_in_V_keep_V { axis {  { rgb_in_TKEEP in_data 0 3 } } }
	rgb_in_V_strb_V { axis {  { rgb_in_TSTRB in_data 0 3 } } }
	rgb_in_V_last_V { axis {  { rgb_in_TREADY in_acc 1 1 }  { rgb_in_TLAST in_data 0 1 } } }
}
