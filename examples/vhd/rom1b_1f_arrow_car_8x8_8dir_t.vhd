------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : arrow_car_8x8_8dir.pbm 
--- Filas    : 64 
--- Columnas : 8 
--- Color    :  Blanco y negro. 2 niveles (1 bit)



------ Puertos -------------------------------------------
-- Entradas ----------------------------------------------
--    clk  :  senal de reloj
--    addr :  direccion de la memoria
-- Salidas  ----------------------------------------------
--    dout :  dato de 8 bits de la direccion addr (un ciclo despues)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM1b_1f_arrow_car_8x8_8dir is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(6-1 downto 0);
    dout : out std_logic_vector(8-1 downto 0) 
  );
end ROM1b_1f_arrow_car_8x8_8dir;


architecture BEHAVIORAL of ROM1b_1f_arrow_car_8x8_8dir is
  signal addr_int  : natural range 0 to 2**6-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant filaimg : memostruct := (
       "11100111",
       "11100111",
       "11100111",
       "11100111",
       "00000000",
       "10000001",
       "11000011",
       "11100111",
       "11110111",
       "11110011",
       "11110001",
       "00000000",
       "00000000",
       "11110001",
       "11110011",
       "11110111",
       "11100111",
       "11000011",
       "10000001",
       "00000000",
       "11100111",
       "11100111",
       "11100111",
       "11100111",
       "11101111",
       "11001111",
       "10001111",
       "00000000",
       "00000000",
       "10001111",
       "11001111",
       "11101111",
       "01111110",
       "00000000",
       "00000000",
       "01000010",
       "11100111",
       "10100101",
       "10000001",
       "10111101",
       "00001111",
       "10011000",
       "10001101",
       "10000001",
       "10000001",
       "10001101",
       "10011000",
       "00001111",
       "10111101",
       "10000001",
       "10100101",
       "11100111",
       "01000010",
       "00000000",
       "00000000",
       "01111110",
       "11110000",
       "00011001",
       "10110001",
       "10000001",
       "10000001",
       "10110001",
       "00011001",
       "11110000"
        );

begin

  addr_int <= TO_INTEGER(unsigned(addr));

  P_ROM: process (clk)
  begin
    if clk'event and clk='1' then
      dout <= filaimg(addr_int);
    end if;
  end process;

end BEHAVIORAL;

