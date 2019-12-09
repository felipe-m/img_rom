------- ROM creada automaticamente por ppm2rom -----------
------- Felipe Machado -----------------------------------
------- Departamento de Tecnologia Electronica -----------
------- Universidad Rey Juan Carlos ----------------------
------- http://gtebim.es ---------------------------------
----------------------------------------------------------
--------Datos de la imagen -------------------------------
--- Fichero original    : fondo_amplio_40x30.pbm 
--- Filas    : 30 
--- Columnas : 40 
--- Color    :  Blanco y negro. 2 niveles (1 bit)



------ Puertos -------------------------------------------
-- Entradas ----------------------------------------------
--    clk  :  senal de reloj
--    addr :  direccion de la memoria
-- Salidas  ----------------------------------------------
--    dout :  dato de 40 bits de la direccion addr (un ciclo despues)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM1b_1f_fondo_amplio_40x30 is
  port (
    clk  : in  std_logic;   -- reloj
    addr1 : in  std_logic_vector(5-1 downto 0);
    addr2 : in  std_logic_vector(5-1 downto 0);
    dout1 : out std_logic_vector(40-1 downto 0);
    dout2 : out std_logic_vector(40-1 downto 0) 
  );
end ROM1b_1f_fondo_amplio_40x30;

architecture BEHAVIORAL of ROM1b_1f_fondo_amplio_40x30 is
  signal addr1_int  : natural range 0 to 2**5-1;
  signal addr2_int  : natural range 0 to 2**5-1;
  type memostruct is array (natural range<>) of std_logic_vector(40-1 downto 0);
  constant filaimg : memostruct := (
       "0000000010000000000100000000000100000000",
       "0000111111111111111111111111111111110000",
       "0001111111111111111111111111111111111000",
       "0011111111111111111111111111111111111100",
       "0111111111111111111111111111111111111110",
       "0111111000111111111111111111111011111110",
       "0111111111111111111111111111111011111110",
       "1111111111111101111111111111111111111111",
       "0111111111111101111111111111111111111110",
       "0111111111111101111111111111111111111110",
       "0111111111111111111111111111111111111110",
       "0111111111111111111111111111111111111110",
       "0111111111111111111001111111111111111110",
       "0111111111111111110000111111111111111110",
       "1111111111111111100000011111111111111110",
       "0111111111111111110000111111111111111111",
       "0111111111111111111001111111111111111110",
       "0111111111111111111111111111111111111110",
       "0111111111111111111111111111111111111110",
       "0111111111111111111111111111111111111110",
       "0111111100111111111111111000111111111110",
       "0111111100111111111111111111111111111110",
       "1111111111111111111111111111111111111111",
       "0111111111111111111111111111111111111110",
       "0111111111111111111111111111111111111110",
       "0111111111111111111111111111111111111110",
       "0011111111111111111111111111111111111100",
       "0001111111111111111111111111111111111000",
       "0000111111111111111111111111111111110000",
       "0000000010000000000100000000000100000000"
        );

begin

  addr1_int <= TO_INTEGER(unsigned(addr1));
  addr2_int <= TO_INTEGER(unsigned(addr2));

  P_ROM: process (clk)
  begin
    if clk'event and clk='1' then
      dout1 <= filaimg(addr1_int);
      dout2 <= filaimg(addr2_int);
    end if;
  end process;

end BEHAVIORAL;

