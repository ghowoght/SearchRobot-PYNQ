-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity encodeToJPG_p_anoKfY_rom is 
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


architecture rtl of encodeToJPG_p_anoKfY_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "00000001", 1 => "00000010", 2 => "00000011", 3 => "00000000", 
    4 => "00000100", 5 => "00010001", 6 => "00000101", 7 => "00010010", 
    8 => "00100001", 9 => "00110001", 10 => "01000001", 11 => "00000110", 
    12 => "00010011", 13 => "01010001", 14 => "01100001", 15 => "00000111", 
    16 => "00100010", 17 => "01110001", 18 => "00010100", 19 => "00110010", 
    20 => "10000001", 21 => "10010001", 22 => "10100001", 23 => "00001000", 
    24 => "00100011", 25 => "01000010", 26 => "10110001", 27 => "11000001", 
    28 => "00010101", 29 => "01010010", 30 => "11010001", 31 => "11110000", 
    32 => "00100100", 33 => "00110011", 34 => "01100010", 35 => "01110010", 
    36 => "10000010", 37 => "00001001", 38 => "00001010", 39 => "00010110", 
    40 => "00010111", 41 => "00011000", 42 => "00011001", 43 => "00011010", 
    44 => "00100101", 45 => "00100110", 46 => "00100111", 47 => "00101000", 
    48 => "00101001", 49 => "00101010", 50 => "00110100", 51 => "00110101", 
    52 => "00110110", 53 => "00110111", 54 => "00111000", 55 => "00111001", 
    56 => "00111010", 57 => "01000011", 58 => "01000100", 59 => "01000101", 
    60 => "01000110", 61 => "01000111", 62 => "01001000", 63 => "01001001", 
    64 => "01001010", 65 => "01010011", 66 => "01010100", 67 => "01010101", 
    68 => "01010110", 69 => "01010111", 70 => "01011000", 71 => "01011001", 
    72 => "01011010", 73 => "01100011", 74 => "01100100", 75 => "01100101", 
    76 => "01100110", 77 => "01100111", 78 => "01101000", 79 => "01101001", 
    80 => "01101010", 81 => "01110011", 82 => "01110100", 83 => "01110101", 
    84 => "01110110", 85 => "01110111", 86 => "01111000", 87 => "01111001", 
    88 => "01111010", 89 => "10000011", 90 => "10000100", 91 => "10000101", 
    92 => "10000110", 93 => "10000111", 94 => "10001000", 95 => "10001001", 
    96 => "10001010", 97 => "10010010", 98 => "10010011", 99 => "10010100", 
    100 => "10010101", 101 => "10010110", 102 => "10010111", 103 => "10011000", 
    104 => "10011001", 105 => "10011010", 106 => "10100010", 107 => "10100011", 
    108 => "10100100", 109 => "10100101", 110 => "10100110", 111 => "10100111", 
    112 => "10101000", 113 => "10101001", 114 => "10101010", 115 => "10110010", 
    116 => "10110011", 117 => "10110100", 118 => "10110101", 119 => "10110110", 
    120 => "10110111", 121 => "10111000", 122 => "10111001", 123 => "10111010", 
    124 => "11000010", 125 => "11000011", 126 => "11000100", 127 => "11000101", 
    128 => "11000110", 129 => "11000111", 130 => "11001000", 131 => "11001001", 
    132 => "11001010", 133 => "11010010", 134 => "11010011", 135 => "11010100", 
    136 => "11010101", 137 => "11010110", 138 => "11010111", 139 => "11011000", 
    140 => "11011001", 141 => "11011010", 142 => "11100001", 143 => "11100010", 
    144 => "11100011", 145 => "11100100", 146 => "11100101", 147 => "11100110", 
    148 => "11100111", 149 => "11101000", 150 => "11101001", 151 => "11101010", 
    152 => "11110001", 153 => "11110010", 154 => "11110011", 155 => "11110100", 
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

entity encodeToJPG_p_anoKfY is
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

architecture arch of encodeToJPG_p_anoKfY is
    component encodeToJPG_p_anoKfY_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    encodeToJPG_p_anoKfY_rom_U :  component encodeToJPG_p_anoKfY_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


