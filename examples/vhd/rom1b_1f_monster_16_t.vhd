------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : monster_16.pbm 
--- Filas    : 16 
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


entity ROM1b_1f_monster_16 is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(4-1 downto 0);
    dout : out std_logic_vector(16-1 downto 0) 
  );
end ROM1b_1f_monster_16;


architecture BEHAVIORAL of ROM1b_1f_monster_16 is
  signal addr_int  : natural range 0 to 2**4-1;
  type memostruct is array (natural range<>) of std_logic_vector(16-1 downto 0);
  constant filaimg : memostruct := (
       "0000000000000000",
       "0000001111000000",
       "0000111111110000",
       "0001111111111000",
       "0010011110011100",
       "0000001100001100",
       "0011001111001100",
       "0111001111001110",
       "0110011110011110",
       "0111111111111110",
       "0111111111111110",
       "0111111111111110",
       "0111111111111110",
       "0110111001110110",
       "0100011001100010",
       "0000000000000000"
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

