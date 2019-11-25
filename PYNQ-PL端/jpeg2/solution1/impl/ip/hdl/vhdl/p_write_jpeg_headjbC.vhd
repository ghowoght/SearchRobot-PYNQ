-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity p_write_jpeg_headjbC_rom is 
    generic(
             DWIDTH     : integer := 8; 
             AWIDTH     : integer := 8; 
             MEM_SIZE    : integer := 162
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of p_write_jpeg_headjbC_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000000", 1 => "00000001", 2 => "00000010", 3 => "00000011", 
    4 => "00010001", 5 => "00000100", 6 => "00000101", 7 => "00100001", 
    8 => "00110001", 9 => "00000110", 10 => "00010010", 11 => "01000001", 
    12 => "01010001", 13 => "00000111", 14 => "01100001", 15 => "01110001", 
    16 => "00010011", 17 => "00100010", 18 => "00110010", 19 => "10000001", 
    20 => "00001000", 21 => "00010100", 22 => "01000010", 23 => "10010001", 
    24 => "10100001", 25 => "10110001", 26 => "11000001", 27 => "00001001", 
    28 => "00100011", 29 => "00110011", 30 => "01010010", 31 => "11110000", 
    32 => "00010101", 33 => "01100010", 34 => "01110010", 35 => "11010001", 
    36 => "00001010", 37 => "00010110", 38 => "00100100", 39 => "00110100", 
    40 => "11100001", 41 => "00100101", 42 => "11110001", 43 => "00010111", 
    44 => "00011000", 45 => "00011001", 46 => "00011010", 47 => "00100110", 
    48 => "00100111", 49 => "00101000", 50 => "00101001", 51 => "00101010", 
    52 => "00110101", 53 => "00110110", 54 => "00110111", 55 => "00111000", 
    56 => "00111001", 57 => "00111010", 58 => "01000011", 59 => "01000100", 
    60 => "01000101", 61 => "01000110", 62 => "01000111", 63 => "01001000", 
    64 => "01001001", 65 => "01001010", 66 => "01010011", 67 => "01010100", 
    68 => "01010101", 69 => "01010110", 70 => "01010111", 71 => "01011000", 
    72 => "01011001", 73 => "01011010", 74 => "01100011", 75 => "01100100", 
    76 => "01100101", 77 => "01100110", 78 => "01100111", 79 => "01101000", 
    80 => "01101001", 81 => "01101010", 82 => "01110011", 83 => "01110100", 
    84 => "01110101", 85 => "01110110", 86 => "01110111", 87 => "01111000", 
    88 => "01111001", 89 => "01111010", 90 => "10000010", 91 => "10000011", 
    92 => "10000100", 93 => "10000101", 94 => "10000110", 95 => "10000111", 
    96 => "10001000", 97 => "10001001", 98 => "10001010", 99 => "10010010", 
    100 => "10010011", 101 => "10010100", 102 => "10010101", 103 => "10010110", 
    104 => "10010111", 105 => "10011000", 106 => "10011001", 107 => "10011010", 
    108 => "10100010", 109 => "10100011", 110 => "10100100", 111 => "10100101", 
    112 => "10100110", 113 => "10100111", 114 => "10101000", 115 => "10101001", 
    116 => "10101010", 117 => "10110010", 118 => "10110011", 119 => "10110100", 
    120 => "10110101", 121 => "10110110", 122 => "10110111", 123 => "10111000", 
    124 => "10111001", 125 => "10111010", 126 => "11000010", 127 => "11000011", 
    128 => "11000100", 129 => "11000101", 130 => "11000110", 131 => "11000111", 
    132 => "11001000", 133 => "11001001", 134 => "11001010", 135 => "11010010", 
    136 => "11010011", 137 => "11010100", 138 => "11010101", 139 => "11010110", 
    140 => "11010111", 141 => "11011000", 142 => "11011001", 143 => "11011010", 
    144 => "11100010", 145 => "11100011", 146 => "11100100", 147 => "11100101", 
    148 => "11100110", 149 => "11100111", 150 => "11101000", 151 => "11101001", 
    152 => "11101010", 153 => "11110010", 154 => "11110011", 155 => "11110100", 
    156 => "11110101", 157 => "11110110", 158 => "11110111", 159 => "11111000", 
    160 => "11111001", 161 => "11111010" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "block_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "block";

begin 


memory_access_guard_0: process (addr0) 
begin
      addr0_tmp <= addr0;
--synthesis translate_off
      if (CONV_INTEGER(addr0) > mem_size-1) then
           addr0_tmp <= (others => '0');
      else 
           addr0_tmp <= addr0;
      end if;
--synthesis translate_on
end process;

p_rom_access: process (clk)  
begin 
    if (clk'event and clk = '1') then
        if (ce0 = '1') then 
            q0 <= mem(CONV_INTEGER(addr0_tmp)); 
        end if;
    end if;
end process;

end rtl;

Library IEEE;
use IEEE.std_logic_1164.all;

entity p_write_jpeg_headjbC is
    generic (
        DataWidth : INTEGER := 8;
        AddressRange : INTEGER := 162;
        AddressWidth : INTEGER := 8);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of p_write_jpeg_headjbC is
    component p_write_jpeg_headjbC_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    p_write_jpeg_headjbC_rom_U :  component p_write_jpeg_headjbC_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


