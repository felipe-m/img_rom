--------------------------------------------------------------------------------
-- Felipe Machado Sanchez
-- Area de Tecnologia Electronica
-- Universidad Rey Juan Carlos
-- https://github.com/felipe-m

-- Segundo ejemplo del fondo de la NES
-- Pinta el fondo de la NES a 512x480 (NES 256x240:  x2)
-- Usando solo la tabla de nombres y de patrones (4 colores sin atributos)
-- Sin paletas ni atributos

-- Second example of NES background
-- Draws the NES background using just the Name Table and Pattern Table
-- Pattern table is split in 2 planes. Memories without clock
-- As a result, only 4 colors are displayed. No Attributes or palettes

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.VGA_PKG.ALL; 

entity ppu is
  Port (
    -- In ports
    --rst          : in std_logic;
    --clk          : in std_logic;
    visible      : in std_logic;
    col          : in unsigned(10-1 downto 0);
    fila         : in unsigned(10-1 downto 0);
    d_ntable     : in std_logic_vector(8-1 downto 0);
    addr_ntable  : out std_logic_vector(10-1 downto 0);
      -- pattern tables divided in 2 planes
    d_ptable0    : in std_logic_vector(8-1 downto 0);
    d_ptable1    : in std_logic_vector(8-1 downto 0);
    addr_ptable  : out std_logic_vector(11-1 downto 0);
    -- Out ports
    rojo         : out std_logic_vector(c_nb_red-1 downto 0);
    verde        : out std_logic_vector(c_nb_green-1 downto 0);
    azul         : out std_logic_vector(c_nb_blue-1 downto 0)
  );
end ppu;

architecture behavioral of ppu is

  -- fila y columna de la NES (8 bits)
  signal col_nes   : unsigned (7 downto 0);
  signal fila_nes  : unsigned (7 downto 0);

  -- internal column and row of the NES (3 bits)
  signal col_in   : unsigned (2 downto 0);
  signal fila_in  : unsigned (2 downto 0);

  -- inverted (1's complement) of the col_in value. It is integer
  signal col_in_inv : integer range 0 to 7;

  -- 8x8 cuadricula de filas y columnas de la NES: 5 bits
  -- 32x30 cuadriculas: 5 bits col y fila de cuadricula
  signal col_cuad  : unsigned(4 downto 0);
  signal fila_cuad : unsigned(4 downto 0);

  signal color_index : unsigned (1 downto 0);

begin

  col_nes   <= col(8 downto 1);
  fila_nes  <= fila(8 downto 1);

  col_in  <= col_nes(2 downto 0); -- equivalente a col(3 downto 1);
  fila_in <= fila_nes(2 downto 0); -- equivalent to fila(3 downto 1);

  col_cuad  <= col_nes(7 downto 3); -- equivalente a col(8 downto 4);
  fila_cuad <= fila_nes(7 downto 3); -- equivalent to fila(8 downto 4);

  addr_ntable <= std_logic_vector(fila_cuad & col_cuad);

  addr_ptable <= d_ntable & std_logic_vector(fila_in);

  col_in_inv <= to_integer(not(col_in));
  color_index <= d_ptable1(col_in_inv) & d_ptable0(col_in_inv);

  P_pinta: Process (visible, col, color_index)
  begin
    rojo   <= (others=>'0');
    verde  <= (others=>'0');
    azul   <= (others=>'0');
    if visible = '1' then
      if col(9) = '0' then -- less than 512
        case color_index is
          when "00" => -- background blue sky #22
            rojo  <= "0101";
            verde <= "1001";
            azul  <= "1111";
          when "01" => -- color 1: light brown #36
            rojo  <= "1111";
            verde <= "1100";
            azul  <= "1010";
          when "10" => -- color 2: dark brown #17
            rojo  <= "1010";
            verde <= "0100";
            azul  <= "0000";
          when others => -- color 3: black  #0F
            rojo  <= "0000";
            verde <= "0000";
            azul  <= "0000";
        end case;
      end if;
    end if;
  end process;
  
end behavioral;

