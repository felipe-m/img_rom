--- Autcmatically generated VHDL ROM from a NES memory file----
---   PALETTE MEMORY
-- https://wiki.nesdev.com/w/index.php/PPU_palettes


---  Original memory dump file name: donkeykong_palette.dmp --
------ Felipe Machado -----------------------------------
------ Area de Tecnologia Electronica -----------
------ Universidad Rey Juan Carlos ----------------------
------ https://github.com/felipe-m ----------------------
---------------------------------------------------------
----- Memory with clock ------

----- Ports ---------------------------------------------
-- Inputs   ---------------------------------------------
--    clk  :  clock signal
--    addr :  memory address
-- Salidas  ---------------------------------------------
--    dout :  memory data out  (a clock cycle later)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM_PALETTE_DONKEYKONG is
  port (
    clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(5-1 downto 0);  --32 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_PALETTE_DONKEYKONG;

architecture BEHAVIORAL of ROM_PALETTE_DONKEYKONG is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00001111", --    0 -  0x0  :   15 - 0xf
    "00010101", --    1 -  0x1  :   21 - 0x15
    "00101100", --    2 -  0x2  :   44 - 0x2c
    "00010010", --    3 -  0x3  :   18 - 0x12
    "00001111", --    4 -  0x4  :   15 - 0xf
    "00100111", --    5 -  0x5  :   39 - 0x27
    "00000010", --    6 -  0x6  :    2 - 0x2
    "00010111", --    7 -  0x7  :   23 - 0x17
    "00001111", --    8 -  0x8  :   15 - 0xf
    "00110000", --    9 -  0x9  :   48 - 0x30
    "00110110", --   10 -  0xa  :   54 - 0x36
    "00000110", --   11 -  0xb  :    6 - 0x6
    "00001111", --   12 -  0xc  :   15 - 0xf
    "00110000", --   13 -  0xd  :   48 - 0x30
    "00101100", --   14 -  0xe  :   44 - 0x2c
    "00100100", --   15 -  0xf  :   36 - 0x24
    "00001111", --   16 - 0x10  :   15 - 0xf
    "00000010", --   17 - 0x11  :    2 - 0x2
    "00110110", --   18 - 0x12  :   54 - 0x36
    "00010110", --   19 - 0x13  :   22 - 0x16
    "00001111", --   20 - 0x14  :   15 - 0xf
    "00110000", --   21 - 0x15  :   48 - 0x30
    "00100111", --   22 - 0x16  :   39 - 0x27
    "00100100", --   23 - 0x17  :   36 - 0x24
    "00001111", --   24 - 0x18  :   15 - 0xf
    "00010110", --   25 - 0x19  :   22 - 0x16
    "00110000", --   26 - 0x1a  :   48 - 0x30
    "00110111", --   27 - 0x1b  :   55 - 0x37
    "00001111", --   28 - 0x1c  :   15 - 0xf
    "00000110", --   29 - 0x1d  :    6 - 0x6
    "00100111", --   30 - 0x1e  :   39 - 0x27
    "00000010"  --   31 - 0x1f  :    2 - 0x2
    );
begin
  addr_int <= to_integer(unsigned(addr));
  P_ROM: process(clk)
  begin
    if clk'event and clk='1' then
      dout <= table_mem(addr_int);
    end if;
  end process;
end BEHAVIORAL;
