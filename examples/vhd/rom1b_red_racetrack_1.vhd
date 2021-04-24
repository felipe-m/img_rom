------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : racetrack_1.ppm 
--- Filas    : 30 
--- Columnas : 32 
--- Color    :  Blanco y negro. 2 niveles (1 bit)



------ Puertos -------------------------------------------
-- Entradas ----------------------------------------------
--    clk  :  senal de reloj
--    addr :  direccion de la memoria
-- Salidas  ----------------------------------------------
--    dout :  dato de 32 bits de la direccion addr (un ciclo despues)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM1b_1f_red_racetrack_1 is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(5-1 downto 0);
    dout : out std_logic_vector(32-1 downto 0) 
  );
end ROM1b_1f_red_racetrack_1;


architecture BEHAVIORAL of ROM1b_1f_red_racetrack_1 is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(32-1 downto 0);
  constant filaimg : memostruct := (
       "00000000000000000000000000000000",
       "00000111111111111000000000000000",
       "00011111111111111100000000000000",
       "00111111111111111110000000000000",
       "01111111111111111111000000000000",
       "01111111111111111111111111110000",
       "01111111111111111111111111111000",
       "01111111111101111111111111111100",
       "01111111110000111111111111111100",
       "01111111100000011111111111111110",
       "01111111100000000000000111111110",
       "01111111000000000001111111111110",
       "01111111000000000011111111111110",
       "01111111100000000011111111111110",
       "01111111111000000011111111111100",
       "01111111111100000011111111110000",
       "01111111111110000011111111110000",
       "01111111111111000011111111111000",
       "00111111111111100011111111111100",
       "00011111111111100011111111111110",
       "00001111111111100001111111111110",
       "00000001111111100000000111111110",
       "00000000111111111111111111111110",
       "00000000111111111011111111111110",
       "00000000111111111011111111111110",
       "00000000111111111011111111111110",
       "00000000111111111011111111111110",
       "00000000011111111011111111111100",
       "00000000001111111111111111111000",
       "00000000000000000000000000000000"
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

