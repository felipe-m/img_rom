------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : pacman.pbm 
--- Filas    : 32 
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


entity ROM1b_1f_pacman is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(5-1 downto 0);
    dout : out std_logic_vector(32-1 downto 0) 
  );
end ROM1b_1f_pacman;


architecture BEHAVIORAL of ROM1b_1f_pacman is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(32-1 downto 0);
  constant filaimg : memostruct := (
       "11111111111111000000111111111111",
       "11111111111100000000000111111111",
       "11111111110000000000000001111111",
       "11111111100000000000000000011111",
       "11111111000000000000111000001111",
       "11111110000000000001111100000111",
       "11111100000000000001111100000111",
       "11111000000000000001111100001111",
       "11111000000000000000111000011111",
       "11110000000000000000000000111111",
       "11110000000000000000000001111111",
       "11100000000000000000000011111111",
       "11100000000000000000000111111111",
       "11000000000000000000001111111111",
       "11000000000000000000011111111111",
       "11000000000000000000111111111111",
       "11000000000000000000111111111111",
       "11000000000000000000011111111111",
       "11000000000000000000001111111111",
       "11100000000000000000000111111111",
       "11100000000000000000000011111111",
       "11110000000000000000000001111111",
       "11110000000000000000000000111111",
       "11111000000000000000000000011111",
       "11111000000000000000000000001111",
       "11111100000000000000000000000111",
       "11111110000000000000000000000111",
       "11111111000000000000000000001111",
       "11111111100000000000000000011111",
       "11111111111000000000000001111111",
       "11111111111110000000000111111111",
       "11111111111111100000111111111111"
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

