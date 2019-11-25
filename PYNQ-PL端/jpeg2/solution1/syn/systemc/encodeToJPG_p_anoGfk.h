// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __encodeToJPG_p_anoGfk_H__
#define __encodeToJPG_p_anoGfk_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct encodeToJPG_p_anoGfk_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 64;
  static const unsigned AddressWidth = 6;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(encodeToJPG_p_anoGfk_ram) {
        ram[0] = "0b00010000";
        ram[1] = "0b00010000";
        ram[2] = "0b00100000";
        ram[3] = "0b01000000";
        ram[4] = "0b10000000";
        ram[5] = "0b10000000";
        ram[6] = "0b10000000";
        ram[7] = "0b10000000";
        ram[8] = "0b00010000";
        ram[9] = "0b00010000";
        ram[10] = "0b00100000";
        ram[11] = "0b01000000";
        ram[12] = "0b10000000";
        ram[13] = "0b10000000";
        ram[14] = "0b10000000";
        ram[15] = "0b10000000";
        ram[16] = "0b00100000";
        ram[17] = "0b00100000";
        ram[18] = "0b01000000";
        for (unsigned i = 19; i < 24 ; i = i + 1) {
            ram[i] = "0b10000000";
        }
        ram[24] = "0b00100000";
        ram[25] = "0b01000000";
        for (unsigned i = 26; i < 64 ; i = i + 1) {
            ram[i] = "0b10000000";
        }


SC_METHOD(prc_write_0);
  sensitive<<clk.pos();
   }


void prc_write_0()
{
    if (ce0.read() == sc_dt::Log_1) 
    {
            if(address0.read().is_01() && address0.read().to_uint()<AddressRange)
              q0 = ram[address0.read().to_uint()];
            else
              q0 = sc_lv<DataWidth>();
    }
}


}; //endmodule


SC_MODULE(encodeToJPG_p_anoGfk) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


encodeToJPG_p_anoGfk_ram* meminst;


SC_CTOR(encodeToJPG_p_anoGfk) {
meminst = new encodeToJPG_p_anoGfk_ram("encodeToJPG_p_anoGfk_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~encodeToJPG_p_anoGfk() {
    delete meminst;
}


};//endmodule
#endif
