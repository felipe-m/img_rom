--------------------------------------------------------------------------------
-- Felipe Machado Sanchez
-- Area de Tecnologia Electronica
-- Universidad Rey Juan Carlos
-- https://github.com/felipe-m

-- pintamos la memoria en blanco y negro

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

entity display is
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
end display;

architecture behavioral of display is

  -- pixel en blanco/negro que viene de la memoria. Por tanto es de un unico bit
  signal pixel_memo : std_logic;

begin

  -- la memoria tiene 4 bits de direcciones, ya que tiene 16 filas:
  -- se toman los 4 bits menos significativos de la fila
  -- como fila es unsigned y addr_memo es std_logic_vector, hay que hacer cast
  addr_memo <= std_logic_vector(fila(3 downto 0));


  -- seleccionamos el pixel que viene de la memoria
  -- la imagen tiene 16 columnas, con los 4 bits menos significativos
  -- de la columna se selecciona el bit correspondiente.
  -- Esto es un multiplexor, que estan explicados en el manual:
  --   http://hdl.handle.net/10115/4045
  -- y en estos videos:
  --   https://youtu.be/CQdw-M1ooTI
  --   https://youtu.be/or_vwCTSY8M
  -- lineas de codigo, aunque seguramente esta se entienda mejor, y son 
  -- equivalentes en cuanto al circuito generado
  -- la imagen va a salir en espejo horizontal respecto a la memoria
  with col(3 downto 0) select
    pixel_memo <= dato_memo(0)  when "0000",
                  dato_memo(1)  when "0001",
                  dato_memo(2)  when "0010",
                  dato_memo(3)  when "0011",
                  dato_memo(4)  when "0100",
                  dato_memo(5)  when "0101",
                  dato_memo(6)  when "0110",
                  dato_memo(7)  when "0111",
                  dato_memo(8)  when "1000",
                  dato_memo(9)  when "1001",
                  dato_memo(10) when "1010",
                  dato_memo(11) when "1011",
                  dato_memo(12) when "1100",
                  dato_memo(13) when "1101",
                  dato_memo(14) when "1110",
                  dato_memo(15) when others; -- "0011",

  -- alternativa mas corta para describir el mismo multiplexor anterior
  -- con una sola linea. Aunque seguramente la anterior se entienda mejor,
  -- son equivalentes en cuanto al circuito generado
  -- como la columna es un std_logic_vector, hay que pasarlo a entero
  --pixel_memo <= dato_memo(to_integer(col(3 downto 0)));


  -- pintamos el pixel blanco o negro segun el color del pixel
  -- se podria utilizar una paleta y pintar de otros dos colores
  P_display: Process (visible, pixel_memo)
  begin
    -- cuando no es visible se ponen todos los colores a negro
    rojo   <= (others=>'0');
    verde  <= (others=>'0');
    azul   <= (others=>'0');
    if visible = '1' then
      -- como en esta FPGA son 4 bits de canal de color, ponemos los 4 bits
      -- al valor del pixel
      rojo(0) <= pixel_memo;
      rojo(1) <= pixel_memo;
      rojo(2) <= pixel_memo;
      rojo(3) <= pixel_memo;
      -- una manera mas simplificada de hacer lo anterior es la siguiente
      -- ya que nos ahorramos lineas. Con una sentencia ponemos todos los bits
      -- de verde al valor de pixel_memo. Son equivalentes.
      verde <= (others=>pixel_memo);
      azul  <= (others=>pixel_memo); 
    end if;
  end process;
  
end Behavioral;

