// ==============================================================
// Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// ==============================================================
#ifndef __p_write_jpeg_headfYi_H__
#define __p_write_jpeg_headfYi_H__


#include <systemc>
using namespace sc_core;
using namespace sc_dt;




#include <iostream>
#include <fstream>

struct p_write_jpeg_headfYi_ram : public sc_core::sc_module {

  static const unsigned DataWidth = 8;
  static const unsigned AddressRange = 162;
  static const unsigned AddressWidth = 8;

//latency = 1
//input_reg = 1
//output_reg = 0
sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in <sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


sc_lv<DataWidth> ram[AddressRange];


   SC_CTOR(p_write_jpeg_headfYi_ram) {
        ram[0] = "0b00000001";
        ram[1] = "0b00000010";
        ram[2] = "0b00000011";
        ram[3] = "0b00000000";
        ram[4] = "0b00000100";
        ram[5] = "0b00010001";
        ram[6] = "0b00000101";
        ram[7] = "0b00010010";
        ram[8] = "0b00100001";
        ram[9] = "0b00110001";
        ram[10] = "0b01000001";
        ram[11] = "0b00000110";
        ram[12] = "0b00010011";
        ram[13] = "0b01010001";
        ram[14] = "0b01100001";
        ram[15] = "0b00000111";
        ram[16] = "0b00100010";
        ram[17] = "0b01110001";
        ram[18] = "0b00010100";
        ram[19] = "0b00110010";
        ram[20] = "0b10000001";
        ram[21] = "0b10010001";
        ram[22] = "0b10100001";
        ram[23] = "0b00001000";
        ram[24] = "0b00100011";
        ram[25] = "0b01000010";
        ram[26] = "0b10110001";
        ram[27] = "0b11000001";
        ram[28] = "0b00010101";
        ram[29] = "0b01010010";
        ram[30] = "0b11010001";
        ram[31] = "0b11110000";
        ram[32] = "0b00100100";
        ram[33] = "0b00110011";
        ram[34] = "0b01100010";
        ram[35] = "0b01110010";
        ram[36] = "0b10000010";
        ram[37] = "0b00001001";
        ram[38] = "0b00001010";
        ram[39] = "0b00010110";
        ram[40] = "0b00010111";
        ram[41] = "0b00011000";
        ram[42] = "0b00011001";
        ram[43] = "0b00011010";
        ram[44] = "0b00100101";
        ram[45] = "0b00100110";
        ram[46] = "0b00100111";
        ram[47] = "0b00101000";
        ram[48] = "0b00101001";
        ram[49] = "0b00101010";
        ram[50] = "0b00110100";
        ram[51] = "0b00110101";
        ram[52] = "0b00110110";
        ram[53] = "0b00110111";
        ram[54] = "0b00111000";
        ram[55] = "0b00111001";
        ram[56] = "0b00111010";
        ram[57] = "0b01000011";
        ram[58] = "0b01000100";
        ram[59] = "0b01000101";
        ram[60] = "0b01000110";
        ram[61] = "0b01000111";
        ram[62] = "0b01001000";
        ram[63] = "0b01001001";
        ram[64] = "0b01001010";
        ram[65] = "0b01010011";
        ram[66] = "0b01010100";
        ram[67] = "0b01010101";
        ram[68] = "0b01010110";
        ram[69] = "0b01010111";
        ram[70] = "0b01011000";
        ram[71] = "0b01011001";
        ram[72] = "0b01011010";
        ram[73] = "0b01100011";
        ram[74] = "0b01100100";
        ram[75] = "0b01100101";
        ram[76] = "0b01100110";
        ram[77] = "0b01100111";
        ram[78] = "0b01101000";
        ram[79] = "0b01101001";
        ram[80] = "0b01101010";
        ram[81] = "0b01110011";
        ram[82] = "0b01110100";
        ram[83] = "0b01110101";
        ram[84] = "0b01110110";
        ram[85] = "0b01110111";
        ram[86] = "0b01111000";
        ram[87] = "0b01111001";
        ram[88] = "0b01111010";
        ram[89] = "0b10000011";
        ram[90] = "0b10000100";
        ram[91] = "0b10000101";
        ram[92] = "0b10000110";
        ram[93] = "0b10000111";
        ram[94] = "0b10001000";
        ram[95] = "0b10001001";
        ram[96] = "0b10001010";
        ram[97] = "0b10010010";
        ram[98] = "0b10010011";
        ram[99] = "0b10010100";
        ram[100] = "0b10010101";
        ram[101] = "0b10010110";
        ram[102] = "0b10010111";
        ram[103] = "0b10011000";
        ram[104] = "0b10011001";
        ram[105] = "0b10011010";
        ram[106] = "0b10100010";
        ram[107] = "0b10100011";
        ram[108] = "0b10100100";
        ram[109] = "0b10100101";
        ram[110] = "0b10100110";
        ram[111] = "0b10100111";
        ram[112] = "0b10101000";
        ram[113] = "0b10101001";
        ram[114] = "0b10101010";
        ram[115] = "0b10110010";
        ram[116] = "0b10110011";
        ram[117] = "0b10110100";
        ram[118] = "0b10110101";
        ram[119] = "0b10110110";
        ram[120] = "0b10110111";
        ram[121] = "0b10111000";
        ram[122] = "0b10111001";
        ram[123] = "0b10111010";
        ram[124] = "0b11000010";
        ram[125] = "0b11000011";
        ram[126] = "0b11000100";
        ram[127] = "0b11000101";
        ram[128] = "0b11000110";
        ram[129] = "0b11000111";
        ram[130] = "0b11001000";
        ram[131] = "0b11001001";
        ram[132] = "0b11001010";
        ram[133] = "0b11010010";
        ram[134] = "0b11010011";
        ram[135] = "0b11010100";
        ram[136] = "0b11010101";
        ram[137] = "0b11010110";
        ram[138] = "0b11010111";
        ram[139] = "0b11011000";
        ram[140] = "0b11011001";
        ram[141] = "0b11011010";
        ram[142] = "0b11100001";
        ram[143] = "0b11100010";
        ram[144] = "0b11100011";
        ram[145] = "0b11100100";
        ram[146] = "0b11100101";
        ram[147] = "0b11100110";
        ram[148] = "0b11100111";
        ram[149] = "0b11101000";
        ram[150] = "0b11101001";
        ram[151] = "0b11101010";
        ram[152] = "0b11110001";
        ram[153] = "0b11110010";
        ram[154] = "0b11110011";
        ram[155] = "0b11110100";
        ram[156] = "0b11110101";
        ram[157] = "0b11110110";
        ram[158] = "0b11110111";
        ram[159] = "0b11111000";
        ram[160] = "0b11111001";
        ram[161] = "0b11111010";


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


SC_MODULE(p_write_jpeg_headfYi) {


static const unsigned DataWidth = 8;
static const unsigned AddressRange = 162;
static const unsigned AddressWidth = 8;

sc_core::sc_in <sc_lv<AddressWidth> > address0;
sc_core::sc_in<sc_logic> ce0;
sc_core::sc_out <sc_lv<DataWidth> > q0;
sc_core::sc_in<sc_logic> reset;
sc_core::sc_in<bool> clk;


p_write_jpeg_headfYi_ram* meminst;


SC_CTOR(p_write_jpeg_headfYi) {
meminst = new p_write_jpeg_headfYi_ram("p_write_jpeg_headfYi_ram");
meminst->address0(address0);
meminst->ce0(ce0);
meminst->q0(q0);


meminst->reset(reset);
meminst->clk(clk);
}
~p_write_jpeg_headfYi() {
    delete meminst;
}


};//endmodule
#endif
