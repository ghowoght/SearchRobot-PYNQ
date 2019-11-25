set moduleName p_computeHuffmanTable
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
set C_modelName {_computeHuffmanTable}
set C_modelType { void 0 }
set C_modelArgList {
	{ nr_codes int 8 regular {array 16 { 1 3 } 1 1 }  }
	{ std_table int 8 regular {array 162 { 1 3 } 1 1 }  }
	{ huffman_table_length int 5 regular {array 256 { 0 3 } 0 1 }  }
	{ huffman_table_value int 16 regular {array 256 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "nr_codes", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "std_table", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} , 
 	{ "Name" : "huffman_table_length", "interface" : "memory", "bitwidth" : 5, "direction" : "WRITEONLY"} , 
 	{ "Name" : "huffman_table_value", "interface" : "memory", "bitwidth" : 16, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ nr_codes_address0 sc_out sc_lv 4 signal 0 } 
	{ nr_codes_ce0 sc_out sc_logic 1 signal 0 } 
	{ nr_codes_q0 sc_in sc_lv 8 signal 0 } 
	{ std_table_address0 sc_out sc_lv 8 signal 1 } 
	{ std_table_ce0 sc_out sc_logic 1 signal 1 } 
	{ std_table_q0 sc_in sc_lv 8 signal 1 } 
	{ huffman_table_length_address0 sc_out sc_lv 8 signal 2 } 
	{ huffman_table_length_ce0 sc_out sc_logic 1 signal 2 } 
	{ huffman_table_length_we0 sc_out sc_logic 1 signal 2 } 
	{ huffman_table_length_d0 sc_out sc_lv 5 signal 2 } 
	{ huffman_table_value_address0 sc_out sc_lv 8 signal 3 } 
	{ huffman_table_value_ce0 sc_out sc_logic 1 signal 3 } 
	{ huffman_table_value_we0 sc_out sc_logic 1 signal 3 } 
	{ huffman_table_value_d0 sc_out sc_lv 16 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "nr_codes_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "nr_codes", "role": "address0" }} , 
 	{ "name": "nr_codes_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "nr_codes", "role": "ce0" }} , 
 	{ "name": "nr_codes_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "nr_codes", "role": "q0" }} , 
 	{ "name": "std_table_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "std_table", "role": "address0" }} , 
 	{ "name": "std_table_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "std_table", "role": "ce0" }} , 
 	{ "name": "std_table_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "std_table", "role": "q0" }} , 
 	{ "name": "huffman_table_length_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "huffman_table_length", "role": "address0" }} , 
 	{ "name": "huffman_table_length_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_table_length", "role": "ce0" }} , 
 	{ "name": "huffman_table_length_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_table_length", "role": "we0" }} , 
 	{ "name": "huffman_table_length_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "huffman_table_length", "role": "d0" }} , 
 	{ "name": "huffman_table_value_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "huffman_table_value", "role": "address0" }} , 
 	{ "name": "huffman_table_value_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_table_value", "role": "ce0" }} , 
 	{ "name": "huffman_table_value_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "huffman_table_value", "role": "we0" }} , 
 	{ "name": "huffman_table_value_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":16, "type": "signal", "bundle":{"name": "huffman_table_value", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
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
			{"Name" : "huffman_table_value", "Type" : "Memory", "Direction" : "O"}]}]}


set ArgLastReadFirstWriteLatency {
	p_computeHuffmanTable {
		nr_codes {Type I LastRead 2 FirstWrite -1}
		std_table {Type I LastRead 4 FirstWrite -1}
		huffman_table_length {Type O LastRead -1 FirstWrite 6}
		huffman_table_value {Type O LastRead -1 FirstWrite 6}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "65", "Max" : "10305"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "10305"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	nr_codes { ap_memory {  { nr_codes_address0 mem_address 1 4 }  { nr_codes_ce0 mem_ce 1 1 }  { nr_codes_q0 mem_dout 0 8 } } }
	std_table { ap_memory {  { std_table_address0 mem_address 1 8 }  { std_table_ce0 mem_ce 1 1 }  { std_table_q0 mem_dout 0 8 } } }
	huffman_table_length { ap_memory {  { huffman_table_length_address0 mem_address 1 8 }  { huffman_table_length_ce0 mem_ce 1 1 }  { huffman_table_length_we0 mem_we 1 1 }  { huffman_table_length_d0 mem_din 1 5 } } }
	huffman_table_value { ap_memory {  { huffman_table_value_address0 mem_address 1 8 }  { huffman_table_value_ce0 mem_ce 1 1 }  { huffman_table_value_we0 mem_we 1 1 }  { huffman_table_value_d0 mem_din 1 16 } } }
}
