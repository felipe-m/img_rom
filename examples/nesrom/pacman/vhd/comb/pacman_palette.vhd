--- Autcmatically generated VHDL ROM from a NES memory file----
---   PALETTE MEMORY
-- https://wiki.nesdev.com/w/index.php/PPU_palettes


---  Original memory dump file name: pacman_palette.dmp --
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


entity ROM_PALETTE_PACMAN is
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(5-1 downto 0);  --32 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_PALETTE_PACMAN;

architecture BEHAVIORAL of ROM_PALETTE_PACMAN is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00001111", --    0 -  0x0  :   15 - 0xf
    "00100000", --    1 -  0x1  :   32 - 0x20
    "00001111", --    2 -  0x2  :   15 - 0xf
    "00000110", --    3 -  0x3  :    6 - 0x6
    "00001111", --    4 -  0x4  :   15 - 0xf
    "00010001", --    5 -  0x5  :   17 - 0x11
    "00001111", --    6 -  0x6  :   15 - 0xf
    "00100111", --    7 -  0x7  :   39 - 0x27
    "00001111", --    8 -  0x8  :   15 - 0xf
    "00010110", --    9 -  0x9  :   22 - 0x16
    "00100110", --   10 -  0xa  :   38 - 0x26
    "00000110", --   11 -  0xb  :    6 - 0x6
    "00001111", --   12 -  0xc  :   15 - 0xf
    "00011001", --   13 -  0xd  :   25 - 0x19
    "00010111", --   14 -  0xe  :   23 - 0x17
    "00010010", --   15 -  0xf  :   18 - 0x12
    "00001111", --   16 - 0x10  :   15 - 0xf
    "00100111", --   17 - 0x11  :   39 - 0x27
    "00100000", --   18 - 0x12  :   32 - 0x20
    "00000110", --   19 - 0x13  :    6 - 0x6
    "00001111", --   20 - 0x14  :   15 - 0xf
    "00010001", --   21 - 0x15  :   17 - 0x11
    "00100000", --   22 - 0x16  :   32 - 0x20
    "00110011", --   23 - 0x17  :   51 - 0x33
    "00001111", --   24 - 0x18  :   15 - 0xf
    "00100001", --   25 - 0x19  :   33 - 0x21
    "00100000", --   26 - 0x1a  :   32 - 0x20
    "00100001", --   27 - 0x1b  :   33 - 0x21
    "00001111", --   28 - 0x1c  :   15 - 0xf
    "00010110", --   29 - 0x1d  :   22 - 0x16
    "00100000", --   30 - 0x1e  :   32 - 0x20
    "00010111"  --   31 - 0x1f  :   23 - 0x17
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
