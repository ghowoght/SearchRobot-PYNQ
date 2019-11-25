############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
open_project jpeg2
set_top jpeg2
add_files ../../../Users/fantwen/Desktop/jpeg_V2.cpp
add_files ../../../Users/fantwen/Desktop/jpeg_V2.h
add_files -tb jpeg2/test.cpp -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
add_files -tb ../../../Users/fantwen/Desktop/jpeg_V2.h -cflags "-Wno-unknown-pragmas" -csimflags "-Wno-unknown-pragmas"
open_solution "solution1"
set_part {xc7z020-clg400-1} -tool vivado
create_clock -period 5 -name default
config_export -description ftwhls -display_name JPEG640 -format ip_catalog -rtl verilog -version 1.1
source "./jpeg2/solution1/directives.tcl"
csim_design
csynth_design
cosim_design
export_design -rtl verilog -format ip_catalog -description "ftwhls" -version "1.1" -display_name "JPEG640"
