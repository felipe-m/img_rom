--------------------------------------------------------------------------------
-- Felipe Machado Sanchez
-- Departameto de Tecnologia Electronica
-- Universidad Rey Juan Carlos
-- http://gtebim.es/~fmachado
--
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

library WORK;
use WORK.VGA_PKG.ALL; 

entity sincro_vga is
  Port (
    -- In ports
    rst        : in std_logic;
    clk        : in std_logic;
    -- Out ports
    visible    : out std_logic;
    hsinc      : out std_logic;
    vsinc      : out std_logic;
    col        : out unsigned(10-1 downto 0);
    fila       : out unsigned(10-1 downto 0)
  );
  
end sincro_vga;

architecture Behavioral of sincro_vga is

  constant c_nb_cont_clk : natural := 2; -- 2 bits para contar de 0 a 3
  constant c_fincontclk : natural := 4; -- cuentas de ciclo de reloj por pixel

  constant c_on          : std_logic := '1'; -- how the push buttons are active

  signal cont_clk      : unsigned(c_nb_cont_clk-1 downto 0);
  signal cont_pxl      : unsigned(10-1 downto 0);
  signal cont_line     : unsigned(10-1 downto 0);

  signal new_pxl    : std_logic;
  signal new_line   : std_logic;

  signal end_cont_pxl   : std_logic;
  signal end_cont_line  : std_logic;

  signal visible_pxl  : std_logic;
  signal visible_line : std_logic;


begin

  col    <= cont_pxl;
  fila   <= cont_line;
  visible    <= '1' when visible_pxl='1' and visible_line='1' else '0';

---------------------------------------------------------
  -- Divisor de frecuencia. Contador de ciclos de reloj
---------------------------------------------------------
  P_cont_clk: Process (rst, clk)
  begin
    if rst = c_on then
      cont_clk <= (others=>'0');
    elsif clk'event and Clk='1' then
      if new_pxl = '1' then -- cont_clk = c_div_clk_vga-1 then
        cont_clk <= (others=>'0');
      else
        cont_clk <= cont_clk + 1;
      end if;
    end if;
  end process;

  -- sentencias combinacionales del divisor de frecuencia

  -- fin de cuenta, nuevo pixel
  new_pxl <= '1' when cont_clk = c_fincontclk-1 else '0'; 

--------------------------------------------------
  -- Proceso contador de pixeles (columnas)
--------------------------------------------------

  P_cont_pxl: Process (rst, clk)
  begin
    if rst = c_on then
      cont_pxl <= (others=>'0');
    elsif clk'event and Clk='1' then
      if new_pxl = '1' then
        if end_cont_pxl = '1' then
          cont_pxl <= (others=>'0');
        else
          cont_pxl <= cont_pxl + 1;
        end if;
      end if;
    end if;
  end process;

  -- fin de cuenta pixel
  end_cont_pxl <= '1' when (cont_pxl = c_pxl_total-1) else '0'; 
  -- nueva linea: cuando es el fin de cuenta y llega un nuevo pixel
  new_line <= end_cont_pxl and new_pxl;

  -- salidas pixel visible y sincronismo horizontal
  P_pxl_out: Process(rst, cont_pxl)
  begin
    if rst = c_on then
      visible_pxl <= '0';
      hsinc <= not c_synch_act;
    elsif cont_pxl < c_pxl_visible then
      visible_pxl <= '1';
      hsinc <= not c_synch_act;
    elsif cont_pxl < c_pxl_2_fporch then
      visible_pxl <= '0';
      hsinc <= not c_synch_act;
    elsif cont_pxl < c_pxl_2_synch then
      visible_pxl <= '0';
      hsinc <= c_synch_act; -- sincronismo activo
    else
      visible_pxl <= '0';
      hsinc <= not c_synch_act; 
    end if;
  end process;

--------------------------------------------------
  -- Proceso contador de lineas (filas)
--------------------------------------------------

  P_cont_line: Process (clk, rst)
  begin
    if rst = c_on then
      cont_line <= (others=>'0');
    elsif clk'event and Clk='1' then
      if new_line = '1' then
        if end_cont_line = '1' then
          cont_line <= (others=>'0');
        else
          cont_line <= cont_line + 1;
        end if;
      end if;
    end if;
  end process;

  -- fin de cuenta linea
  end_cont_line <= '1' when (cont_line = c_line_total-1) else '0'; 

  -- salidas linea visible y sincronismo vertical
  P_line_out: Process(rst,cont_line)
  begin
    if rst = c_on then
      visible_line <= '0';
      vsinc <= not c_synch_act;
    elsif cont_line < c_line_visible then
      visible_line <= '1';
      vsinc <= not c_synch_act;
    elsif cont_line < c_line_2_fporch then
      visible_line <= '0';
      vsinc <= not c_synch_act;
    elsif cont_line < c_line_2_synch then
      visible_line <= '0';
      vsinc <= c_synch_act; -- sincronismo activo
    else
      visible_line <= '0';
      vsinc <= not c_synch_act; 
    end if;
  end process;

end Behavioral;
