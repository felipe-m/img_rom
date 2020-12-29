--- Autcmatically generated VHDL ROM from a Instruction Memory Dump file ----
--- using RARS https://github.com/TheThirdOne/rars ----
---   Source file with assembly instruction info


---  Original memory dump file name: text_asm.txt --
------ Felipe Machado -----------------------------------
------ Area de Tecnologia Electronica -----------
------ Universidad Rey Juan Carlos ----------------------
------ https://github.com/felipe-m ----------------------
---------------------------------------------------------
----- Memory without clock -----

----- Ports ---------------------------------------------
-- Inputs   ---------------------------------------------
--   --clk  :  clock signal
--   addr :  memory address
-- Outputs  ---------------------------------------------
--   dout :  memory data out  (no clock: in the same clock cycle)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM_RVINSTR is
  port (
    --clk : in  std_logic;   -- clock
    addr : in  std_logic_vector(4-1 downto 0);  --16 memory positions
    dout : out std_logic_vector(32-1 downto 0) -- memory data width
  );
end ROM_RVINSTR;

architecture behavioural of ROM_RVINSTR is
  signal addr_int  : natural range 0 to 2**4-1;
  type memostruct is array(0 to 16-1) of std_logic_vector(32-1 downto 0);
  constant instr_mem : memostruct := (
                        --    address increment x4
                        --    address   :  assembly 
                        --  dec -  hex  
      0 => x"00100293", --    0 -  0x0  :  addi x5,x0,1
      1 => x"00c29293", --    4 -  0x4  :  slli x5,x5,12
      2 => x"00100313", --    8 -  0x8  :  addi x6,x0,1
      3 => x"00d31313", --   12 -  0xc  :  slli x6,x6,13
      4 => x"40000393", --   16 - 0x10  :  addi x7,x0,0x00000400
      5 => x"0002c403", --   20 - 0x14  :  lbu x8,0(x5)
      6 => x"00830023", --   24 - 0x18  :  sb x8,0(x6)
      7 => x"00128293", --   28 - 0x1c  :  addi x5,x5,1
      8 => x"00130313", --   32 - 0x20  :  addi x6,x6,1
      9 => x"fff38393", --   36 - 0x24  :  addi x7,x7,0xffffffff
     10 => x"fe0396e3", --   40 - 0x28  :  bne x7,x0,0xffffffec
 others => x"00000013"  --        NOP    : addi, x0, x0, 0 
    );
begin
  addr_int <= to_integer(unsigned(addr));
  --P_ROM: process(clk)
  --begin
  --  if clk'event and clk='1' then
      dout <= instr_mem(addr_int);
  --  end if;
  --end process;
end behavioural;
