// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __encodeToJPG_p_anoFfa_H__
#define __encodeToJPG_p_anoFfa_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct encodeToJPG_p_anoFfa_ram : public sc_core::sc_module {

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


   SC_CTOR(encodeToJPG_p_anoFfa_ram) {
        ram[0] = "0b00010000";
        ram[1] = "0b00001000";
        ram[2] = "0b00001000";
        ram[3] = "0b00010000";
        ram[4] = "0b00100000";
        ram[5] = "0b00100000";
        ram[6] = "0b01000000";
        ram[7] = "0b01000000";
        ram[8] = "0b00001000";
        ram[9] = "0b00001000";
        ram[10] = "0b00010000";
        ram[11] = "0b00010000";
        ram[12] = "0b00100000";
        ram[13] = "0b01000000";
        ram[14] = "0b01000000";
        ram[15] = "0b01000000";
        ram[16] = "0b00010000";
        ram[17] = "0b00010000";
        ram[18] = "0b00010000";
        ram[19] = "0b00100000";
        ram[20] = "0b00100000";
        ram[21] = "0b01000000";
        ram[22] = "0b01000000";
        ram[23] = "0b01000000";
        ram[24] = "0b00010000";
        ram[25] = "0b00010000";
        ram[26] = "0b00010000";
        ram[27] = "0b00100000";
        ram[28] = "0b01000000";
        ram[29] = "0b01000000";
        ram[30] = "0b01000000";
        ram[31] = "0b01000000";
        ram[32] = "0b00010000";
        ram[33] = "0b00010000";
        ram[34] = "0b00100000";
        ram[35] = "0b01000000";
        ram[36] = "0b01000000";
        ram[37] = "0b10000000";
        ram[38] = "0b10000000";
        ram[39] = "0b01000000";
        ram[40] = "0b00010000";
        ram[41] = "0b00100000";
        ram[42] = "0b01000000";
        ram[43] = "0b01000000";
        ram[44] = "0b01000000";
        ram[45] = "0b10000000";
        ram[46] = "0b10000000";
        for (unsigned i = 47; i < 52 ; i = i + 1) {
            ram[i] = "0b01000000";
        }
        ram[52] = "0b10000000";
        ram[53] = "0b10000000";
        ram[54] = "0b10000000";
        ram[55] = "0b10000000";
        ram[56] = "0b01000000";
        ram[57] = "0b01000000";
        for (unsigned i = 58; i < 64 ; i = i + 1) {
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


SC_MODULE(encodeToJPG_p_anoFfa) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 64;
static const unsigned AddressWidth = 6;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


encodeToJPG_p_anoFfa_ram* meminst;


SC_CTOR(encodeToJPG_p_anoFfa) {
meminst = new encodeToJPG_p_anoFfa_ram("encodeToJPG_p_anoFfa_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);

meminst->reset(reset);
meminst->clk(clk);
}
~encodeToJPG_p_anoFfa() {
    delete meminst;
}


};//endmodule
#endif
