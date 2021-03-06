// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _jpeg2_HH_
#define _jpeg2_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "encodeToJPG.h"
#include "p_write_byte_s.h"
#include "jpeg2_jpeg1_buffer.h"
#include "jpeg2_jpeg1_m_YTabbk.h"
#include "jpeg2_jpeg1_m_Y_Dbdk.h"
#include "jpeg2_jpeg1_m_Y_Dbek.h"
#include "jpeg2_jpeg1_m_Y_Abfk.h"
#include "jpeg2_jpeg1_m_Y_Abgk.h"
#include "jpeg2_AXILiteS_s_axi.h"

namespace ap_rtl {

template<unsigned int C_S_AXI_AXILITES_ADDR_WIDTH = 4,
         unsigned int C_S_AXI_AXILITES_DATA_WIDTH = 32>
struct jpeg2 : public sc_module {
    // Port declarations 32
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst_n;
    sc_in< sc_lv<24> > rgb_in_TDATA;
    sc_in< sc_logic > rgb_in_TVALID;
    sc_out< sc_logic > rgb_in_TREADY;
    sc_in< sc_lv<3> > rgb_in_TKEEP;
    sc_in< sc_lv<3> > rgb_in_TSTRB;
    sc_in< sc_lv<1> > rgb_in_TLAST;
    sc_out< sc_lv<8> > jpeg_out_TDATA;
    sc_out< sc_logic > jpeg_out_TVALID;
    sc_in< sc_logic > jpeg_out_TREADY;
    sc_out< sc_lv<1> > jpeg_out_TKEEP;
    sc_out< sc_lv<1> > jpeg_out_TSTRB;
    sc_out< sc_lv<1> > jpeg_out_TLAST;
    sc_in< sc_logic > s_axi_AXILiteS_AWVALID;
    sc_out< sc_logic > s_axi_AXILiteS_AWREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_AWADDR;
    sc_in< sc_logic > s_axi_AXILiteS_WVALID;
    sc_out< sc_logic > s_axi_AXILiteS_WREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_WDATA;
    sc_in< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH/8> > s_axi_AXILiteS_WSTRB;
    sc_in< sc_logic > s_axi_AXILiteS_ARVALID;
    sc_out< sc_logic > s_axi_AXILiteS_ARREADY;
    sc_in< sc_uint<C_S_AXI_AXILITES_ADDR_WIDTH> > s_axi_AXILiteS_ARADDR;
    sc_out< sc_logic > s_axi_AXILiteS_RVALID;
    sc_in< sc_logic > s_axi_AXILiteS_RREADY;
    sc_out< sc_uint<C_S_AXI_AXILITES_DATA_WIDTH> > s_axi_AXILiteS_RDATA;
    sc_out< sc_lv<2> > s_axi_AXILiteS_RRESP;
    sc_out< sc_logic > s_axi_AXILiteS_BVALID;
    sc_in< sc_logic > s_axi_AXILiteS_BREADY;
    sc_out< sc_lv<2> > s_axi_AXILiteS_BRESP;
    sc_out< sc_logic > interrupt;
    sc_signal< sc_logic > ap_var_for_const0;


    // Module declarations
    jpeg2(sc_module_name name);
    SC_HAS_PROCESS(jpeg2);

    ~jpeg2();

    sc_trace_file* mVcdFile;

    ofstream mHdltvinHandle;
    ofstream mHdltvoutHandle;
    jpeg2_AXILiteS_s_axi<C_S_AXI_AXILITES_ADDR_WIDTH,C_S_AXI_AXILITES_DATA_WIDTH>* jpeg2_AXILiteS_s_axi_U;
    jpeg2_jpeg1_buffer* jpeg1_buffer_U;
    jpeg2_jpeg1_m_YTabbk* jpeg1_m_YTable_U;
    jpeg2_jpeg1_m_YTabbk* jpeg1_m_CbCrTable_U;
    jpeg2_jpeg1_m_Y_Dbdk* jpeg1_m_Y_DC_Huffman_U;
    jpeg2_jpeg1_m_Y_Dbek* jpeg1_m_Y_DC_Huffman_1_U;
    jpeg2_jpeg1_m_Y_Abfk* jpeg1_m_Y_AC_Huffman_U;
    jpeg2_jpeg1_m_Y_Abgk* jpeg1_m_Y_AC_Huffman_1_U;
    jpeg2_jpeg1_m_Y_Dbdk* jpeg1_m_CbCr_DC_Huff_U;
    jpeg2_jpeg1_m_Y_Dbek* jpeg1_m_CbCr_DC_Huff_1_U;
    jpeg2_jpeg1_m_Y_Abfk* jpeg1_m_CbCr_AC_Huff_U;
    jpeg2_jpeg1_m_Y_Abgk* jpeg1_m_CbCr_AC_Huff_1_U;
    encodeToJPG* grp_encodeToJPG_fu_116;
    p_write_byte_s* grp_p_write_byte_s_fu_184;
    sc_signal< sc_logic > ap_rst_n_inv;
    sc_signal< sc_logic > ap_start;
    sc_signal< sc_logic > ap_done;
    sc_signal< sc_logic > ap_idle;
    sc_signal< sc_lv<4> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > ap_ready;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_184_jpeg_out_TDATA_blk_n;
    sc_signal< sc_logic > jpeg_out_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_lv<8> > jpeg1_buffer_q0;
    sc_signal< sc_lv<8> > jpeg1_buffer_q1;
    sc_signal< sc_lv<8> > jpeg1_m_YTable_q0;
    sc_signal< sc_lv<8> > jpeg1_m_CbCrTable_q0;
    sc_signal< sc_lv<5> > jpeg1_m_Y_DC_Huffman_q0;
    sc_signal< sc_lv<16> > jpeg1_m_Y_DC_Huffman_1_q0;
    sc_signal< sc_lv<5> > jpeg1_m_Y_AC_Huffman_q0;
    sc_signal< sc_lv<5> > jpeg1_m_Y_AC_Huffman_q1;
    sc_signal< sc_lv<16> > jpeg1_m_Y_AC_Huffman_1_q0;
    sc_signal< sc_lv<16> > jpeg1_m_Y_AC_Huffman_1_q1;
    sc_signal< sc_lv<5> > jpeg1_m_CbCr_DC_Huff_q0;
    sc_signal< sc_lv<16> > jpeg1_m_CbCr_DC_Huff_1_q0;
    sc_signal< sc_lv<5> > jpeg1_m_CbCr_AC_Huff_q0;
    sc_signal< sc_lv<5> > jpeg1_m_CbCr_AC_Huff_q1;
    sc_signal< sc_lv<16> > jpeg1_m_CbCr_AC_Huff_1_q0;
    sc_signal< sc_lv<16> > jpeg1_m_CbCr_AC_Huff_1_q1;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_ap_start;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_ap_done;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_ap_idle;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_ap_ready;
    sc_signal< sc_lv<14> > grp_encodeToJPG_fu_116_JpegEncoder_buffer_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_buffer_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_buffer_we0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_buffer_d0;
    sc_signal< sc_lv<14> > grp_encodeToJPG_fu_116_JpegEncoder_buffer_address1;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_buffer_ce1;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_buffer_we1;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_buffer_d1;
    sc_signal< sc_lv<6> > grp_encodeToJPG_fu_116_JpegEncoder_m_YTable_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_YTable_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_YTable_we0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_YTable_d0;
    sc_signal< sc_lv<6> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCrTable_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCrTable_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCrTable_we0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCrTable_d0;
    sc_signal< sc_lv<4> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_DC_Huffman_Table_length_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_DC_Huffman_Table_length_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_DC_Huffman_Table_length_we0;
    sc_signal< sc_lv<5> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_DC_Huffman_Table_length_d0;
    sc_signal< sc_lv<4> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_DC_Huffman_Table_value_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_DC_Huffman_Table_value_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_DC_Huffman_Table_value_we0;
    sc_signal< sc_lv<16> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_DC_Huffman_Table_value_d0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_length_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_length_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_length_we0;
    sc_signal< sc_lv<5> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_length_d0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_length_address1;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_length_ce1;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_value_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_value_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_value_we0;
    sc_signal< sc_lv<16> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_value_d0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_value_address1;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_Y_AC_Huffman_Table_value_ce1;
    sc_signal< sc_lv<4> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_DC_Huffman_Table_length_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_DC_Huffman_Table_length_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_DC_Huffman_Table_length_we0;
    sc_signal< sc_lv<5> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_DC_Huffman_Table_length_d0;
    sc_signal< sc_lv<4> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_DC_Huffman_Table_value_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_DC_Huffman_Table_value_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_DC_Huffman_Table_value_we0;
    sc_signal< sc_lv<16> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_DC_Huffman_Table_value_d0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_length_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_length_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_length_we0;
    sc_signal< sc_lv<5> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_length_d0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_length_address1;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_length_ce1;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_value_address0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_value_ce0;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_value_we0;
    sc_signal< sc_lv<16> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_value_d0;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_value_address1;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_JpegEncoder_m_CbCr_AC_Huffman_Table_value_ce1;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_rgb_in_TREADY;
    sc_signal< sc_lv<8> > grp_encodeToJPG_fu_116_jpeg_out_TDATA;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_jpeg_out_TVALID;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_jpeg_out_TREADY;
    sc_signal< sc_lv<1> > grp_encodeToJPG_fu_116_jpeg_out_TKEEP;
    sc_signal< sc_lv<1> > grp_encodeToJPG_fu_116_jpeg_out_TSTRB;
    sc_signal< sc_lv<1> > grp_encodeToJPG_fu_116_jpeg_out_TLAST;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_184_ap_start;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_184_ap_done;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_184_ap_idle;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_184_ap_ready;
    sc_signal< sc_lv<1> > grp_p_write_byte_s_fu_184_JpegEncoder_outhebyte_last_V_read;
    sc_signal< sc_lv<8> > grp_p_write_byte_s_fu_184_value_r;
    sc_signal< sc_lv<8> > grp_p_write_byte_s_fu_184_jpeg_out_TDATA;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_184_jpeg_out_TVALID;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_184_jpeg_out_TREADY;
    sc_signal< sc_lv<1> > grp_p_write_byte_s_fu_184_jpeg_out_TKEEP;
    sc_signal< sc_lv<1> > grp_p_write_byte_s_fu_184_jpeg_out_TSTRB;
    sc_signal< sc_lv<1> > grp_p_write_byte_s_fu_184_jpeg_out_TLAST;
    sc_signal< sc_lv<8> > grp_p_write_byte_s_fu_184_ap_return;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_184_ap_ce;
    sc_signal< sc_logic > grp_encodeToJPG_fu_116_ap_start_reg;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<4> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<4> ap_ST_fsm_state1;
    static const sc_lv<4> ap_ST_fsm_state2;
    static const sc_lv<4> ap_ST_fsm_state3;
    static const sc_lv<4> ap_ST_fsm_state4;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const int C_S_AXI_DATA_WIDTH;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<8> ap_const_lv8_FF;
    static const sc_lv<8> ap_const_lv8_D9;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_ap_rst_n_inv();
    void thread_grp_encodeToJPG_fu_116_ap_start();
    void thread_grp_encodeToJPG_fu_116_jpeg_out_TREADY();
    void thread_grp_p_write_byte_s_fu_184_JpegEncoder_outhebyte_last_V_read();
    void thread_grp_p_write_byte_s_fu_184_ap_ce();
    void thread_grp_p_write_byte_s_fu_184_ap_start();
    void thread_grp_p_write_byte_s_fu_184_jpeg_out_TREADY();
    void thread_grp_p_write_byte_s_fu_184_value_r();
    void thread_jpeg_out_TDATA();
    void thread_jpeg_out_TDATA_blk_n();
    void thread_jpeg_out_TKEEP();
    void thread_jpeg_out_TLAST();
    void thread_jpeg_out_TSTRB();
    void thread_jpeg_out_TVALID();
    void thread_rgb_in_TREADY();
    void thread_ap_NS_fsm();
    void thread_hdltv_gen();
};

}

using namespace ap_rtl;

#endif
