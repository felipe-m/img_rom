--------------------------------------------------------------------------------
-- Felipe Machado Sanchez
-- Area de Tecnologia Electronica
-- Universidad Rey Juan Carlos
-- https://github.com/felipe-m

-- Pinta el fondo de la NES a 512x480 (NES 256x240:  x2)
-- utilizando solo la tabla de nombres, pone un color para cada indice de patron

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.VGA_PKG.ALL; 

entity ppu_1_ntable is
  Port (
    -- In ports
    --rst          : in std_logic;
    --clk          : in std_logic;
    visible      : in std_logic;
    col          : in unsigned(10-1 downto 0);
    fila         : in unsigned(10-1 downto 0);
    d_ntable     : in std_logic_vector(8-1 downto 0);
    addr_ntable  : out std_logic_vector(10-1 downto 0);
    -- Out ports
    rojo         : out std_logic_vector(c_nb_red-1 downto 0);
    verde        : out std_logic_vector(c_nb_green-1 downto 0);
    azul         : out std_logic_vector(c_nb_blue-1 downto 0)
  );
end ppu_1_ntable;

architecture behavioral of ppu_1_ntable is

  -- fila y columna de la NES (8 bits)
  signal col_nes   : unsigned (7 downto 0);
  signal fila_nes  : unsigned (7 downto 0);

  -- 8x8 cuadricula de filas y columnas de la NES: 5 bits
  -- 32x30 cuadriculas: 5 bits col y fila de cuadricula
  signal col_cuad  : unsigned(4 downto 0);
  signal fila_cuad : unsigned(4 downto 0);

begin

  col_nes   <= col(8 downto 1);
  fila_nes  <= fila(8 downto 1);

  col_cuad  <= col_nes(7 downto 3); -- equivalente a col(8 downto 4);
  fila_cuad <= fila_nes(7 downto 3); -- equivalent to fila(8 downto 4);

  addr_ntable(9 downto 0) <= std_logic_vector(fila_cuad & col_cuad);

  P_pinta: Process (visible, col, d_ntable)
  begin
    rojo   <= (others=>'0');
    verde  <= (others=>'0');
    azul   <= (others=>'0');
    if visible = '1' then
      if col(9) = '0' then -- less than 512
        --rojo  <= not d_ntable (7 downto 4); -- 4 bits 
        --verde <= not d_ntable (7 downto 4);
        --azul  <= not d_ntable (7 downto 4);
        -- colorful alternative
        azul  <= not d_ntable (7 downto 4); -- 4 bits 
        verde <= d_ntable (5 downto 2);
        rojo  <= d_ntable (3 downto 0);
      end if;
    end if;
  end process;
  
  
end Behavioral;

