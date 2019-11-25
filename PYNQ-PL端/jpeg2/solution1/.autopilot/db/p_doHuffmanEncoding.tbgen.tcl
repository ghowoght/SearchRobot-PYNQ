set moduleName p_doHuffmanEncoding
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
set C_modelName {_doHuffmanEncoding}
set C_modelType { int 48 }
set C_modelArgList {
	{ DU int 11 regular {array 64 { 1 3 } 1 1 }  }
	{ prevDC_read int 16 regular  }
	{ HTDC_length int 5 regular {array 12 { 1 3 } 1 1 }  }
	{ HTDC_value int 16 regular {array 12 { 1 3 } 1 1 }  }
	{ HTAC_length int 5 regular {array 256 { 1 1 } 1 1 }  }
	{ HTAC_value int 16 regular {array 256 { 1 1 } 1 1 }  }
	{ outputBitString_length int 32 regular {array 128 { 0 3 } 0 1 }  }
	{ outputBitString_value int 32 regular {array 128 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "DU", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
 	{ "Name" : "prevDC_read", "interface" : "wire", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HTDC_length", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "HTDC_value", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "HTAC_length", "interface" : "memory", "bitwidth" : 5, "direction" : "READONLY"} , 
 	{ "Name" : "HTAC_value", "interface" : "memory", "bitwidth" : 16, "direction" : "READONLY"} , 
 	{ "Name" : "outputBitString_length", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "outputBitString_value", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 48} ]}
# RTL Port declarations: 
set portNum 38
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ DU_address0 sc_out sc_lv 6 signal 0 } 
	{ DU_ce0 sc_out sc_logic 1 signal 0 } 
	{ DU_q0 sc_in sc_lv 11 signal 0 } 
	{ prevDC_read sc_in sc_lv 16 signal 1 } 
	{ HTDC_length_address0 sc_out sc_lv 4 signal 2 } 
	{ HTDC_length_ce0 sc_out sc_logic 1 signal 2 } 
	{ HTDC_length_q0 sc_in sc_lv 5 signal 2 } 
	{ HTDC_value_address0 sc_out sc_lv 4 signal 3 } 
	{ HTDC_value_ce0 sc_out sc_logic 1 signal 3 } 
	{ HTDC_value_q0 sc_in sc_lv 16 signal 3 } 
	{ HTAC_length_address0 sc_out sc_lv 8 signal 4 } 
	{ HTAC_length_ce0 sc_out sc_logic 1 signal 4 } 
	{ HTAC_length_q0 sc_in sc_lv 5 signal 4 } 
	{ HTAC_length_address1 sc_out sc_lv 8 signal 4 } 
	{ HTAC_length_ce1 sc_out sc_logic 1 signal 4 } 
	{ HTAC_length_q1 sc_in sc_lv 5 signal 4 } 
	{ HTAC_value_address0 sc_out sc_lv 8 signal 5 } 
	{ HTAC_value_ce0 sc_out sc_logic 1 signal 5 } 
	{ HTAC_value_q0 sc_in sc_lv 16 signal 5 } 
	{ HTAC_value_address1 sc_out sc_lv 8 signal 5 } 
	{ HTAC_value_ce1 sc_out sc_logic 1 signal 5 } 
	{ HTAC_value_q1 sc_in sc_lv 16 signal 5 } 
	{ outputBitString_length_address0 sc_out sc_lv 7 signal 6 } 
	{ outputBitString_length_ce0 sc_out sc_logic 1 signal 6 } 
	{ outputBitString_length_we0 sc_out sc_logic 1 signal 6 } 
	{ outputBitString_length_d0 sc_out sc_lv 32 signal 6 } 
	{ outputBitString_value_address0 sc_out sc_lv 7 signal 7 } 
	{ outputBitString_value_ce0 sc_out sc_logic 1 signal 7 } 
	{ outputBitString_value_we0 sc_out sc_logic 1 signal 7 } 
	{ outputBitString_value_d0 sc_out sc_lv 32 signal 7 } 
	{ ap_return_0 sc_out sc_lv 16 signal -1 } 
	{ ap_return_1 sc_out sc_lv 32 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "DU_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "DU", "role": "address0" }} , 
 	{ "name": "DU_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "DU", "role": "ce0" }} , 
 	{ "name": "DU_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "DU", "role": "q0" }} , 
 	{ "name": "prevDC_read", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "prevDC_read", "role": "default" }} , 
 	{ "name": "HTDC_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HTDC_length", "role": "address0" }} , 
 	{ "name": "HTDC_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HTDC_length", "role": "ce0" }} , 
 	{ "name": "HTDC_length_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "HTDC_length", "role": "q0" }} , 
 	{ "name": "HTDC_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "HTDC_value", "role": "address0" }} , 
 	{ "name": "HTDC_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HTDC_value", "role": "ce0" }} , 
 	{ "name": "HTDC_value_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HTDC_value", "role": "q0" }} , 
 	{ "name": "HTAC_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HTAC_length", "role": "address0" }} , 
 	{ "name": "HTAC_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HTAC_length", "role": "ce0" }} , 
 	{ "name": "HTAC_length_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "HTAC_length", "role": "q0" }} , 
 	{ "name": "HTAC_length_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HTAC_length", "role": "address1" }} , 
 	{ "name": "HTAC_length_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HTAC_length", "role": "ce1" }} , 
 	{ "name": "HTAC_length_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "HTAC_length", "role": "q1" }} , 
 	{ "name": "HTAC_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HTAC_value", "role": "address0" }} , 
 	{ "name": "HTAC_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HTAC_value", "role": "ce0" }} , 
 	{ "name": "HTAC_value_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HTAC_value", "role": "q0" }} , 
 	{ "name": "HTAC_value_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "HTAC_value", "role": "address1" }} , 
 	{ "name": "HTAC_value_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "HTAC_value", "role": "ce1" }} , 
 	{ "name": "HTAC_value_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "HTAC_value", "role": "q1" }} , 
 	{ "name": "outputBitString_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputBitString_length", "role": "address0" }} , 
 	{ "name": "outputBitString_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputBitString_length", "role": "ce0" }} , 
 	{ "name": "outputBitString_length_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputBitString_length", "role": "we0" }} , 
 	{ "name": "outputBitString_length_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputBitString_length", "role": "d0" }} , 
 	{ "name": "outputBitString_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":7, "type": "signal", "bundle":{"name": "outputBitString_value", "role": "address0" }} , 
 	{ "name": "outputBitString_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputBitString_value", "role": "ce0" }} , 
 	{ "name": "outputBitString_value_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "outputBitString_value", "role": "we0" }} , 
 	{ "name": "outputBitString_value_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "outputBitString_value", "role": "d0" }} , 
 	{ "name": "ap_return_0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "ap_return_0", "role": "default" }} , 
 	{ "name": "ap_return_1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "ap_return_1", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_shl_32ns_32CeG_U286", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.jpeg2_shl_32ns_32DeQ_U287", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	p_doHuffmanEncoding {
		DU {Type I LastRead 137 FirstWrite -1}
		prevDC_read {Type I LastRead 2 FirstWrite -1}
		HTDC_length {Type I LastRead 5 FirstWrite -1}
		HTDC_value {Type I LastRead 5 FirstWrite -1}
		HTAC_length {Type I LastRead 142 FirstWrite -1}
		HTAC_value {Type I LastRead 142 FirstWrite -1}
		outputBitString_length {Type O LastRead -1 FirstWrite 4}
		outputBitString_value {Type O LastRead -1 FirstWrite 4}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "10", "Max" : "14425"}
	, {"Name" : "Interval", "Min" : "10", "Max" : "14425"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	DU { ap_memory {  { DU_address0 mem_address 1 6 }  { DU_ce0 mem_ce 1 1 }  { DU_q0 mem_dout 0 11 } } }
	prevDC_read { ap_none {  { prevDC_read in_data 0 16 } } }
	HTDC_length { ap_memory {  { HTDC_length_address0 mem_address 1 4 }  { HTDC_length_ce0 mem_ce 1 1 }  { HTDC_length_q0 mem_dout 0 5 } } }
	HTDC_value { ap_memory {  { HTDC_value_address0 mem_address 1 4 }  { HTDC_value_ce0 mem_ce 1 1 }  { HTDC_value_q0 mem_dout 0 16 } } }
	HTAC_length { ap_memory {  { HTAC_length_address0 mem_address 1 8 }  { HTAC_length_ce0 mem_ce 1 1 }  { HTAC_length_q0 mem_dout 0 5 }  { HTAC_length_address1 MemPortADDR2 1 8 }  { HTAC_length_ce1 MemPortCE2 1 1 }  { HTAC_length_q1 MemPortDOUT2 0 5 } } }
	HTAC_value { ap_memory {  { HTAC_value_address0 mem_address 1 8 }  { HTAC_value_ce0 mem_ce 1 1 }  { HTAC_value_q0 mem_dout 0 16 }  { HTAC_value_address1 MemPortADDR2 1 8 }  { HTAC_value_ce1 MemPortCE2 1 1 }  { HTAC_value_q1 MemPortDOUT2 0 16 } } }
	outputBitString_length { ap_memory {  { outputBitString_length_address0 mem_address 1 7 }  { outputBitString_length_ce0 mem_ce 1 1 }  { outputBitString_length_we0 mem_we 1 1 }  { outputBitString_length_d0 mem_din 1 32 } } }
	outputBitString_value { ap_memory {  { outputBitString_value_address0 mem_address 1 7 }  { outputBitString_value_ce0 mem_ce 1 1 }  { outputBitString_value_we0 mem_we 1 1 }  { outputBitString_value_d0 mem_din 1 32 } } }
}
