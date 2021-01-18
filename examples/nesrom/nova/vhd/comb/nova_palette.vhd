--- Autcmatically generated VHDL ROM from a NES memory file----
---   PALETTE MEMORY
-- https://wiki.nesdev.com/w/index.php/PPU_palettes


---  Original memory dump file name: nova_palette.dmp --
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


entity ROM_PALETTE_NOVA is
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(5-1 downto 0);  --32 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_PALETTE_NOVA;

architecture BEHAVIORAL of ROM_PALETTE_NOVA is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00110001", --    0 -  0x0  :   49 - 0x31
    "00011011", --    1 -  0x1  :   27 - 0x1b
    "00101011", --    2 -  0x2  :   43 - 0x2b
    "00110111", --    3 -  0x3  :   55 - 0x37
    "00110001", --    4 -  0x4  :   49 - 0x31
    "00101101", --    5 -  0x5  :   45 - 0x2d
    "00111101", --    6 -  0x6  :   61 - 0x3d
    "00110000", --    7 -  0x7  :   48 - 0x30
    "00110001", --    8 -  0x8  :   49 - 0x31
    "00010111", --    9 -  0x9  :   23 - 0x17
    "00100111", --   10 -  0xa  :   39 - 0x27
    "00110111", --   11 -  0xb  :   55 - 0x37
    "00110001", --   12 -  0xc  :   49 - 0x31
    "00000110", --   13 -  0xd  :    6 - 0x6
    "00010110", --   14 -  0xe  :   22 - 0x16
    "00100110", --   15 -  0xf  :   38 - 0x26
    "00110001", --   16 - 0x10  :   49 - 0x31
    "00010010", --   17 - 0x11  :   18 - 0x12
    "00101010", --   18 - 0x12  :   42 - 0x2a
    "00110000", --   19 - 0x13  :   48 - 0x30
    "00110001", --   20 - 0x14  :   49 - 0x31
    "00101101", --   21 - 0x15  :   45 - 0x2d
    "00111101", --   22 - 0x16  :   61 - 0x3d
    "00110000", --   23 - 0x17  :   48 - 0x30
    "00110001", --   24 - 0x18  :   49 - 0x31
    "00000110", --   25 - 0x19  :    6 - 0x6
    "00010110", --   26 - 0x1a  :   22 - 0x16
    "00110110", --   27 - 0x1b  :   54 - 0x36
    "00110001", --   28 - 0x1c  :   49 - 0x31
    "00010110", --   29 - 0x1d  :   22 - 0x16
    "00100111", --   30 - 0x1e  :   39 - 0x27
    "00110111"  --   31 - 0x1f  :   55 - 0x37
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
