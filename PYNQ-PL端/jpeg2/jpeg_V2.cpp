#include<memory.h>
#include <stdio.h>
#include "jpeg_V2.h"
namespace {
const unsigned char Luminance_RS[64] =
{
	7,   6,   6,   7,   8,   8,   9,   9,
	6,   6,   7,   7,   8,   9,   9,   9,
	7,   7,   7,   8,   8,   9,   9,   9,
	7,   7,   7,   8,   9,   9,   9,   9,
	7,   7,   8,   9,   9,  10,  10,   9,
	7,   8,   9,   9,   9,  10,  10,   9,
	9,   9,   9,   9,  10,  10,  10,  10,
	9,   9,   10,  10, 10,  10,  10,  10
};
const unsigned char Chrominance_RS[64] =
{
	7,   7,   8,   9,   10,  10,  10,  10,
	7,   7,   8,   9,   10,  10,  10,  10,
	8,   8,   9,   10,  10,  10,  10,  10,
	8,   9,   10,  10,  10,  10,  10,  10,
	10,  10,  10,  10,  10,  10,  10,  10,
	10,  10,  10,  10,  10,  10,  10,  10,
	10,  10,  10,  10,  10,  10,  10,  10,
	10,  10,  10,  10,  10,  10,  10,  10
};
const unsigned char Luminance_Quantization_Table[64] =
{
	16,   8,    8,    16,   32,   32,   64,   64,
	8,    8,    16,   16,   32,   64,   64,   64,
	16,   16,   16,   32,   32,   64,   64,   64,
	16,   16,   16,   32,   64,   64,   64,   64,
	16,   16,   32,   64,   64,  128,  128,   64,
	16,   32,   64,   64,   64,  128,  128,   64,
	64,   64,   64,   64,  128,  128,  128,  128,
	64,   64,   128,  128, 128,  128,  128,  128
};
const unsigned char Chrominance_Quantization_Table[64] =
{
	16,   16,   32,   64,   128,  128,  128,  128,
	16,   16,   32,   64,   128,  128,  128,  128,
	32,   32,   64,   128,  128,  128,  128,  128,
	32,   64,   128,  128,  128,  128,  128,  128,
	128,  128,  128,  128,  128,  128,  128,  128,
	128,  128,  128,  128,  128,  128,  128,  128,
	128,  128,  128,  128,  128,  128,  128,  128,
	128,  128,  128,  128,  128,  128,  128,  128
};
//-------------------------------------------------------------------------------
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

//-------------------------------------------------------------------------------
const unsigned char Standard_DC_Luminance_NRCodes[16] =
{		0x00, 0x00, 0x07, 0x01, 0x01, 0x01, 0x01, 0x01,
		0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
};
const unsigned char Standard_DC_Luminance_Values[12] =
{ 		0x04, 0x05, 0x03, 0x02, 0x06, 0x01, 0x00, 0x07,
		0x08, 0x09, 0x0A, 0x0B
};

//-------------------------------------------------------------------------------
const unsigned char Standard_DC_Chrominance_NRCodes[16] =
{ 		0x00, 0x03, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,
		0x01, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00
};
const unsigned char Standard_DC_Chrominance_Values[12] =
{ 		0x00, 0x01, 0x02, 0x03, 0x04, 0x05, 0x06, 0x07,
		0x08, 0x09, 0x0A, 0x0B
};

//-------------------------------------------------------------------------------
const unsigned char Standard_AC_Luminance_NRCodes[16] =
{ 		0x00, 0x02, 0x01, 0x03, 0x03, 0x02, 0x04, 0x03,
		0x05, 0x05, 0x04, 0x04, 0x00, 0x00, 0x01, 0x7d
};
const unsigned char Standard_AC_Luminance_Values[162] =
{
	0x01, 0x02, 0x03, 0x00, 0x04, 0x11, 0x05, 0x12,
	0x21, 0x31, 0x41, 0x06, 0x13, 0x51, 0x61, 0x07,
	0x22, 0x71, 0x14, 0x32, 0x81, 0x91, 0xa1, 0x08,
	0x23, 0x42, 0xb1, 0xc1, 0x15, 0x52, 0xd1, 0xf0,
	0x24, 0x33, 0x62, 0x72, 0x82, 0x09, 0x0a, 0x16,
	0x17, 0x18, 0x19, 0x1a, 0x25, 0x26, 0x27, 0x28,
	0x29, 0x2a, 0x34, 0x35, 0x36, 0x37, 0x38, 0x39,
	0x3a, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48, 0x49,
	0x4a, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58, 0x59,
	0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68, 0x69,
	0x6a, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78, 0x79,
	0x7a, 0x83, 0x84, 0x85, 0x86, 0x87, 0x88, 0x89,
	0x8a, 0x92, 0x93, 0x94, 0x95, 0x96, 0x97, 0x98,
	0x99, 0x9a, 0xa2, 0xa3, 0xa4, 0xa5, 0xa6, 0xa7,
	0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4, 0xb5, 0xb6,
	0xb7, 0xb8, 0xb9, 0xba, 0xc2, 0xc3, 0xc4, 0xc5,
	0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xd2, 0xd3, 0xd4,
	0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda, 0xe1, 0xe2,
	0xe3, 0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9, 0xea,
	0xf1, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8,
	0xf9, 0xfa
};

//-------------------------------------------------------------------------------
const unsigned char Standard_AC_Chrominance_NRCodes[16] =
{ 		0x00, 0x02, 0x01, 0x02, 0x04, 0x04, 0x03, 0x04,
		0x07, 0x05, 0x04, 0x04, 0x00, 0x01, 0x02, 0x77
};
const unsigned char Standard_AC_Chrominance_Values[162] =
{
	0x00, 0x01, 0x02, 0x03, 0x11, 0x04, 0x05, 0x21,
	0x31, 0x06, 0x12, 0x41, 0x51, 0x07, 0x61, 0x71,
	0x13, 0x22, 0x32, 0x81, 0x08, 0x14, 0x42, 0x91,
	0xa1, 0xb1, 0xc1, 0x09, 0x23, 0x33, 0x52, 0xf0,
	0x15, 0x62, 0x72, 0xd1, 0x0a, 0x16, 0x24, 0x34,
	0xe1, 0x25, 0xf1, 0x17, 0x18, 0x19, 0x1a, 0x26,
	0x27, 0x28, 0x29, 0x2a, 0x35, 0x36, 0x37, 0x38,
	0x39, 0x3a, 0x43, 0x44, 0x45, 0x46, 0x47, 0x48,
	0x49, 0x4a, 0x53, 0x54, 0x55, 0x56, 0x57, 0x58,
	0x59, 0x5a, 0x63, 0x64, 0x65, 0x66, 0x67, 0x68,
	0x69, 0x6a, 0x73, 0x74, 0x75, 0x76, 0x77, 0x78,
	0x79, 0x7a, 0x82, 0x83, 0x84, 0x85, 0x86, 0x87,
	0x88, 0x89, 0x8a, 0x92, 0x93, 0x94, 0x95, 0x96,
	0x97, 0x98, 0x99, 0x9a, 0xa2, 0xa3, 0xa4, 0xa5,
	0xa6, 0xa7, 0xa8, 0xa9, 0xaa, 0xb2, 0xb3, 0xb4,
	0xb5, 0xb6, 0xb7, 0xb8, 0xb9, 0xba, 0xc2, 0xc3,
	0xc4, 0xc5, 0xc6, 0xc7, 0xc8, 0xc9, 0xca, 0xd2,
	0xd3, 0xd4, 0xd5, 0xd6, 0xd7, 0xd8, 0xd9, 0xda,
	0xe2, 0xe3, 0xe4, 0xe5, 0xe6, 0xe7, 0xe8, 0xe9,
	0xea, 0xf2, 0xf3, 0xf4, 0xf5, 0xf6, 0xf7, 0xf8,
	0xf9, 0xfa
};






const unsigned char JFIF0[5] =
{
		0x4A,  0x46,  0x49,  0x46,  0x00
};
/*************************const*******************************/

/*************************const*******************************/

}
//-------------------------------------------------------------------------------
//-------------------------------------------------------------------------------
void JpegEncoder::readFromBMP(ftwint &rgb_in)
{
	//
	//clean();
	ftwhls temd;
	RB:for(int i=0;i<640*8;i++)
	{
		temd=rgb_in.read();
		buffer[3*i]=(unsigned char)((temd.data&0xFF0000)>>16);
		buffer[3*i+1]=(unsigned char)((temd.data&0x00FF00)>>8);
		buffer[3*i+2]=(unsigned char)(temd.data&0x0000FF);
	}

}

//-------------------------------------------------------------------------------
void JpegEncoder::_foword_FDC(const char channel_data[64],const unsigned char quant[64] ,short fdc_data[64])
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
			reg[0][0]=(fixfloat)(reg_in[0]+reg_in[7]);
			reg[0][1]=(fixfloat)(reg_in[1]+reg_in[6]);
			reg[0][2]=(fixfloat)(reg_in[2]+reg_in[5]);
			reg[0][3]=(fixfloat)(reg_in[3]+reg_in[4]);
			reg[0][4]=(fixfloat)(reg_in[3]-reg_in[4]);
			reg[0][5]=(fixfloat)(reg_in[2]-reg_in[5]);
			reg[0][6]=(fixfloat)(reg_in[1]-reg_in[6]);
			reg[0][7]=(fixfloat)(reg_in[0]-reg_in[7]);
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
		    fdc_data[ZigZag[i]]=(sec[i]>>quant[i])+((sec[i]&(quzheng<<(quant[i]-1)))>>(quant[i]-1));
		    //fdc_data[ZigZag[i]]=(sec[i]>>quant[i]);
		}

}
//-------------------------------------------------------------------------------
//ftw
void JpegEncoder::_initQualityTables(int quality_scale)
{
	if(quality_scale<=0) quality_scale=1;
	if(quality_scale>=100) quality_scale=99;

	initq1:for(int i=0; i<64; i++)
	{
		m_YTable[ZigZag[i]] = Luminance_Quantization_Table[i];
		m_CbCrTable[ZigZag[i]] = Chrominance_Quantization_Table[i];
	}
}
//-------------------------------------------------------------------------------
/*	ftw
	nr_codes:
	std_table:
	huffman_table
	{
		code_value
		length
	}

*/
void JpegEncoder::_computeHuffmanTable(const unsigned char* nr_codes, const unsigned char* std_table, BitString* huffman_table)
{
	unsigned char pos_in_table = 0;
	unsigned short code_value = 0;

	comhuff1:for(int k = 1; k <= 16; k++)
	{
		comhuff2:for(int j = 1; j <= nr_codes[k-1]; j++)
		{
			huffman_table[std_table[pos_in_table]].value = code_value;
			huffman_table[std_table[pos_in_table]].length = k;
			pos_in_table++;
			code_value++;
		}
		code_value <<= 1;
	}  
}
//-------------------------------------------------------------------------------
void JpegEncoder::_initHuffmanTables(void)
{
	//memset
	_computeHuffmanTable(Standard_DC_Luminance_NRCodes, Standard_DC_Luminance_Values, m_Y_DC_Huffman_Table);
	_computeHuffmanTable(Standard_AC_Luminance_NRCodes, Standard_AC_Luminance_Values, m_Y_AC_Huffman_Table);
	_computeHuffmanTable(Standard_DC_Chrominance_NRCodes, Standard_DC_Chrominance_Values, m_CbCr_DC_Huffman_Table);
	_computeHuffmanTable(Standard_AC_Chrominance_NRCodes, Standard_AC_Chrominance_Values, m_CbCr_AC_Huffman_Table);
}
//-------------------------------------------------------------------------------
void JpegEncoder::_convertColorSpace(int xPos, int yPos, char* yData, char* cbData, char* crData)
{
	xiafloat cal_r,cal_g,cal_b,cal_d,cal_e;
	cal_r=0.299;
	cal_g=0.587;
	cal_b=0.114;
	cal_d=0.56133;
	cal_e=0.71327;
	conver_col1:for (int y=0; y<8; y++)
	{
		conver_col2:for (int x=0; x<8; x++)

		{
			int p = ((y+yPos)*m_width + x+xPos)*3;
			unsigned char R = buffer[p];
			unsigned char G = buffer[p+1];
			unsigned char B = buffer[p+2];
			short yredu= (short)(cal_r * R + cal_g * G + cal_b * B);
			yData[y*8+x] =  (char)(yredu - 128);
			cbData[y*8+x] = (char)(((short)B- yredu)*cal_d);
			crData[y*8+x] = (char)(((short)R- yredu)*cal_e);
		}
	}
}
//-------------------------------------------------------------------------------
JpegEncoder::BitString JpegEncoder::_getBitCode(int value)
{
	BitString ret;
	int v = (value>0) ? value : -value;
	int length = 0;
	bit1:for(length=0; v; v>>=1)
	{
		length++;
	}
	ret.value = value>0 ? value : ((1<<length)+value-1);
	ret.length = length;
	return ret;
};
//-------------------------------------------------------------------------------
void JpegEncoder::_doHuffmanEncoding(const short DU[64], short& prevDC, const BitString* HTDC, const BitString* HTAC,
	BitString* outputBitString, int& bitStringCounts)
{
	BitString EOB = HTAC[0x00];//
	BitString SIXTEEN_ZEROS = HTAC[0xF0];//
	int index=0;
	// encode DC
	int dcDiff = (int)(DU[0] - prevDC);
	prevDC = DU[0];
	if (dcDiff == 0) 
		outputBitString[index++] = HTDC[0];
	else
	{
		BitString bs = _getBitCode(dcDiff);
		outputBitString[index++] = HTDC[bs.length];
		outputBitString[index++] = bs;
	}
	// encode ACs
	int endPos=63; //end0pos = first element in reverse order != 0
	huff1:while((endPos > 0) && (DU[endPos] == 0))
	{
		endPos--;
	}
	huff2:for(int i=1; i<=endPos; )
	{
		int startPos = i;
		huff3:while((DU[i] == 0) && (i <= endPos))
			{
				i++;
			}
		int zeroCounts = i - startPos;
		if (zeroCounts >= 16)
		{
			huff4:for (int j=1; j<=zeroCounts/16; j++)
			{
				outputBitString[index++] = SIXTEEN_ZEROS;
			}
			zeroCounts = zeroCounts%16;
		}
		BitString bs = _getBitCode(DU[i]);
		outputBitString[index++] = HTAC[(zeroCounts << 4) | bs.length];
		outputBitString[index++] = bs;
		i++;
	}
	if (endPos != 63)
	{
		outputBitString[index++] = EOB;
	}
	bitStringCounts = index;
}
//-------------------------------------------------------------------------------
void JpegEncoder::_write_jpeg_header(ohlss &jpeg_out)
{
	//SOI
	_write_word_(0xFF,0xD8, jpeg_out);		// marker = 0xFFD8
	//APPO
	_write_word_(0xFF,0xE0,jpeg_out);		// marker = 0xFFE0
	_write_word_(0x00,0x10, jpeg_out);			// length = 16 for usual JPEG, no thumbnail
	_write_5bytes_(JFIF0, jpeg_out);			// 'JFIF\0'
	_write_byte_(1, jpeg_out);			// version_hi
	_write_byte_(1, jpeg_out);			// version_low
	_write_byte_(0, jpeg_out);			// xyunits = 0 no units, normal density
	_write_word_(0x00,0x01, jpeg_out);			// xdensity
	_write_word_(0x00,0x01, jpeg_out);			// ydensity
	_write_byte_(0, jpeg_out);			// thumbWidth
	_write_byte_(0, jpeg_out);			// thumbHeight
	//DQT
	_write_word_(0xFF,0xDB, jpeg_out);		//marker = 0xFFDB
	_write_word_(0x00,0x84, jpeg_out);			//size=132
	_write_byte_(0, jpeg_out);			//QTYinfo== 0:  bit 0..3: number of QT = 0 (table for Y) 
									//				bit 4..7: precision of QT
									//				bit 8	: 0
	_write_64bytes_(m_YTable, jpeg_out);		//YTable
	_write_byte_(1, jpeg_out);			//QTCbinfo = 1 (quantization table for Cb,Cr)
	_write_64bytes_(m_CbCrTable, jpeg_out);	//CbCrTable

	//SOFO
	_write_word_(0xFF,0xC0, jpeg_out);			//marker = 0xFFC0
	_write_word_(0x00,0x11, jpeg_out);				//length = 17 for a truecolor YCbCr JPG
	_write_byte_(8, jpeg_out);				//precision = 8: 8 bits/sample 
	_write_word_((m_height&0xFF00)>>8,m_height&0xFF, jpeg_out);	//height
	_write_word_((m_width&0xFF00)>>8, m_width&0xFF,jpeg_out);	//width
	_write_byte_(3, jpeg_out);				//nrofcomponents = 3: We encode a truecolor JPG

	_write_byte_(1, jpeg_out);				//IdY = 1
	_write_byte_(0x11, jpeg_out);				//HVY sampling factors for Y (bit 0-3 vert., 4-7 hor.)(SubSamp 1x1)
	_write_byte_(0, jpeg_out);				//QTY  Quantization Table number for Y = 0

	_write_byte_(2, jpeg_out);				//IdCb = 2
	_write_byte_(0x11, jpeg_out);				//HVCb = 0x11(SubSamp 1x1)
	_write_byte_(1, jpeg_out);				//QTCb = 1

	_write_byte_(3, jpeg_out);				//IdCr = 3
	_write_byte_(0x11, jpeg_out);				//HVCr = 0x11 (SubSamp 1x1)
	_write_byte_(1, jpeg_out);				//QTCr Normally equal to QTCb = 1
	
	//DHT
	_write_word_(0xFF,0xC4, jpeg_out);		//marker = 0xFFC4
	_write_word_(0x01,0xA2, jpeg_out);		//length = 0x01A2
	_write_byte_(0, jpeg_out);			//HTYDCinfo bit 0..3	: number of HT (0..3), for Y =0
									//			bit 4		: type of HT, 0 = DC table,1 = AC table
									//			bit 5..7	: not used, must be 0
	_write_16bytes_(Standard_DC_Luminance_NRCodes, jpeg_out);	//DC_L_NRC
	_write_12bytes_(Standard_DC_Luminance_Values, jpeg_out);		//DC_L_VALUE
	_write_byte_(0x10, jpeg_out);			//HTYACinfo
	_write_16bytes_(Standard_AC_Luminance_NRCodes, jpeg_out);
	_write_162bytes_(Standard_AC_Luminance_Values, jpeg_out); //we'll use the standard Huffman tables
	_write_byte_(0x01, jpeg_out);			//HTCbDCinfo
	_write_16bytes_(Standard_DC_Chrominance_NRCodes, jpeg_out);
	_write_12bytes_(Standard_DC_Chrominance_Values, jpeg_out);
	_write_byte_(0x11, jpeg_out);			//HTCbACinfo
	_write_16bytes_(Standard_AC_Chrominance_NRCodes, jpeg_out);
	_write_162bytes_(Standard_AC_Chrominance_Values, jpeg_out);

	//SOS
	_write_word_(0xFF,0xDA, jpeg_out);		//marker = 0xFFC4
	_write_word_(0x00,0x0C, jpeg_out);			//length = 12
	_write_byte_(3, jpeg_out);			//nrofcomponents, Should be 3: truecolor JPG

	_write_byte_(1, jpeg_out);			//Idy=1
	_write_byte_(0, jpeg_out);			//HTY	bits 0..3: AC table (0..3)
									//		bits 4..7: DC table (0..3)
	_write_byte_(2, jpeg_out);			//IdCb
	_write_byte_(0x11, jpeg_out);			//HTCb

	_write_byte_(3, jpeg_out);			//IdCr
	_write_byte_(0x11, jpeg_out);			//HTCr

	_write_byte_(0, jpeg_out);			//Ss not interesting, they should be 0,63,0
	_write_byte_(0x3F, jpeg_out);			//Se
	_write_byte_(0, jpeg_out);			//Bf
}
//-------------------------------------------------------------------------------
void JpegEncoder::_write_byte_(unsigned char value, ohlss &jpeg_out)
{
	outhebyte.data=value;
	jpeg_out<<outhebyte;
}

//-------------------------------------------------------------------------------
void JpegEncoder::_write_word_(const unsigned char inf, const unsigned char sec,ohlss &jpeg_out)
{
	outhebyte.data=inf;
	jpeg_out<<outhebyte;
	outhebyte.data=sec;
	jpeg_out<<outhebyte;
}

//-------------------------------------------------------------------------------
void JpegEncoder::_write_(const unsigned char* p, int byteSize, ohlss &jpeg_out)
{
	for(int i=0;i<byteSize;i++)
	{
		outhebyte.data=p[i];
		jpeg_out<<outhebyte;
	}
}
//-------------------------------------------------------------------------------
void JpegEncoder::_write_64bytes_(const unsigned char p[64], ohlss &jpeg_out)
{
	for(int i=0;i<64;i++)
	{
		outhebyte.data=p[i];
		jpeg_out<<outhebyte;
	}
}
//-------------------------------------------------------------------------------
void JpegEncoder::_write_16bytes_(const unsigned char p[16], ohlss &jpeg_out)
{
	for(int i=0;i<16;i++)
	{
		outhebyte.data=p[i];
		jpeg_out<<outhebyte;
	}
}
//-------------------------------------------------------------------------------
void JpegEncoder::_write_12bytes_(const unsigned char p[12], ohlss &jpeg_out)
{
	for(int i=0;i<12;i++)
	{
		outhebyte.data=p[i];
		jpeg_out<<outhebyte;
	}
}
//-------------------------------------------------------------------------------
void JpegEncoder::_write_162bytes_(const unsigned char p[162], ohlss &jpeg_out)
{
	for(int i=0;i<162;i++)
	{
		outhebyte.data=p[i];
		jpeg_out<<outhebyte;
	}
}
//-------------------------------------------------------------------------------
void JpegEncoder::_write_5bytes_(const unsigned char p[82], ohlss &jpeg_out)
{
	for(int i=0;i<5;i++)
	{
		outhebyte.data=p[i];
		jpeg_out<<outhebyte;
	}
}
//-------------------------------------------------------------------------------
void JpegEncoder::_write_bitstring_(const BitString* bs, int counts, int& newByte, int& newBytePos, ohlss &jpeg_out)
{
	unsigned short mask[16] = {1,2,4,8,16,32,64,128,256,512,1024,2048,4096,8192,16384,32768};
	
	wb1:for(int i=0; i<counts; i++)
	{
		#pragma HLS LOOP_TRIPCOUNT max=129

		#pragma HLS UNROLL
		int value = bs[i].value;
		int posval = bs[i].length - 1;
		wb2:while (posval >= 0)
		{
			if ((value & mask[posval]) != 0)
			{
				newByte = newByte  | mask[newBytePos];
			}
			posval--;
			newBytePos--;
			if (newBytePos < 0)
			{
				// Write to stream
				_write_byte_((unsigned char)(newByte), jpeg_out);
				if (newByte == 0xFF)
				{
					_write_byte_(0x00, jpeg_out);
				}
				// Reinitialize
				newBytePos = 7;
				newByte = 0;
			}
		}
	}
}
//-------------------------------------------------------------------------------
void JpegEncoder::clean(void)
{
	m_width=640;
	m_height=480;
}
//-------------------------------------------------------------------------------
void JpegEncoder::encodeToJPG(ftwint &rgb_in,ohlss &jpeg_out, int quality_scale)
{
	outhebyte.keep=0x1;
	outhebyte.last=0x0;
	_initQualityTables(quality_scale);
	_initHuffmanTables();
	_write_jpeg_header(jpeg_out);
	short prev_DC_Y = 0, prev_DC_Cb = 0, prev_DC_Cr = 0;
	int newByte=0, newBytePos=7;
	int yPos=0;
	en1:for(int count=0; count<60; count++)
	{
		readFromBMP(rgb_in);
		en2:for (int xPos=0; xPos<m_width; xPos+=8)
		{
			char yData[64], cbData[64], crData[64];
			#pragma HLS ARRAY_PARTITION variable=yData block factor=8 dim=1
			#pragma HLS ARRAY_PARTITION variable=cbData block factor=8 dim=1
			#pragma HLS ARRAY_PARTITION variable=crData block factor=8 dim=1
			short yQuant[64], cbQuant[64], crQuant[64];
			_convertColorSpace(xPos, yPos, yData, cbData, crData);

			BitString outputBitString_y[128];
			BitString outputBitString_cr[128];
			BitString outputBitString_cb[128];
			int bitStringCounts_y;
			int bitStringCounts_cb;
			int bitStringCounts_cr;
			//Y
			_foword_FDC(yData,Luminance_RS, yQuant);
			_foword_FDC(cbData, Chrominance_RS, cbQuant);
			_foword_FDC(crData, Chrominance_RS, crQuant);

			_doHuffmanEncoding(yQuant, prev_DC_Y, m_Y_DC_Huffman_Table, m_Y_AC_Huffman_Table, outputBitString_y, bitStringCounts_y);
			_doHuffmanEncoding(cbQuant, prev_DC_Cb, m_CbCr_DC_Huffman_Table, m_CbCr_AC_Huffman_Table, outputBitString_cb, bitStringCounts_cb);
			_doHuffmanEncoding(crQuant, prev_DC_Cr, m_CbCr_DC_Huffman_Table, m_CbCr_AC_Huffman_Table, outputBitString_cr, bitStringCounts_cr);

			_write_bitstring_(outputBitString_y, bitStringCounts_y, newByte, newBytePos, jpeg_out);
			//Cb
			_write_bitstring_(outputBitString_cb, bitStringCounts_cb, newByte, newBytePos, jpeg_out);
			//Cr
			_write_bitstring_(outputBitString_cr, bitStringCounts_cr, newByte, newBytePos, jpeg_out);
		}
	}
}
void jpeg2(ftwint & rgb_in,ohlss & jpeg_out)
{
	JpegEncoder jpeg1;
	int quality_scale=100;
	jpeg1.encodeToJPG(rgb_in , jpeg_out , quality_scale);
	jpeg1._write_byte_(0xFF,jpeg_out);
	jpeg1.outhebyte.last=1;
	jpeg1._write_byte_(0xD9,jpeg_out);
}
