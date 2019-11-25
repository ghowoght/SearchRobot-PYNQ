-- ==============================================================
-- Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2019.1 (64-bit)
-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- ==============================================================
library ieee; 
use ieee.std_logic_1164.all; 
use ieee.std_logic_unsigned.all;

entity encodeToJPG_ZigZag_rom is 
    generic(
             DWIDTH     : integer := 6; 
             AWIDTH     : integer := 6; 
             MEM_SIZE    : integer := 64
    ); 
    port (
          addr0      : in std_logic_vector(AWIDTH-1 downto 0); 
          ce0       : in std_logic; 
          q0         : out std_logic_vector(DWIDTH-1 downto 0);
          clk       : in std_logic
    ); 
end entity; 


architecture rtl of encodeToJPG_ZigZag_rom is 

signal addr0_tmp : std_logic_vector(AWIDTH-1 downto 0); 
type mem_array is array (0 to MEM_SIZE-1) of std_logic_vector (DWIDTH-1 downto 0); 
signal mem : mem_array := (
    0 => "000000", 1 => "000001", 2 => "000101", 3 => "000110", 4 => "001110", 
    5 => "001111", 6 => "011011", 7 => "011100", 8 => "000010", 9 => "000100", 
    10 => "000111", 11 => "001101", 12 => "010000", 13 => "011010", 14 => "011101", 
    15 => "101010", 16 => "000011", 17 => "001000", 18 => "001100", 19 => "010001", 
    20 => "011001", 21 => "011110", 22 => "101001", 23 => "101011", 24 => "001001", 
    25 => "001011", 26 => "010010", 27 => "011000", 28 => "011111", 29 => "101000", 
    30 => "101100", 31 => "110101", 32 => "001010", 33 => "010011", 34 => "010111", 
    35 => "100000", 36 => "100111", 37 => "101101", 38 => "110100", 39 => "110110", 
    40 => "010100", 41 => "010110", 42 => "100001", 43 => "100110", 44 => "101110", 
    45 => "110011", 46 => "110111", 47 => "111100", 48 => "010101", 49 => "100010", 
    50 => "100101", 51 => "101111", 52 => "110010", 53 => "111000", 54 => "111011", 
    55 => "111101", 56 => "100011", 57 => "100100", 58 => "110000", 59 => "110001", 
    60 => "111001", 61 => "111010", 62 => "111110", 63 => "111111" );

attribute syn_rom_style : string;
attribute syn_rom_style of mem : signal is "select_rom";
attribute ROM_STYLE : string;
attribute ROM_STYLE of mem : signal is "distributed";

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

entity encodeToJPG_ZigZag is
    generic (
        DataWidth : INTEGER := 6;
        AddressRange : INTEGER := 64;
        AddressWidth : INTEGER := 6);
    port (
        reset : IN STD_LOGIC;
        clk : IN STD_LOGIC;
        address0 : IN STD_LOGIC_VECTOR(AddressWidth - 1 DOWNTO 0);
        ce0 : IN STD_LOGIC;
        q0 : OUT STD_LOGIC_VECTOR(DataWidth - 1 DOWNTO 0));
end entity;

architecture arch of encodeToJPG_ZigZag is
    component encodeToJPG_ZigZag_rom is
        port (
            clk : IN STD_LOGIC;
            addr0 : IN STD_LOGIC_VECTOR;
            ce0 : IN STD_LOGIC;
            q0 : OUT STD_LOGIC_VECTOR);
    end component;



begin
    encodeToJPG_ZigZag_rom_U :  component encodeToJPG_ZigZag_rom
    port map (
        clk => clk,
        addr0 => address0,
        ce0 => ce0,
        q0 => q0);

end architecture;


