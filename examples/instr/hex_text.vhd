--- Autcmatically generated VHDL ROM from a Instruction Memory Dump file ----
--- using RARS https://github.com/TheThirdOne/rars ----
---   Source file has no instruction information


---  Original memory dump file name: hex_text.txt --
------ Felipe Machado -----------------------------------
------ Area de Tecnologia Electronica -----------
------ Universidad Rey Juan Carlos ----------------------
------ https://github.com/felipe-m ----------------------
---------------------------------------------------------
----- Memory without clock -----

----- Ports ---------------------------------------------
-- Inputs   ---------------------------------------------
--   --clk  :  clock signal
--   a :  memory address
-- Outputs  ---------------------------------------------
--   d_o :  memory data out  (no clock: in the same clock cycle)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity MEM_INST is
  port (
    --clk : in  std_logic;   -- clock
    a : in  std_logic_vector(4-1 downto 0);  --10 memory positions
    d_o : out std_logic_vector(32-1 downto 0) -- memory data width
  );
end MEM_INST;

architecture behavioural of MEM_INST is
  signal addr_int  : natural range 0 to 2**4-1;
  type memostruct is array(0 to 10-1) of std_logic_vector(32-1 downto 0);
  constant instr_mem : memostruct := (
                        --    address increment x4
                   --    address
                   --  dec -  hex  
    x"00100293", --    0 -  0x0
    x"00c29293", --    4 -  0x4
    x"00100313", --    8 -  0x8
    x"00d31313", --   12 -  0xc
    x"40000393", --   16 - 0x10
    x"0002c403", --   20 - 0x14
    x"00830023", --   24 - 0x18
    x"00128293", --   28 - 0x1c
    x"00130313", --   32 - 0x20
    x"fff38393", --   36 - 0x24
    x"fe0396e3"  --   40 - 0x28
    );
begin
  addr_int <= to_integer(unsigned(a));
  --P_ROM: process(clk)
  --begin
  --  if clk'event and clk='1' then
      d_o <= instr_mem(addr_int);
  --  end if;
  --end process;
end behavioural;
