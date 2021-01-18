--- Autcmatically generated VHDL ROM from a NES memory file----
---   PALETTE MEMORY
-- https://wiki.nesdev.com/w/index.php/PPU_palettes


---  Original memory dump file name: lawnmower_palette.dmp --
------ Felipe Machado -----------------------------------
------ Area de Tecnologia Electronica -----------
------ Universidad Rey Juan Carlos ----------------------
------ https://github.com/felipe-m ----------------------
---------------------------------------------------------
----- Memory without clock -----

----- Ports ---------------------------------------------
-- Inputs   ---------------------------------------------
--   -- clk  :  clock signal
--    addr :  memory address
-- Salidas  ---------------------------------------------
--    dout :  memory data out  (no clock: in the same clock cycle)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM_PALETTE_LAWN is
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(5-1 downto 0);  --32 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_PALETTE_LAWN;

architecture BEHAVIORAL of ROM_PALETTE_LAWN is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00001111", --    0 -  0x0  :   15 - 0xf
    "00010001", --    1 -  0x1  :   17 - 0x11
    "00100001", --    2 -  0x2  :   33 - 0x21
    "00110000", --    3 -  0x3  :   48 - 0x30
    "00001111", --    4 -  0x4  :   15 - 0xf
    "00001010", --    5 -  0x5  :   10 - 0xa
    "00111000", --    6 -  0x6  :   56 - 0x38
    "00100101", --    7 -  0x7  :   37 - 0x25
    "00001111", --    8 -  0x8  :   15 - 0xf
    "00001010", --    9 -  0x9  :   10 - 0xa
    "00011010", --   10 -  0xa  :   26 - 0x1a
    "00101001", --   11 -  0xb  :   41 - 0x29
    "00001111", --   12 -  0xc  :   15 - 0xf
    "00001010", --   13 -  0xd  :   10 - 0xa
    "00010000", --   14 -  0xe  :   16 - 0x10
    "00100000", --   15 -  0xf  :   32 - 0x20
    "00001111", --   16 - 0x10  :   15 - 0xf
    "00010001", --   17 - 0x11  :   17 - 0x11
    "00100111", --   18 - 0x12  :   39 - 0x27
    "00100000", --   19 - 0x13  :   32 - 0x20
    "00001111", --   20 - 0x14  :   15 - 0xf
    "00101010", --   21 - 0x15  :   42 - 0x2a
    "00111001", --   22 - 0x16  :   57 - 0x39
    "00100101", --   23 - 0x17  :   37 - 0x25
    "00001111", --   24 - 0x18  :   15 - 0xf
    "00000110", --   25 - 0x19  :    6 - 0x6
    "00100111", --   26 - 0x1a  :   39 - 0x27
    "00110111", --   27 - 0x1b  :   55 - 0x37
    "00001111", --   28 - 0x1c  :   15 - 0xf
    "00001111", --   29 - 0x1d  :   15 - 0xf
    "00000000", --   30 - 0x1e  :    0 - 0x0
    "00110000"  --   31 - 0x1f  :   48 - 0x30
    );
begin
  addr_int <= to_integer(unsigned(addr));
  --P_ROM: process(clk)
  --begin
  --  if clk'event and clk='1' then
      dout <= table_mem(addr_int);
  --  end if;
  --end process;
end BEHAVIORAL;
