############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_interface -mode axis -register_mode off "jpeg2" rgb_in
set_directive_interface -mode axis -register_mode off "jpeg2" jpeg_out
set_directive_loop_tripcount -max 17 "JpegEncoder::_write_bitstring_/wb2"
set_directive_loop_tripcount -max 81 "JpegEncoder::encodeToJPG/en2"
set_directive_inline -off "JpegEncoder::readFromBMP"
set_directive_interface -mode axis -register -register_mode both "JpegEncoder::main" rgb_in
set_directive_loop_merge "JpegEncoder::readFromBMP/regiion"
set_directive_unroll -factor 8 "JpegEncoder::readFromBMP/RB"
set_directive_interface -mode s_axilite "jpeg2"
set_directive_unroll "JpegEncoder::_foword_FDC/FDC5"
set_directive_unroll "JpegEncoder::_foword_FDC/FDC9"
set_directive_pipeline "JpegEncoder::_foword_FDC/FDC1"
set_directive_loop_tripcount -max 5 "JpegEncoder::_doHuffmanEncoding/huff4"
set_directive_loop_tripcount -max 128 "JpegEncoder::_computeHuffmanTable/comhuff2"
set_directive_pipeline "JpegEncoder::_convertColorSpace/conver_col1"
set_directive_pipeline "JpegEncoder::_convertColorSpace/conver_col2"
set_directive_loop_tripcount -max 64 "JpegEncoder::_doHuffmanEncoding/huff2"
set_directive_loop_tripcount -max 64 "JpegEncoder::_doHuffmanEncoding/huff3"
set_directive_loop_tripcount -max 64 "JpegEncoder::_doHuffmanEncoding/huff1"
set_directive_loop_tripcount -max 16 "JpegEncoder::_getBitCode/bit1"
set_directive_pipeline "JpegEncoder::_doHuffmanEncoding/huff1"
set_directive_unroll "JpegEncoder::_getBitCode/bit1"
set_directive_pipeline "JpegEncoder::_write_bitstring_"
set_directive_pipeline "JpegEncoder::_doHuffmanEncoding"
set_directive_unroll "JpegEncoder::encodeToJPG/en2"
