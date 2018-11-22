------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : monster_16x32_normal_scared.pbm 
--- Filas    : 32 
--- Columnas : 16 
--- Color    :  Blanco y negro. 2 niveles (1 bit)



------ Puertos -------------------------------------------
-- Entradas ----------------------------------------------
--    clk  :  senal de reloj
--    addr :  direccion de la memoria
-- Salidas  ----------------------------------------------
--    dout :  dato de 16 bits de la direccion addr (un ciclo despues)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM1b_1f_monster_16x32_normal_scared is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(5-1 downto 0);
    dout : out std_logic_vector(16-1 downto 0) 
  );
end ROM1b_1f_monster_16x32_normal_scared;


architecture BEHAVIORAL of ROM1b_1f_monster_16x32_normal_scared is
  signal addr_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(16-1 downto 0);
  constant filaimg : memostruct := (
       "1111111111111111",
       "1111110000111111",
       "1111000000001111",
       "1110000000000111",
       "1101100001100011",
       "1111110011110011",
       "1100110000110011",
       "1000110000110001",
       "1001100001100001",
       "1000000000000001",
       "1000000000000001",
       "1000000000000001",
       "1000000000000001",
       "1001000110001001",
       "1011100110011101",
       "1111111111111111",
       "1111111111111111",
       "1111110000111111",
       "1111000000001111",
       "1110000000000111",
       "1100000000000011",
       "1100000000000011",
       "1100011001100011",
       "1000011001100001",
       "1000000000000001",
       "1000000000000001",
       "1001100110011001",
       "1010011001100101",
       "1000000000000001",
       "1001000110001001",
       "1011100110011101",
       "1111111111111111"
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

