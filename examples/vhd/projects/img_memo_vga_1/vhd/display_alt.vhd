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

-- otra manera de describirlo
entity display_alt is
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
end display_alt;

architecture behavioral of display_alt is

begin

  -- la memoria tiene 4 bits de direcciones, ya que tiene 16 filas:
  -- se toman los 4 bits menos significativos de la fila
  -- como fila es unsigned y addr_memo es std_logic_vector, hay que hacer cast
  addr_memo <= std_logic_vector(fila(3 downto 0));

  P_display: Process (visible, col, dato_memo)
  begin
    -- cuando no es visible se ponen todos los colores a negro
    rojo   <= (others=>'0');
    verde  <= (others=>'0');
    azul   <= (others=>'0');
    if visible = '1' then
      -- la imagen tiene 16 columnas, con los 4 bits menos significativos
      -- de la columna se selecciona el bit correspondiente. Esto en realidad
      -- es una forma condensada de describir un multiplexor
      -- como la columna es un std_logic_vector, hay que pasarlo a entero
      rojo  <= (others=>dato_memo(to_integer(col(3 downto 0)))); 
      verde <= (others=>dato_memo(to_integer(col(3 downto 0)))); 
      azul  <= (others=>dato_memo(to_integer(col(3 downto 0)))); 
      -- la manera extendida de describirlo seria la siguiente
      -- es equivalente pero mucho mas larga:
      --case col(3 downto 0) is
      --  when "0000" =>
      --    -- ponemos los 4 bits de rojo al valor de la memoria
      --    rojo(0) <= dato_memo(0);
      --    rojo(1) <= dato_memo(0);
      --    rojo(2) <= dato_memo(0);
      --    rojo(3) <= dato_memo(0);
      --    -- para no poner los 4 bits, esto hace lo mismo
      --    verde<= (others=>dato_memo(0));
      --    azul <= (others=>dato_memo(0));
      --  when "0001" =>
      --    rojo <= (others=>dato_memo(1));
      --    verde<= (others=>dato_memo(1));
      --    azul <= (others=>dato_memo(1));
      --  when "0010" =>
      --    rojo <= (others=>dato_memo(2));
      --    verde<= (others=>dato_memo(2));
      --    azul <= (others=>dato_memo(2));
      --  when "0011" =>
      --    rojo <= (others=>dato_memo(3));
      --    verde<= (others=>dato_memo(3));
      --    azul <= (others=>dato_memo(3));
      --  when "0100" =>
      --    rojo <= (others=>dato_memo(4));
      --    verde<= (others=>dato_memo(4));
      --    azul <= (others=>dato_memo(4));
      --  when "0101" =>
      --    rojo <= (others=>dato_memo(5));
      --    verde<= (others=>dato_memo(5));
      --    azul <= (others=>dato_memo(5));
      --  when "0110" =>
      --    rojo <= (others=>dato_memo(6));
      --    verde<= (others=>dato_memo(6));
      --    azul <= (others=>dato_memo(6));
      --  when "0111" =>
      --    rojo <= (others=>dato_memo(7));
      --    verde<= (others=>dato_memo(7));
      --    azul <= (others=>dato_memo(7));
      --  when "1000" =>
      --    rojo <= (others=>dato_memo(8));
      --    verde<= (others=>dato_memo(8));
      --    azul <= (others=>dato_memo(8));
      --  when "1001" =>
      --    rojo <= (others=>dato_memo(9));
      --    verde<= (others=>dato_memo(9));
      --    azul <= (others=>dato_memo(9));
      --  when "1010" =>
      --    rojo <= (others=>dato_memo(10));
      --    verde<= (others=>dato_memo(10));
      --    azul <= (others=>dato_memo(10));
      --  when "1011" =>
      --    rojo <= (others=>dato_memo(11));
      --    verde<= (others=>dato_memo(11));
      --    azul <= (others=>dato_memo(11));
      --  when "1100" =>
      --    rojo <= (others=>dato_memo(12));
      --    verde<= (others=>dato_memo(12));
      --    azul <= (others=>dato_memo(12));
      --  when "1101" =>
      --    rojo <= (others=>dato_memo(13));
      --    verde<= (others=>dato_memo(13));
      --    azul <= (others=>dato_memo(13));
      --  when "1110" =>
      --    rojo <= (others=>dato_memo(14));
      --    verde<= (others=>dato_memo(14));
      --    azul <= (others=>dato_memo(14));
      --  when others => --"1111" =>
      --    rojo <= (others=>dato_memo(15));
      --    verde<= (others=>dato_memo(15));
      --    azul <= (others=>dato_memo(15));
      --
      --end case;
    end if;
  end process;
  
end Behavioral;

