--- Autcmatically generated VHDL ROM from a NES memory file----
---   PALETTE MEMORY
-- https://wiki.nesdev.com/w/index.php/PPU_palettes


---  Original memory dump file name: smario_palette.dmp --
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


entity ROM_PALETTE_SMARIO is
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(5-1 downto 0);  --32 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_PALETTE_SMARIO;

architecture BEHAVIORAL of ROM_PALETTE_SMARIO is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00100010", --    0 -  0x0  :   34 - 0x22
    "00101001", --    1 -  0x1  :   41 - 0x29
    "00011010", --    2 -  0x2  :   26 - 0x1a
    "00001111", --    3 -  0x3  :   15 - 0xf
    "00100010", --    4 -  0x4  :   34 - 0x22
    "00110110", --    5 -  0x5  :   54 - 0x36
    "00010111", --    6 -  0x6  :   23 - 0x17
    "00001111", --    7 -  0x7  :   15 - 0xf
    "00100010", --    8 -  0x8  :   34 - 0x22
    "00110000", --    9 -  0x9  :   48 - 0x30
    "00100001", --   10 -  0xa  :   33 - 0x21
    "00001111", --   11 -  0xb  :   15 - 0xf
    "00100010", --   12 -  0xc  :   34 - 0x22
    "00100111", --   13 -  0xd  :   39 - 0x27
    "00010111", --   14 -  0xe  :   23 - 0x17
    "00001111", --   15 -  0xf  :   15 - 0xf
    "00100010", --   16 - 0x10  :   34 - 0x22
    "00010110", --   17 - 0x11  :   22 - 0x16
    "00100111", --   18 - 0x12  :   39 - 0x27
    "00011000", --   19 - 0x13  :   24 - 0x18
    "00100010", --   20 - 0x14  :   34 - 0x22
    "00011010", --   21 - 0x15  :   26 - 0x1a
    "00110000", --   22 - 0x16  :   48 - 0x30
    "00100111", --   23 - 0x17  :   39 - 0x27
    "00100010", --   24 - 0x18  :   34 - 0x22
    "00010110", --   25 - 0x19  :   22 - 0x16
    "00110000", --   26 - 0x1a  :   48 - 0x30
    "00100111", --   27 - 0x1b  :   39 - 0x27
    "00100010", --   28 - 0x1c  :   34 - 0x22
    "00001111", --   29 - 0x1d  :   15 - 0xf
    "00110110", --   30 - 0x1e  :   54 - 0x36
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
