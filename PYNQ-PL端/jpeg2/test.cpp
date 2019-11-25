
#include"ap_int.h"
#include<stdio.h>
#include<iostream>
#include<ap_axi_sdata.h>
typedef ap_fixed<20,15>  fixfloat;
typedef ap_fixed<7,2> fixafloat;
typedef ap_fixed<7,2> xiafloat;
typedef char uint5;
const fixafloat a = (fixafloat)0.70710678;
const fixafloat b = (fixafloat)0.98078528;
const fixafloat c = (fixafloat)0.92387953;
const fixafloat d = (fixafloat)0.83146961;
const fixafloat e = (fixafloat)0.55557023;
const fixafloat f = (fixafloat)0.38268343;
const fixafloat g = (fixafloat)0.19509032;

const fixafloat a_s2 = (fixafloat)1;
const fixafloat b_s2 = (fixafloat)1.38703985;
const fixafloat c_s2 = (fixafloat)1.30656296;
const fixafloat d_s2 = (fixafloat)1.17587560;
const fixafloat e_s2 = (fixafloat)0.78569496;
const fixafloat f_s2 = (fixafloat)0.54119610;
const fixafloat g_s2 = (fixafloat)0.27589938;

const fixafloat e_sub_d_s2 = (fixafloat)-0.39018064;
const fixafloat e_add_d_s2 =  (fixafloat)1.96157056;

const fixafloat	g_sub_b_s2 = (fixafloat)-1.11114047;
const fixafloat	g_add_b_s2 = (fixafloat) 1.66293922;

const fixafloat	c_sub_f_s2 = (fixafloat) 0.76536686;
const fixafloat	c_add_f_s2 = (fixafloat) 1.84775907;
const char ZigZag[64] =
{
	0, 1, 5, 6,14,15,27,28,
	2, 4, 7,13,16,26,29,42,
	3, 8,12,17,25,30,41,43,
	9,11,18,24,31,40,44,53,
	10,19,23,32,39,45,52,54,
	20,22,33,38,46,51,55,60,
	21,34,37,47,50,56,59,61,
	35,36,48,49,57,58,62,63
};
void FDC(const unsigned char channel_data[64])
{
	fixfloat reg[3][8];
	fixfloat reg_in[8];
	fixfloat mid[64];
	short sec[64];
	fixfloat A;
	fixfloat B;
	fixfloat E;
	short quzheng=1;

	FDC1:for(int i=0;i<8;i++)
		{
			for(int j=0;j<8;j++)
				{
					reg_in[j]=channel_data[i*8+j];
				}
			/*************************reg0********************************/
			reg[0][0]=(float)(reg_in[0]+reg_in[7]);
			reg[0][1]=(float)(reg_in[1]+reg_in[6]);
			reg[0][2]=(float)(reg_in[2]+reg_in[5]);
			reg[0][3]=(float)(reg_in[3]+reg_in[4]);
			reg[0][4]=(float)(reg_in[3]-reg_in[4]);
			reg[0][5]=(float)(reg_in[2]-reg_in[5]);
			reg[0][6]=(float)(reg_in[1]-reg_in[6]);
			reg[0][7]=(float)(reg_in[0]-reg_in[7]);
			/*************************reg1********************************/

			A=(reg[0][4]+reg[0][7])*d_s2;
			B=(reg[0][5]+reg[0][6])*b_s2;
			reg[1][0]=reg[0][0]+reg[0][3];
			reg[1][1]=reg[0][1]+reg[0][2];
			reg[1][2]=reg[0][1]-reg[0][2];
			reg[1][3]=reg[0][0]-reg[0][3];
			reg[1][4]=A+(e_s2-d_s2)*reg[0][7];
			reg[1][5]=B+(g_s2-b_s2)*reg[0][6];
			reg[1][6]=B-(g_s2+b_s2)*reg[0][5];
			reg[1][7]=A-(e_s2+d_s2)*reg[0][4];
			/*************************reg2********************************/
			E=(reg[1][2]+reg[1][3])*f_s2;

			reg[2][0]=reg[1][0]+reg[1][1];
			reg[2][1]=reg[1][0]-reg[1][1];
			reg[2][2]=E+(c_s2-f_s2)*reg[1][3];
			reg[2][3]=E-(c_s2+f_s2)*reg[1][3];
			reg[2][5]=reg[1][7]-reg[1][5];
			reg[2][4]=reg[1][4]+reg[1][6];
			reg[2][6]=reg[1][4]-reg[1][6];
			reg[2][7]=reg[1][7]+reg[1][5];

			/*************************mid_data****************************/
			mid[i]=reg[2][0];
			mid[8+i]=(reg[2][7]+reg[2][4])*a;
			mid[16+i]=reg[2][2];
			mid[24+i]=reg[2][5];
			mid[32+i]=reg[2][1];
			mid[40+i]=reg[2][6];
			mid[48+i]=reg[2][3];
			mid[56+i]=(reg[2][7]-reg[2][4])*a;
		}
	FDC5:for(int i=0;i<8;i++)
		{
			/*************************reg0********************************/
			reg[0][0]=(mid[i*8+0]+mid[i*8+7]);
			reg[0][1]=(mid[i*8+1]+mid[i*8+6]);
			reg[0][2]=(mid[i*8+2]+mid[i*8+5]);
			reg[0][3]=(mid[i*8+3]+mid[i*8+4]);
			reg[0][4]=(mid[i*8+3]-mid[i*8+4]);
			reg[0][5]=(mid[i*8+2]-mid[i*8+5]);
			reg[0][6]=(mid[i*8+1]-mid[i*8+6]);
			reg[0][7]=(mid[i*8+0]-mid[i*8+7]);
			/*************************reg1********************************/
			A=(reg[0][4]+reg[0][7])*d_s2;
			B=(reg[0][5]+reg[0][6])*b_s2;

			reg[1][0]=reg[0][0]+reg[0][3];
			reg[1][1]=reg[0][1]+reg[0][2];
			reg[1][2]=reg[0][1]-reg[0][2];
			reg[1][3]=reg[0][0]-reg[0][3];
			reg[1][4]=A+(e_sub_d_s2)*reg[0][7];
			reg[1][5]=B+(g_sub_b_s2)*reg[0][6];
			reg[1][6]=B-(g_add_b_s2)*reg[0][5];
			reg[1][7]=A-(e_add_d_s2)*reg[0][4];
			/*************************reg2********************************/
			E=(reg[1][2]+reg[1][3])*f_s2;

			reg[2][0]=reg[1][0]+reg[1][1];
			reg[2][1]=reg[1][0]-reg[1][1];
			reg[2][2]=E+(c_sub_f_s2)*reg[1][3];
			reg[2][3]=E-(c_add_f_s2)*reg[1][3];
			reg[2][4]=reg[1][4]+reg[1][6];
			reg[2][5]=reg[1][7]-reg[1][5];
			reg[2][6]=reg[1][4]-reg[1][6];
			reg[2][7]=reg[1][7]+reg[1][5];
			/*************************fdc_data****************************/
			sec[i]=(short)reg[2][0];
			sec[8+i]=(short)(reg[2][7]+reg[2][4])*a;
			sec[16+i]=(short)reg[2][2];
			sec[24+i]=(short)reg[2][5];
			sec[32+i]=(short)reg[2][1];
			sec[40+i]=(short)reg[2][6];
			sec[48+i]=(short)reg[2][3];
			sec[56+i]=(short)(reg[2][7]-reg[2][4])*a;
		}

	FDC9:for(int i=0;i<64;i++)
		{
		    //fdc_data[ZigZag[i]]=(sec[i]>>quant[i]x)+(sec[i]&(quzheng<<(quant[i]-1)))>>(quant[i]-1);
		    //fdc_data[ZigZag[i]]=(sec[i]>>quant[i]);
		    printf("%d ,",sec[i]/8);
		    if(i%8==7)
		    printf("\n");
		}

}
int main()
{
//	unsigned char mhhg[64]={
//	    139,144,149,153,155,155,155,155,
//	    141,151,153,156,159,156,156,156,
//	    150,155,160,163,158,156,156,156,
//	    159,161,162,160,160,159,159,159,
//	    159,160,161,162,162,155,155,155,
//	    161,161,161,161,160,157,157,157,
//	    162,162,161,163,162,157,157,157,
//	    162,162,161,161,163,158,158,158
//	    };
//
//	FDC(mhhg);
	    uint5 lengthtables[65535];
		lengthtables[0]=0x0;
		lengthtables[1]=0x1;
		lengthtables[2]=0x2;
		lengthtables[3]=0x2;
		lengthtables[4]=0x3;
		lengthtables[5]=0x3;
		lengthtables[6]=0x3;
		lengthtables[7]=0x3;
		for(int i=8;i<16;i++)
		{
			lengthtables[i]=0x4;
		}
		for(int i=16;i<32;i++)
		{
			lengthtables[i]=0x5;
		}
		for(int i=32;i<64;i++)
		{
			lengthtables[i]=0x6;
		}
		for(int i=64;i<128;i++)
		{
			lengthtables[i]=0x7;
		}
		for(int i=128;i<256;i++)
		{
			lengthtables[i]=0x8;
		}
		for(int i=256;i<512;i++)
		{
			lengthtables[i]=0x9;
		}
		for(int i=512;i<1024;i++)
		{
			lengthtables[i]=0xA;
		}
		for(int i=1024;i<2048;i++)
		{
			lengthtables[i]=0xB;
		}
		for(int i=2048;i<4096;i++)
		{
			lengthtables[i]=0xC;
		}
		for(int i=4096;i<8192;i++)
		{
			lengthtables[i]=0xD;
		}
		for(int i=8192;i<16384;i++)
		{
			lengthtables[i]=0xE;
		}
		for(int i=16384;i<32768;i++)
		{
			lengthtables[i]=0xF;
		}
		for(int i=32768;i<65536;i++)
		{
			lengthtables[i]=0x10;
		}

	char quant=4;
	int value=-562;
	short sdd;
	int v = (value>0) ? value : -value;
	int length = 0;
	for(length=0; v; v>>=1)
	{
		length++;
	}
	//sdd=(numsd>>quant)+((numsd&(1<<(quant-1)))>>(quant-1));
	//printf("%d",length);
	printf("%d",(lengthtables[65535]));
}

