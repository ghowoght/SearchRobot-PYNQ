// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __jpeg2_shl_32ns_32CeG__HH__
#define __jpeg2_shl_32ns_32CeG__HH__
#include "ACMP_shl.h"
#include <systemc>

template<
    int ID,
    int NUM_STAGE,
    int OPCODE,
    int din0_WIDTH,
    int din1_WIDTH,
    int dout_WIDTH>
SC_MODULE(jpeg2_shl_32ns_32CeG) {
    sc_core::sc_in_clk clk;
    sc_core::sc_in<sc_dt::sc_logic> reset;
    sc_core::sc_in<sc_dt::sc_logic> ce;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din0;
    sc_core::sc_in< sc_dt::sc_lv<din0_WIDTH> >   din1;
    sc_core::sc_out< sc_dt::sc_lv<dout_WIDTH> >   dout;



    ACMP_shl<ID, 2, din0_WIDTH, din1_WIDTH, dout_WIDTH> ACMP_shl_U;

    SC_CTOR(jpeg2_shl_32ns_32CeG):  ACMP_shl_U ("ACMP_shl_U") {
        ACMP_shl_U.clk(clk);
        ACMP_shl_U.reset(reset);
        ACMP_shl_U.ce(ce);
        ACMP_shl_U.din0(din0);
        ACMP_shl_U.din1(din1);
        ACMP_shl_U.dout(dout);

    }

};

#endif //
