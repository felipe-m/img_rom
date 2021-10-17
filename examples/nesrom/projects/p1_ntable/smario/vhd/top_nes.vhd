--------------------------------------------------------------------------------
-- Felipe Machado Sanchez
-- Area de Tecnologia Electronica
-- Universidad Rey Juan Carlos
-- https://github.com/felipe-m

-- First example of NES background
-- Draws the NES background using just the Name Table
-- Memory without clock
-- As a result, only the pattern indexes are displayed, using a different color
-- for each 8x8 NES grid cell


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.VGA_PKG.ALL; 

entity top_nes_1_ntable is
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

end top_nes_1_ntable;

architecture structural of top_nes_1_ntable is

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

  component ppu_1_ntable
    Port (
      -- In ports
      --rst          : in std_logic;
      --clk          : in std_logic;
      visible      : in std_logic;
      col          : in unsigned(10-1 downto 0);
      fila         : in unsigned(10-1 downto 0);
      d_ntable     : in std_logic_vector(8-1 downto 0);
      addr_ntable  : out std_logic_vector(10-1 downto 0); -- only one nametable

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

  signal col      : unsigned(10-1 downto 0);
  signal fila     : unsigned(10-1 downto 0);
  signal visible  : std_logic;

  signal addr_ntable : std_logic_vector(10-1 downto 0);
  signal d_ntable : std_logic_vector(8-1 downto 0);

begin

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
    
  PINTA : ppu_1_ntable
    Port Map(
      --rst        => rst,
      --clk        => clk,
      visible    => visible,
      col        => col,
      fila       => fila,
      d_ntable   => d_ntable,
      addr_ntable=> addr_ntable,
      rojo       => rojo,
      verde      => verde,
      azul       => azul
  );
    
end structural;

