------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : laberinto.pbm 
--- Filas    : 15 
--- Columnas : 20 
--- Color    :  Blanco y negro. 2 niveles (1 bit)


-- sin senal de reloj

------ Puertos -------------------------------------------
-- Entradas ----------------------------------------------
--    addr_a :  direccion de la memoria
--    addr_b :  direccion de la memoria
-- Salidas  ----------------------------------------------
--    dout_a :  dato de 20 bits de la direccion addr (un ciclo despues)
--    dout_b :  dato de 20 bits de la direccion addr (un ciclo despues)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM1b_1f_laberinto_2p is
  port (
    clk  : in  std_logic;   -- reloj
    addr_a : in  std_logic_vector(4-1 downto 0);
    addr_b : in  std_logic_vector(4-1 downto 0);
    dout_a : out std_logic_vector(20-1 downto 0);
    dout_b : out std_logic_vector(20-1 downto 0) 
  );
end ROM1b_1f_laberinto_2p;


architecture BEHAVIORAL of ROM1b_1f_laberinto_2p is
  signal addr_a_int  : natural range 0 to 2**4-1;
  signal addr_b_int  : natural range 0 to 2**4-1;
  type memostruct is array (natural range<>) of std_logic_vector(20-1 downto 0);
  constant filaimg : memostruct := (
       "11111111100111111111",
       "10000100000000010001",
       "10110101111101010101",
       "10000000010001000101",
       "00101111010111110100",
       "10100000000000100101",
       "10110101100110101101",
       "00000101000010000000",
       "10110101111110111101",
       "10010000000000000001",
       "11010101110110111011",
       "10000100010000100001",
       "10111111011011111101",
       "10000000000000000001",
       "11111111100111111111"
        );

begin

  addr_a_int <= TO_INTEGER(unsigned(addr_a));
  addr_b_int <= TO_INTEGER(unsigned(addr_b));

  dout_a <= filaimg(addr_a_int);
  dout_b <= filaimg(addr_b_int);

end BEHAVIORAL;

