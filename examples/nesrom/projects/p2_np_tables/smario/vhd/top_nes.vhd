--------------------------------------------------------------------------------
-- Felipe Machado Sanchez
-- Area de Tecnologia Electronica
-- Universidad Rey Juan Carlos
-- https://github.com/felipe-m

-- Second example of NES background
-- Draws the NES background using just the Name Table and Pattern Table
-- Pattern table is split in 2 planes. Memories without clock
-- As a result, only 4 colors are displayed. No Attributes or palettes


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.VGA_PKG.ALL; 

entity top_nes_2_nptables is
  port(
    -- IN PORTS
    rst          : in std_logic;
    clk          : in std_logic;
    -- OUT PORTS
    rojo         : out std_logic_vector(c_nb_red-1 downto 0);
    verde        : out std_logic_vector(c_nb_green-1 downto 0);
    azul         : out std_logic_vector(c_nb_blue-1 downto 0);
    hsinc        : out std_logic;
    vsinc        : out std_logic
  );

end top_nes_2_nptables;

architecture structural of top_nes_2_nptables is

  component sincro_vga
    Port (
      -- In ports
      rst        : in std_logic;
      clk        : in std_logic;
      -- Out ports
      visible    : out std_logic;
      hsinc      : out std_logic;
      vsinc      : out std_logic;
      col        : out unsigned(10-1 downto 0);
      fila       : out unsigned(10-1 downto 0)
    );
  end component;

  component ppu
    Port (
      -- In ports
      --rst          : in std_logic;
      --clk          : in std_logic;
      visible      : in std_logic;
      col          : in unsigned(10-1 downto 0);
      fila         : in unsigned(10-1 downto 0);
      -- memories
      d_ntable     : in std_logic_vector(8-1 downto 0);
      addr_ntable  : out std_logic_vector(10-1 downto 0); -- only one nametable
        -- pattern tables divided in 2 planes
      d_ptable0    : in std_logic_vector(8-1 downto 0);
      d_ptable1    : in std_logic_vector(8-1 downto 0);
      addr_ptable  : out std_logic_vector(11-1 downto 0);

      -- Out ports
      rojo         : out std_logic_vector(c_nb_red-1 downto 0);
      verde        : out std_logic_vector(c_nb_green-1 downto 0);
      azul         : out std_logic_vector(c_nb_blue-1 downto 0)
    );
  end component;

  component ROM_NTABLE_SMARIO_TRASPAS
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(10-1 downto 0);  --1024 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
  end component;

  component ROM_PTABLE_MARIO_TRASPAS_BG_PLN0
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(11-1 downto 0);  --2048 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
  end component;

  component ROM_PTABLE_MARIO_TRASPAS_BG_PLN1
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(11-1 downto 0);  --2048 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
  end component;

  signal col      : unsigned(10-1 downto 0);
  signal fila     : unsigned(10-1 downto 0);
  signal visible  : std_logic;

  signal addr_ntable : std_logic_vector(10-1 downto 0);
  signal d_ntable : std_logic_vector(8-1 downto 0);

  signal addr_ptable : std_logic_vector(11-1 downto 0);
  signal d_ptable0 : std_logic_vector(8-1 downto 0);
  signal d_ptable1 : std_logic_vector(8-1 downto 0);

begin

  PTABLE0: ROM_PTABLE_MARIO_TRASPAS_BG_PLN0
    Port Map(
      addr      => addr_ptable,
      dout      => d_ptable0
    );

  PTABLE1: ROM_PTABLE_MARIO_TRASPAS_BG_PLN1
    Port Map(
      addr      => addr_ptable,
      dout      => d_ptable1
    );

  NTABLE: ROM_NTABLE_SMARIO_TRASPAS
    Port Map(
      addr      => addr_ntable,
      dout      => d_ntable
    );

  SINCRO : sincro_vga
    Port Map(
      rst        => rst,
      clk        => clk,
      visible    => visible,
      hsinc      => hsinc,
      vsinc      => vsinc,
      col        => col,
      fila       => fila
  );
    
  PINTA : ppu
    Port Map(
      --rst        => rst,
      --clk        => clk,
      visible    => visible,
      col        => col,
      fila       => fila,
      d_ntable   => d_ntable,
      addr_ntable=> addr_ntable,
      d_ptable0  => d_ptable0,
      d_ptable1  => d_ptable1,
      addr_ptable=> addr_ptable,
      rojo       => rojo,
      verde      => verde,
      azul       => azul
  );
    
end structural;

