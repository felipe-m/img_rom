------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : car8x8_down.pbm 
--- Filas    : 8 
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


entity ROM1b_1f_car8x8_down is
  port (
    clk  : in  std_logic;   -- reloj
    addr : in  std_logic_vector(3-1 downto 0);
    dout : out std_logic_vector(8-1 downto 0) 
  );
end ROM1b_1f_car8x8_down;


architecture BEHAVIORAL of ROM1b_1f_car8x8_down is
  signal addr_int  : natural range 0 to 2**3-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant filaimg : memostruct := (
       "01111110",
       "00000000",
       "00000000",
       "01000010",
       "11100111",
       "10100101",
       "10000001",
       "10111101"
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

