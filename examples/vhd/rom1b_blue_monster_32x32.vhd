------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : pacman32x32.ppm 
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


entity ROM1b_1f_blue_pacman32x32 is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(5-1 downto 0);
    dout : out std_logic_vector(32-1 downto 0) 
  );
end ROM1b_1f_blue_pacman32x32;


architecture BEHAVIORAL of ROM1b_1f_blue_pacman32x32 is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(32-1 downto 0);
  constant filaimg : memostruct := (
       "11111111111111111111111111111111",
       "11111111111000000000011111111111",
       "11111111100000000000000111111111",
       "11111111000000000000000011111111",
       "11111100000000000000000000111111",
       "11111100000000000000000000111111",
       "11111000000000000000000000011111",
       "11110111100000000011110000001111",
       "11111111111000000111111100001111",
       "11111111111000001111111100000111",
       "11111111111100001111111110000111",
       "11111111111100001111111110000011",
       "11111111111100001111111110000011",
       "11011111111100001111111110000011",
       "11011111111100001111111110000011",
       "11011111111000001111111100000011",
       "11011111111000001111111100000011",
       "11001111110000000111111000000011",
       "10000001000000000000100000000001",
       "10000000000000000000000000000001",
       "10000000000000000000000000000001",
       "10000000000000000000000000000001",
       "10000000000000000000000000000001",
       "10000000000000000000000000000001",
       "10000000000000000000000000000001",
       "10000000000000000000000000000001",
       "10000000000000000000000000000001",
       "10000000000000000000000000000001",
       "10001110000000011100000001110001",
       "10011111000001111110000011111001",
       "10111111110011111111001111111101",
       "11111111111111111111111111111111"
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

