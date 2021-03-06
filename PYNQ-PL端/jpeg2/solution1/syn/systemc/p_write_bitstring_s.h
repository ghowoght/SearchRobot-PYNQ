// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _p_write_bitstring_s_HH_
#define _p_write_bitstring_s_HH_

#include "systemc.h"
#include "AESL_pkg.h"

#include "p_write_byte_s.h"
#include "p_write_bitstringEe0.h"

namespace ap_rtl {

struct p_write_bitstring_s : public sc_module {
    // Port declarations 25
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_in< sc_lv<8> > JpegEncoder_outhebyte_data_V_read;
    sc_out< sc_lv<7> > bs_length_address0;
    sc_out< sc_logic > bs_length_ce0;
    sc_in< sc_lv<32> > bs_length_q0;
    sc_out< sc_lv<7> > bs_value_address0;
    sc_out< sc_logic > bs_value_ce0;
    sc_in< sc_lv<32> > bs_value_q0;
    sc_in< sc_lv<32> > counts;
    sc_in< sc_lv<32> > newByte_read;
    sc_in< sc_lv<32> > newBytePos_read;
    sc_out< sc_lv<8> > jpeg_out_TDATA;
    sc_out< sc_logic > jpeg_out_TVALID;
    sc_in< sc_logic > jpeg_out_TREADY;
    sc_out< sc_lv<1> > jpeg_out_TKEEP;
    sc_out< sc_lv<1> > jpeg_out_TSTRB;
    sc_out< sc_lv<1> > jpeg_out_TLAST;
    sc_out< sc_lv<32> > ap_return_0;
    sc_out< sc_lv<32> > ap_return_1;
    sc_out< sc_lv<8> > ap_return_2;
    sc_signal< sc_lv<1> > ap_var_for_const0;


    // Module declarations
    p_write_bitstring_s(sc_module_name name);
    SC_HAS_PROCESS(p_write_bitstring_s);

    ~p_write_bitstring_s();

    sc_trace_file* mVcdFile;

    p_write_bitstringEe0* mask1_U;
    p_write_byte_s* grp_p_write_byte_s_fu_193;
    sc_signal< sc_lv<11> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_lv<4> > mask1_address0;
    sc_signal< sc_logic > mask1_ce0;
    sc_signal< sc_lv<16> > mask1_q0;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_193_jpeg_out_TDATA_blk_n;
    sc_signal< sc_logic > jpeg_out_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<1> > tmp_1_reg_481;
    sc_signal< sc_lv<1> > icmp_ln602_reg_485;
    sc_signal< sc_lv<31> > i_fu_244_p2;
    sc_signal< sc_lv<31> > i_reg_420;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln583_fu_239_p2;
    sc_signal< sc_lv<16> > trunc_ln588_fu_277_p1;
    sc_signal< sc_lv<16> > trunc_ln588_reg_435;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_lv<32> > bs_length_load_reg_440;
    sc_signal< sc_lv<32> > posval_fu_281_p2;
    sc_signal< sc_lv<32> > posval_reg_445;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_lv<16> > mask1_load_reg_464;
    sc_signal< sc_lv<32> > select_ln592_fu_340_p3;
    sc_signal< sc_lv<32> > select_ln592_reg_474;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<1> > tmp_1_fu_353_p3;
    sc_signal< sc_lv<1> > icmp_ln602_fu_374_p2;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_193_ap_start;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_193_ap_done;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_193_ap_idle;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_193_ap_ready;
    sc_signal< sc_lv<8> > grp_p_write_byte_s_fu_193_value_r;
    sc_signal< sc_lv<8> > grp_p_write_byte_s_fu_193_jpeg_out_TDATA;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_193_jpeg_out_TVALID;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_193_jpeg_out_TREADY;
    sc_signal< sc_lv<1> > grp_p_write_byte_s_fu_193_jpeg_out_TKEEP;
    sc_signal< sc_lv<1> > grp_p_write_byte_s_fu_193_jpeg_out_TSTRB;
    sc_signal< sc_lv<1> > grp_p_write_byte_s_fu_193_jpeg_out_TLAST;
    sc_signal< sc_lv<8> > grp_p_write_byte_s_fu_193_ap_return;
    sc_signal< sc_logic > grp_p_write_byte_s_fu_193_ap_ce;
    sc_signal< bool > ap_predicate_op89_call_state11;
    sc_signal< sc_lv<31> > i_0_reg_173;
    sc_signal< sc_lv<1> > icmp_ln590_fu_287_p2;
    sc_signal< sc_lv<32> > posval_0_in_reg_184;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< bool > ap_block_state11;
    sc_signal< sc_lv<8> > trunc_ln601_fu_370_p1;
    sc_signal< sc_lv<64> > zext_ln588_fu_250_p1;
    sc_signal< sc_lv<64> > zext_ln592_fu_293_p1;
    sc_signal< sc_lv<64> > sext_ln594_fu_297_p1;
    sc_signal< sc_lv<8> > JpegEncoder_outhebyt_fu_90;
    sc_signal< sc_lv<32> > newBytePos_0_fu_94;
    sc_signal< sc_lv<32> > add_ln597_fu_348_p2;
    sc_signal< sc_lv<32> > newByte_0_fu_98;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_lv<32> > zext_ln583_fu_235_p1;
    sc_signal< sc_lv<32> > sext_ln594_fu_297_p0;
    sc_signal< sc_lv<16> > and_ln592_fu_302_p2;
    sc_signal< sc_lv<16> > trunc_ln594_fu_312_p1;
    sc_signal< sc_lv<16> > tmp_3_fu_322_p4;
    sc_signal< sc_lv<16> > or_ln594_fu_316_p2;
    sc_signal< sc_lv<1> > icmp_ln592_fu_306_p2;
    sc_signal< sc_lv<32> > or_ln_fu_332_p3;
    sc_signal< sc_lv<32> > add_ln597_fu_348_p1;
    sc_signal< sc_lv<11> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<11> ap_ST_fsm_state1;
    static const sc_lv<11> ap_ST_fsm_state2;
    static const sc_lv<11> ap_ST_fsm_state3;
    static const sc_lv<11> ap_ST_fsm_state4;
    static const sc_lv<11> ap_ST_fsm_state5;
    static const sc_lv<11> ap_ST_fsm_state6;
    static const sc_lv<11> ap_ST_fsm_state7;
    static const sc_lv<11> ap_ST_fsm_state8;
    static const sc_lv<11> ap_ST_fsm_state9;
    static const sc_lv<11> ap_ST_fsm_state10;
    static const sc_lv<11> ap_ST_fsm_state11;
    static const bool ap_const_boolean_1;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<1> ap_const_lv1_1;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<31> ap_const_lv31_0;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<8> ap_const_lv8_0;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<31> ap_const_lv31_1;
    static const sc_lv<32> ap_const_lv32_FFFFFFFF;
    static const sc_lv<16> ap_const_lv16_0;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_1F;
    static const sc_lv<32> ap_const_lv32_FF;
    // Thread declarations
    void thread_ap_var_for_const0();
    void thread_ap_clk_no_reset_();
    void thread_add_ln597_fu_348_p1();
    void thread_add_ln597_fu_348_p2();
    void thread_and_ln592_fu_302_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_block_state11();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_predicate_op89_call_state11();
    void thread_ap_ready();
    void thread_ap_return_0();
    void thread_ap_return_1();
    void thread_ap_return_2();
    void thread_bs_length_address0();
    void thread_bs_length_ce0();
    void thread_bs_value_address0();
    void thread_bs_value_ce0();
    void thread_grp_p_write_byte_s_fu_193_ap_ce();
    void thread_grp_p_write_byte_s_fu_193_ap_start();
    void thread_grp_p_write_byte_s_fu_193_jpeg_out_TREADY();
    void thread_grp_p_write_byte_s_fu_193_value_r();
    void thread_i_fu_244_p2();
    void thread_icmp_ln583_fu_239_p2();
    void thread_icmp_ln590_fu_287_p2();
    void thread_icmp_ln592_fu_306_p2();
    void thread_icmp_ln602_fu_374_p2();
    void thread_jpeg_out_TDATA();
    void thread_jpeg_out_TDATA_blk_n();
    void thread_jpeg_out_TKEEP();
    void thread_jpeg_out_TLAST();
    void thread_jpeg_out_TSTRB();
    void thread_jpeg_out_TVALID();
    void thread_mask1_address0();
    void thread_mask1_ce0();
    void thread_or_ln594_fu_316_p2();
    void thread_or_ln_fu_332_p3();
    void thread_posval_fu_281_p2();
    void thread_select_ln592_fu_340_p3();
    void thread_sext_ln594_fu_297_p0();
    void thread_sext_ln594_fu_297_p1();
    void thread_tmp_1_fu_353_p3();
    void thread_tmp_3_fu_322_p4();
    void thread_trunc_ln588_fu_277_p1();
    void thread_trunc_ln594_fu_312_p1();
    void thread_trunc_ln601_fu_370_p1();
    void thread_zext_ln583_fu_235_p1();
    void thread_zext_ln588_fu_250_p1();
    void thread_zext_ln592_fu_293_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
