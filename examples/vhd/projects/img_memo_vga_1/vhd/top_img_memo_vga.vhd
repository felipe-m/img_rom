--------------------------------------------------------------------------------
-- Felipe Machado Sanchez
-- Area de Tecnologia Electronica
-- Universidad Rey Juan Carlos
-- https://github.com/felipe-m

-- basic example to display a image in a memory
-- Este diseno muestra una imagen repetida en toda la pantalla.
-- Es el tutorial 1, pero con numeros binarios (tutorial 4)
-- Los tutoriales de esta serie son:
-- Tutorial 1: https://youtu.be/xqytkCZlQxQ Contadores decimales
-- Tutorial 2: https://youtu.be/BteyXG891YI Contadores decimales, mostrar en cuadrícula
-- Tutorial 3: https://youtu.be/2Urj9zEU5R8 Contadores decimales, mostrar en cualquier parte
-- Tutorial 4: https://youtu.be/FY7PnAW4cCI Contadores binarios
-- Tutorial 5: https://youtu.be/ns7eot0pwo0 Ampliar imagen: laberinto
-- Tutorial 6: https://youtu.be/7NUEXcu0BJk Imágenes en color
-- Tutorial 7: https://youtu.be/Oyckgeg_nnE Imágenes en color con una memoria


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.VGA_PKG.ALL; 

entity top_img_memo_1 is
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

end top_img_memo_1;

architecture structural of top_img_memo_1 is

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

  component display
    Port (
      -- In ports
      visible      : in std_logic;
      col          : in unsigned(10-1 downto 0);
      fila         : in unsigned(10-1 downto 0);
      dato_memo    : in std_logic_vector(16-1 downto 0);
      addr_memo    : out std_logic_vector(4-1 downto 0);
      -- Out ports
      rojo         : out std_logic_vector(c_nb_red-1 downto 0);
      verde        : out std_logic_vector(c_nb_green-1 downto 0);
      azul         : out std_logic_vector(c_nb_blue-1 downto 0)
    );
  end component;

  component ROM1b_1f_monster_16
  port (
    clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(4-1 downto 0);--4 bits direcciones:16 posiciones
    dout : out std_logic_vector(16-1 downto 0) -- 16 bits de ancho
  );
  end component;

  signal col      : unsigned(10-1 downto 0);
  signal fila     : unsigned(10-1 downto 0);
  signal visible  : std_logic;

  signal addr_memo : std_logic_vector(4-1 downto 0);
  signal dato_memo : std_logic_vector(16-1 downto 0);

begin

  memo: ROM1b_1f_monster_16
    Port Map(
      clk       => clk,
      addr      => addr_memo,
      dout      => dato_memo
    );

  sinc : sincro_vga
    Port Map(
      rst        => rst,
      clk        => clk,
      visible    => visible,
      hsinc      => hsinc,
      vsinc      => vsinc,
      col        => col,
      fila       => fila
  );
    
  disp : display
    Port Map(
      visible    => visible,
      col        => col,
      fila       => fila,
      dato_memo  => dato_memo,
      addr_memo  => addr_memo,
      rojo       => rojo,
      verde      => verde,
      azul       => azul
  );
    
end structural;

