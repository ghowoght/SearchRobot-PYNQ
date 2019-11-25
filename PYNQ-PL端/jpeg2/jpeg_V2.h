//#ifndef __JPEG_ENCODER_HEADER__
//#define __JPEG_ENCODER_HEADER__
#include<hls_stream.h>
#include"ap_int.h"
#include<ap_axi_sdata.h>

typedef ap_axis<24,0,0,0> ftwhls;
typedef ap_axis <8,0,0,0> outype;
typedef hls::stream<ftwhls> ftwint;
typedef hls::stream<outype> ohlss;
typedef ap_fixed<24,15> fixfloat;
typedef ap_fixed<11,2> fixafloat;
typedef ap_fixed<11,2> xiafloat;
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
class JpegEncoder
{
public:
	outype outhebyte;
	unsigned char	buffer[640*8*3];
	void clean(void);
	void readFromBMP(ftwint &rgb_in);
	void encodeToJPG(ftwint & rgb_in,ohlss &jpeg_out, int quality_scale);
	void _write_byte_(unsigned char value, ohlss &jpeg_out);//down
private:
	int				m_width=640;
	int				m_height=480;
	unsigned char	m_YTable[64];
	unsigned char	m_CbCrTable[64];
	struct BitString
	{
		int length;	
		int value;
	};

	BitString m_Y_DC_Huffman_Table[12];
	BitString m_Y_AC_Huffman_Table[256];

	BitString m_CbCr_DC_Huffman_Table[12];
	BitString m_CbCr_AC_Huffman_Table[256];


	void _initHuffmanTables(void);//down
	void _initQualityTables(int quality);//down
	void _computeHuffmanTable(const unsigned char* nr_codes, const unsigned char* std_table, BitString* huffman_table);//down
	BitString _getBitCode(int value);//down

	void _convertColorSpace(int xPos, int yPos, char* yData, char* cbData, char* crData);//down
	void _foword_FDC(const char channel_data[64],const unsigned char quant[64] ,short fdc_data[64]);//down
	void _doHuffmanEncoding(const short DU[64], short& prevDC, const BitString* HTDC, const BitString* HTAC,
	BitString* outputBitString, int& bitStringCounts);//down


	void _write_jpeg_header(ohlss &jpeg_out);//down

	void _write_word_(const unsigned char inf,const unsigned char ins ,ohlss &jpeg_out);//down
	void _write_bitstring_(const BitString* bs, int counts, int& newByte, int& newBytePos, ohlss &jpeg_out);//down
	void _write_(const unsigned char* p, int byteSize, ohlss &jpeg_out);//down
	void _write_64bytes_(const unsigned char p[64], ohlss &jpeg_out);
	void _write_16bytes_(const unsigned char p[16], ohlss &jpeg_out);
	void _write_12bytes_(const unsigned char p[12], ohlss &jpeg_out);
	void _write_162bytes_(const unsigned char p[162], ohlss &jpeg_out);
	void _write_5bytes_(const unsigned char p[5], ohlss &jpeg_out);

};

//#endif
