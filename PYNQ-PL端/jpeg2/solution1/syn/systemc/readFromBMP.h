// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2019.1
// Copyright (C) 1986-2019 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

#ifndef _readFromBMP_HH_
#define _readFromBMP_HH_

#include "systemc.h"
#include "AESL_pkg.h"


namespace ap_rtl {

struct readFromBMP : public sc_module {
    // Port declarations 20
    sc_in_clk ap_clk;
    sc_in< sc_logic > ap_rst;
    sc_in< sc_logic > ap_start;
    sc_out< sc_logic > ap_done;
    sc_out< sc_logic > ap_idle;
    sc_out< sc_logic > ap_ready;
    sc_out< sc_lv<14> > JpegEncoder_buffer_address0;
    sc_out< sc_logic > JpegEncoder_buffer_ce0;
    sc_out< sc_logic > JpegEncoder_buffer_we0;
    sc_out< sc_lv<8> > JpegEncoder_buffer_d0;
    sc_out< sc_lv<14> > JpegEncoder_buffer_address1;
    sc_out< sc_logic > JpegEncoder_buffer_ce1;
    sc_out< sc_logic > JpegEncoder_buffer_we1;
    sc_out< sc_lv<8> > JpegEncoder_buffer_d1;
    sc_in< sc_lv<24> > rgb_in_TDATA;
    sc_in< sc_logic > rgb_in_TVALID;
    sc_out< sc_logic > rgb_in_TREADY;
    sc_in< sc_lv<3> > rgb_in_TKEEP;
    sc_in< sc_lv<3> > rgb_in_TSTRB;
    sc_in< sc_lv<1> > rgb_in_TLAST;


    // Module declarations
    readFromBMP(sc_module_name name);
    SC_HAS_PROCESS(readFromBMP);

    ~readFromBMP();

    sc_trace_file* mVcdFile;

    sc_signal< sc_lv<14> > ap_CS_fsm;
    sc_signal< sc_logic > ap_CS_fsm_state1;
    sc_signal< sc_logic > rgb_in_TDATA_blk_n;
    sc_signal< sc_logic > ap_CS_fsm_state3;
    sc_signal< sc_logic > ap_CS_fsm_state4;
    sc_signal< sc_logic > ap_CS_fsm_state6;
    sc_signal< sc_logic > ap_CS_fsm_state7;
    sc_signal< sc_logic > ap_CS_fsm_state9;
    sc_signal< sc_logic > ap_CS_fsm_state10;
    sc_signal< sc_logic > ap_CS_fsm_state12;
    sc_signal< sc_logic > ap_CS_fsm_state13;
    sc_signal< sc_lv<8> > reg_322;
    sc_signal< sc_lv<16> > sub_ln166_fu_349_p2;
    sc_signal< sc_lv<16> > sub_ln166_reg_858;
    sc_signal< sc_logic > ap_CS_fsm_state2;
    sc_signal< sc_lv<1> > icmp_ln163_fu_331_p2;
    sc_signal< sc_lv<8> > trunc_ln168_fu_374_p1;
    sc_signal< sc_lv<8> > trunc_ln168_reg_864;
    sc_signal< sc_lv<16> > sub_ln166_1_fu_400_p2;
    sc_signal< sc_lv<16> > sub_ln166_1_reg_869;
    sc_signal< sc_lv<16> > add_ln167_fu_428_p2;
    sc_signal< sc_lv<16> > add_ln167_reg_876;
    sc_signal< sc_lv<8> > trunc_ln168_1_fu_433_p1;
    sc_signal< sc_lv<8> > trunc_ln168_1_reg_881;
    sc_signal< sc_lv<16> > add_ln168_fu_437_p2;
    sc_signal< sc_lv<16> > add_ln168_reg_886;
    sc_signal< sc_lv<16> > sub_ln166_2_fu_480_p2;
    sc_signal< sc_lv<16> > sub_ln166_2_reg_891;
    sc_signal< sc_logic > ap_CS_fsm_state5;
    sc_signal< sc_lv<8> > trunc_ln168_2_fu_505_p1;
    sc_signal< sc_lv<8> > trunc_ln168_2_reg_897;
    sc_signal< sc_lv<16> > add_ln168_1_fu_509_p2;
    sc_signal< sc_lv<16> > add_ln168_1_reg_902;
    sc_signal< sc_lv<16> > sub_ln166_3_fu_536_p2;
    sc_signal< sc_lv<16> > sub_ln166_3_reg_907;
    sc_signal< sc_lv<16> > add_ln167_1_fu_558_p2;
    sc_signal< sc_lv<16> > add_ln167_1_reg_914;
    sc_signal< sc_lv<8> > trunc_ln168_3_fu_563_p1;
    sc_signal< sc_lv<8> > trunc_ln168_3_reg_919;
    sc_signal< sc_lv<16> > add_ln168_2_fu_567_p2;
    sc_signal< sc_lv<16> > add_ln168_2_reg_924;
    sc_signal< sc_lv<16> > sub_ln166_4_fu_610_p2;
    sc_signal< sc_lv<16> > sub_ln166_4_reg_929;
    sc_signal< sc_logic > ap_CS_fsm_state8;
    sc_signal< sc_lv<8> > trunc_ln168_4_fu_635_p1;
    sc_signal< sc_lv<8> > trunc_ln168_4_reg_935;
    sc_signal< sc_lv<16> > sub_ln166_5_fu_661_p2;
    sc_signal< sc_lv<16> > sub_ln166_5_reg_940;
    sc_signal< sc_lv<16> > add_ln167_2_fu_689_p2;
    sc_signal< sc_lv<16> > add_ln167_2_reg_947;
    sc_signal< sc_lv<8> > trunc_ln168_5_fu_694_p1;
    sc_signal< sc_lv<8> > trunc_ln168_5_reg_952;
    sc_signal< sc_lv<16> > add_ln168_3_fu_698_p2;
    sc_signal< sc_lv<16> > add_ln168_3_reg_957;
    sc_signal< sc_lv<16> > sub_ln166_6_fu_741_p2;
    sc_signal< sc_lv<16> > sub_ln166_6_reg_962;
    sc_signal< sc_logic > ap_CS_fsm_state11;
    sc_signal< sc_lv<8> > trunc_ln168_6_fu_766_p1;
    sc_signal< sc_lv<8> > trunc_ln168_6_reg_968;
    sc_signal< sc_lv<16> > add_ln168_4_fu_770_p2;
    sc_signal< sc_lv<16> > add_ln168_4_reg_973;
    sc_signal< sc_lv<16> > sub_ln166_7_fu_797_p2;
    sc_signal< sc_lv<16> > sub_ln166_7_reg_978;
    sc_signal< sc_lv<13> > add_ln163_fu_803_p2;
    sc_signal< sc_lv<13> > add_ln163_reg_985;
    sc_signal< sc_lv<16> > add_ln167_3_fu_825_p2;
    sc_signal< sc_lv<16> > add_ln167_3_reg_990;
    sc_signal< sc_lv<8> > trunc_ln168_7_fu_830_p1;
    sc_signal< sc_lv<8> > trunc_ln168_7_reg_995;
    sc_signal< sc_lv<16> > add_ln168_5_fu_834_p2;
    sc_signal< sc_lv<16> > add_ln168_5_reg_1000;
    sc_signal< sc_lv<13> > i_0_0_reg_283;
    sc_signal< sc_logic > ap_CS_fsm_state14;
    sc_signal< sc_lv<64> > zext_ln166_fu_358_p1;
    sc_signal< sc_lv<64> > zext_ln167_fu_369_p1;
    sc_signal< sc_lv<64> > zext_ln168_fu_415_p1;
    sc_signal< sc_lv<64> > zext_ln166_1_fu_423_p1;
    sc_signal< sc_lv<64> > zext_ln167_1_fu_445_p1;
    sc_signal< sc_lv<64> > zext_ln168_1_fu_453_p1;
    sc_signal< sc_lv<64> > zext_ln166_2_fu_489_p1;
    sc_signal< sc_lv<64> > zext_ln167_2_fu_500_p1;
    sc_signal< sc_lv<64> > zext_ln168_2_fu_545_p1;
    sc_signal< sc_lv<64> > zext_ln166_3_fu_553_p1;
    sc_signal< sc_lv<64> > zext_ln167_3_fu_575_p1;
    sc_signal< sc_lv<64> > zext_ln168_3_fu_583_p1;
    sc_signal< sc_lv<64> > zext_ln166_4_fu_619_p1;
    sc_signal< sc_lv<64> > zext_ln167_4_fu_630_p1;
    sc_signal< sc_lv<64> > zext_ln168_4_fu_676_p1;
    sc_signal< sc_lv<64> > zext_ln166_5_fu_684_p1;
    sc_signal< sc_lv<64> > zext_ln167_5_fu_706_p1;
    sc_signal< sc_lv<64> > zext_ln168_5_fu_714_p1;
    sc_signal< sc_lv<64> > zext_ln166_6_fu_750_p1;
    sc_signal< sc_lv<64> > zext_ln167_6_fu_761_p1;
    sc_signal< sc_lv<64> > zext_ln168_6_fu_812_p1;
    sc_signal< sc_lv<64> > zext_ln166_7_fu_820_p1;
    sc_signal< sc_lv<64> > zext_ln167_7_fu_842_p1;
    sc_signal< sc_lv<64> > zext_ln168_7_fu_850_p1;
    sc_signal< sc_lv<15> > shl_ln_fu_337_p3;
    sc_signal< sc_lv<16> > zext_ln166_8_fu_345_p1;
    sc_signal< sc_lv<16> > i_0_0_cast8_fu_327_p1;
    sc_signal< sc_lv<32> > sext_ln166_fu_355_p1;
    sc_signal< sc_lv<32> > or_ln167_fu_363_p2;
    sc_signal< sc_lv<13> > or_ln163_fu_378_p2;
    sc_signal< sc_lv<15> > shl_ln166_1_fu_388_p3;
    sc_signal< sc_lv<16> > zext_ln166_9_fu_396_p1;
    sc_signal< sc_lv<16> > zext_ln163_fu_384_p1;
    sc_signal< sc_lv<16> > or_ln168_fu_406_p2;
    sc_signal< sc_lv<32> > sext_ln168_fu_411_p1;
    sc_signal< sc_lv<32> > sext_ln166_1_fu_420_p1;
    sc_signal< sc_lv<32> > sext_ln167_fu_442_p1;
    sc_signal< sc_lv<32> > sext_ln168_1_fu_450_p1;
    sc_signal< sc_lv<13> > or_ln163_1_fu_458_p2;
    sc_signal< sc_lv<15> > shl_ln166_2_fu_468_p3;
    sc_signal< sc_lv<16> > zext_ln166_10_fu_476_p1;
    sc_signal< sc_lv<16> > zext_ln163_1_fu_464_p1;
    sc_signal< sc_lv<32> > sext_ln166_2_fu_486_p1;
    sc_signal< sc_lv<32> > or_ln167_1_fu_494_p2;
    sc_signal< sc_lv<13> > or_ln163_2_fu_514_p2;
    sc_signal< sc_lv<15> > shl_ln166_3_fu_524_p3;
    sc_signal< sc_lv<16> > zext_ln166_11_fu_532_p1;
    sc_signal< sc_lv<16> > zext_ln163_2_fu_520_p1;
    sc_signal< sc_lv<32> > sext_ln168_2_fu_542_p1;
    sc_signal< sc_lv<32> > sext_ln166_3_fu_550_p1;
    sc_signal< sc_lv<32> > sext_ln167_1_fu_572_p1;
    sc_signal< sc_lv<32> > sext_ln168_3_fu_580_p1;
    sc_signal< sc_lv<13> > or_ln163_3_fu_588_p2;
    sc_signal< sc_lv<15> > shl_ln166_4_fu_598_p3;
    sc_signal< sc_lv<16> > zext_ln166_12_fu_606_p1;
    sc_signal< sc_lv<16> > zext_ln163_3_fu_594_p1;
    sc_signal< sc_lv<32> > sext_ln166_4_fu_616_p1;
    sc_signal< sc_lv<32> > or_ln167_2_fu_624_p2;
    sc_signal< sc_lv<13> > or_ln163_4_fu_639_p2;
    sc_signal< sc_lv<15> > shl_ln166_5_fu_649_p3;
    sc_signal< sc_lv<16> > zext_ln166_13_fu_657_p1;
    sc_signal< sc_lv<16> > zext_ln163_4_fu_645_p1;
    sc_signal< sc_lv<16> > or_ln168_1_fu_667_p2;
    sc_signal< sc_lv<32> > sext_ln168_4_fu_672_p1;
    sc_signal< sc_lv<32> > sext_ln166_5_fu_681_p1;
    sc_signal< sc_lv<32> > sext_ln167_2_fu_703_p1;
    sc_signal< sc_lv<32> > sext_ln168_5_fu_711_p1;
    sc_signal< sc_lv<13> > or_ln163_5_fu_719_p2;
    sc_signal< sc_lv<15> > shl_ln166_6_fu_729_p3;
    sc_signal< sc_lv<16> > zext_ln166_14_fu_737_p1;
    sc_signal< sc_lv<16> > zext_ln163_5_fu_725_p1;
    sc_signal< sc_lv<32> > sext_ln166_6_fu_747_p1;
    sc_signal< sc_lv<32> > or_ln167_3_fu_755_p2;
    sc_signal< sc_lv<13> > or_ln163_6_fu_775_p2;
    sc_signal< sc_lv<15> > shl_ln166_7_fu_785_p3;
    sc_signal< sc_lv<16> > zext_ln166_15_fu_793_p1;
    sc_signal< sc_lv<16> > zext_ln163_6_fu_781_p1;
    sc_signal< sc_lv<32> > sext_ln168_6_fu_809_p1;
    sc_signal< sc_lv<32> > sext_ln166_7_fu_817_p1;
    sc_signal< sc_lv<32> > sext_ln167_3_fu_839_p1;
    sc_signal< sc_lv<32> > sext_ln168_7_fu_847_p1;
    sc_signal< sc_lv<14> > ap_NS_fsm;
    static const sc_logic ap_const_logic_1;
    static const sc_logic ap_const_logic_0;
    static const sc_lv<14> ap_ST_fsm_state1;
    static const sc_lv<14> ap_ST_fsm_state2;
    static const sc_lv<14> ap_ST_fsm_state3;
    static const sc_lv<14> ap_ST_fsm_state4;
    static const sc_lv<14> ap_ST_fsm_state5;
    static const sc_lv<14> ap_ST_fsm_state6;
    static const sc_lv<14> ap_ST_fsm_state7;
    static const sc_lv<14> ap_ST_fsm_state8;
    static const sc_lv<14> ap_ST_fsm_state9;
    static const sc_lv<14> ap_ST_fsm_state10;
    static const sc_lv<14> ap_ST_fsm_state11;
    static const sc_lv<14> ap_ST_fsm_state12;
    static const sc_lv<14> ap_ST_fsm_state13;
    static const sc_lv<14> ap_ST_fsm_state14;
    static const sc_lv<32> ap_const_lv32_0;
    static const sc_lv<32> ap_const_lv32_2;
    static const sc_lv<32> ap_const_lv32_3;
    static const sc_lv<32> ap_const_lv32_5;
    static const sc_lv<32> ap_const_lv32_6;
    static const sc_lv<32> ap_const_lv32_8;
    static const sc_lv<32> ap_const_lv32_9;
    static const sc_lv<32> ap_const_lv32_B;
    static const sc_lv<32> ap_const_lv32_C;
    static const sc_lv<32> ap_const_lv32_1;
    static const sc_lv<1> ap_const_lv1_0;
    static const sc_lv<32> ap_const_lv32_4;
    static const sc_lv<32> ap_const_lv32_7;
    static const sc_lv<32> ap_const_lv32_A;
    static const sc_lv<13> ap_const_lv13_0;
    static const sc_lv<32> ap_const_lv32_D;
    static const sc_lv<32> ap_const_lv32_10;
    static const sc_lv<32> ap_const_lv32_17;
    static const sc_lv<32> ap_const_lv32_F;
    static const sc_lv<13> ap_const_lv13_1400;
    static const sc_lv<2> ap_const_lv2_0;
    static const sc_lv<13> ap_const_lv13_1;
    static const sc_lv<16> ap_const_lv16_2;
    static const sc_lv<16> ap_const_lv16_1;
    static const sc_lv<13> ap_const_lv13_2;
    static const sc_lv<13> ap_const_lv13_3;
    static const sc_lv<13> ap_const_lv13_4;
    static const sc_lv<13> ap_const_lv13_5;
    static const sc_lv<13> ap_const_lv13_6;
    static const sc_lv<13> ap_const_lv13_7;
    static const sc_lv<13> ap_const_lv13_8;
    static const sc_lv<1> ap_const_lv1_1;
    static const bool ap_const_boolean_1;
    // Thread declarations
    void thread_ap_clk_no_reset_();
    void thread_JpegEncoder_buffer_address0();
    void thread_JpegEncoder_buffer_address1();
    void thread_JpegEncoder_buffer_ce0();
    void thread_JpegEncoder_buffer_ce1();
    void thread_JpegEncoder_buffer_d0();
    void thread_JpegEncoder_buffer_d1();
    void thread_JpegEncoder_buffer_we0();
    void thread_JpegEncoder_buffer_we1();
    void thread_add_ln163_fu_803_p2();
    void thread_add_ln167_1_fu_558_p2();
    void thread_add_ln167_2_fu_689_p2();
    void thread_add_ln167_3_fu_825_p2();
    void thread_add_ln167_fu_428_p2();
    void thread_add_ln168_1_fu_509_p2();
    void thread_add_ln168_2_fu_567_p2();
    void thread_add_ln168_3_fu_698_p2();
    void thread_add_ln168_4_fu_770_p2();
    void thread_add_ln168_5_fu_834_p2();
    void thread_add_ln168_fu_437_p2();
    void thread_ap_CS_fsm_state1();
    void thread_ap_CS_fsm_state10();
    void thread_ap_CS_fsm_state11();
    void thread_ap_CS_fsm_state12();
    void thread_ap_CS_fsm_state13();
    void thread_ap_CS_fsm_state14();
    void thread_ap_CS_fsm_state2();
    void thread_ap_CS_fsm_state3();
    void thread_ap_CS_fsm_state4();
    void thread_ap_CS_fsm_state5();
    void thread_ap_CS_fsm_state6();
    void thread_ap_CS_fsm_state7();
    void thread_ap_CS_fsm_state8();
    void thread_ap_CS_fsm_state9();
    void thread_ap_done();
    void thread_ap_idle();
    void thread_ap_ready();
    void thread_i_0_0_cast8_fu_327_p1();
    void thread_icmp_ln163_fu_331_p2();
    void thread_or_ln163_1_fu_458_p2();
    void thread_or_ln163_2_fu_514_p2();
    void thread_or_ln163_3_fu_588_p2();
    void thread_or_ln163_4_fu_639_p2();
    void thread_or_ln163_5_fu_719_p2();
    void thread_or_ln163_6_fu_775_p2();
    void thread_or_ln163_fu_378_p2();
    void thread_or_ln167_1_fu_494_p2();
    void thread_or_ln167_2_fu_624_p2();
    void thread_or_ln167_3_fu_755_p2();
    void thread_or_ln167_fu_363_p2();
    void thread_or_ln168_1_fu_667_p2();
    void thread_or_ln168_fu_406_p2();
    void thread_rgb_in_TDATA_blk_n();
    void thread_rgb_in_TREADY();
    void thread_sext_ln166_1_fu_420_p1();
    void thread_sext_ln166_2_fu_486_p1();
    void thread_sext_ln166_3_fu_550_p1();
    void thread_sext_ln166_4_fu_616_p1();
    void thread_sext_ln166_5_fu_681_p1();
    void thread_sext_ln166_6_fu_747_p1();
    void thread_sext_ln166_7_fu_817_p1();
    void thread_sext_ln166_fu_355_p1();
    void thread_sext_ln167_1_fu_572_p1();
    void thread_sext_ln167_2_fu_703_p1();
    void thread_sext_ln167_3_fu_839_p1();
    void thread_sext_ln167_fu_442_p1();
    void thread_sext_ln168_1_fu_450_p1();
    void thread_sext_ln168_2_fu_542_p1();
    void thread_sext_ln168_3_fu_580_p1();
    void thread_sext_ln168_4_fu_672_p1();
    void thread_sext_ln168_5_fu_711_p1();
    void thread_sext_ln168_6_fu_809_p1();
    void thread_sext_ln168_7_fu_847_p1();
    void thread_sext_ln168_fu_411_p1();
    void thread_shl_ln166_1_fu_388_p3();
    void thread_shl_ln166_2_fu_468_p3();
    void thread_shl_ln166_3_fu_524_p3();
    void thread_shl_ln166_4_fu_598_p3();
    void thread_shl_ln166_5_fu_649_p3();
    void thread_shl_ln166_6_fu_729_p3();
    void thread_shl_ln166_7_fu_785_p3();
    void thread_shl_ln_fu_337_p3();
    void thread_sub_ln166_1_fu_400_p2();
    void thread_sub_ln166_2_fu_480_p2();
    void thread_sub_ln166_3_fu_536_p2();
    void thread_sub_ln166_4_fu_610_p2();
    void thread_sub_ln166_5_fu_661_p2();
    void thread_sub_ln166_6_fu_741_p2();
    void thread_sub_ln166_7_fu_797_p2();
    void thread_sub_ln166_fu_349_p2();
    void thread_trunc_ln168_1_fu_433_p1();
    void thread_trunc_ln168_2_fu_505_p1();
    void thread_trunc_ln168_3_fu_563_p1();
    void thread_trunc_ln168_4_fu_635_p1();
    void thread_trunc_ln168_5_fu_694_p1();
    void thread_trunc_ln168_6_fu_766_p1();
    void thread_trunc_ln168_7_fu_830_p1();
    void thread_trunc_ln168_fu_374_p1();
    void thread_zext_ln163_1_fu_464_p1();
    void thread_zext_ln163_2_fu_520_p1();
    void thread_zext_ln163_3_fu_594_p1();
    void thread_zext_ln163_4_fu_645_p1();
    void thread_zext_ln163_5_fu_725_p1();
    void thread_zext_ln163_6_fu_781_p1();
    void thread_zext_ln163_fu_384_p1();
    void thread_zext_ln166_10_fu_476_p1();
    void thread_zext_ln166_11_fu_532_p1();
    void thread_zext_ln166_12_fu_606_p1();
    void thread_zext_ln166_13_fu_657_p1();
    void thread_zext_ln166_14_fu_737_p1();
    void thread_zext_ln166_15_fu_793_p1();
    void thread_zext_ln166_1_fu_423_p1();
    void thread_zext_ln166_2_fu_489_p1();
    void thread_zext_ln166_3_fu_553_p1();
    void thread_zext_ln166_4_fu_619_p1();
    void thread_zext_ln166_5_fu_684_p1();
    void thread_zext_ln166_6_fu_750_p1();
    void thread_zext_ln166_7_fu_820_p1();
    void thread_zext_ln166_8_fu_345_p1();
    void thread_zext_ln166_9_fu_396_p1();
    void thread_zext_ln166_fu_358_p1();
    void thread_zext_ln167_1_fu_445_p1();
    void thread_zext_ln167_2_fu_500_p1();
    void thread_zext_ln167_3_fu_575_p1();
    void thread_zext_ln167_4_fu_630_p1();
    void thread_zext_ln167_5_fu_706_p1();
    void thread_zext_ln167_6_fu_761_p1();
    void thread_zext_ln167_7_fu_842_p1();
    void thread_zext_ln167_fu_369_p1();
    void thread_zext_ln168_1_fu_453_p1();
    void thread_zext_ln168_2_fu_545_p1();
    void thread_zext_ln168_3_fu_583_p1();
    void thread_zext_ln168_4_fu_676_p1();
    void thread_zext_ln168_5_fu_714_p1();
    void thread_zext_ln168_6_fu_812_p1();
    void thread_zext_ln168_7_fu_850_p1();
    void thread_zext_ln168_fu_415_p1();
    void thread_ap_NS_fsm();
};

}

using namespace ap_rtl;

#endif
