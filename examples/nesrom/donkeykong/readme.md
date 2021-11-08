# Memorias ROM similares a las usadas por la NES

---

## Donkey Kong


### Memorias ROM VHDL

En el directorio [comb](vhd/comb) están las ROM sin reloj (combinacionales)

En el directorio [clk](vhd/clk) están las ROM con reloj

En el directorio [vrl](vrl) están las memorias en verilog, con reloj y sin reloj.

[donkeykong_ntable.vhd](vhd/clk/donkeykong_ntable.vhd): Mapa de teselas (Tabla de nombres) de 2KiB. Por lo tanto hay dos tablas de 1KiB. Al final de cada tabla están los 64 B de la tabla de atributos

[donkeykong_ntable_nt0.vhd](vhd/clk/donkeykong_ntable_nt0.vhd): Mapa de teselas (Tabla de nombres) de 1KiB. Por lo tanto hay una sola tabla, ya que en este juego no se hace _scroll_ y por lo tanto la otra no se utiliza. Al final de la tabla están los 64 B de la tabla de atributos


[donkeykong_ntable_attr.vhd](vhd/clk/donkeykong_ntable_attr.vhd): Los 64 bytes de la tabla de atributos separados de la tabla de nombres

[donkeykong_ptable.vhd](vhd/clk/donkeykong_ptable.vhd): Las teselas (tiles), la tabla de patrones de sprites y de fondo. Con los dos planos de color. 8KiB en total

[donkeykong_ptable_0.vhd](vhd/clk/donkeykong_ptable_0.vhd): Las teselas (tiles), la tabla de patrones de sprites y de fondo. Con el plano de color 0. 4KiB en total

[donkeykong_ptable_1.vhd](vhd/clk/donkeykong_ptable_1.vhd): Las teselas (tiles), la tabla de patrones de sprites y de fondo. Con el plano de color 1. 4KiB en total

[donkeykong_ptablespr.vhd](vhd/clk/donkeykong_ptablespr.vhd): Las teselas (tiles), la tabla de patrones de sprites (sin fondo). Con los dos planos de color. 4KiB en total

[donkeykong_ptablebg.vhd](vhd/clk/donkeykong_ptablebg.vhd): Las teselas (tiles), la tabla de patrones de fondo (sin sprites). Con los dos planos de color. 4KiB en total

[donkeykong_ptablespr_0.vhd](vhd/clk/donkeykong_ptablespr_0.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con el plano de color 0. 2KiB en total

[donkeykong_ptablespr_1.vhd](vhd/clk/donkeykong_ptablespr_1.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con el plano de color 1. 2KiB en total

[donkeykong_ptablebg_0.vhd](vhd/clk/donkeykong_ptablebg_0.vhd): Las teselas (tiles), la tabla de patrones de fondo (sin sprites). Con el plano de color 0. 2KiB en total

[donkeykong_ptablebg_1.vhd](vhd/clk/donkeykong_ptablebg_1.vhd): Las teselas (tiles), la tabla de patrones de fondo (sin sprites). Con el plano de color 1. 2KiB en total

[donkeykong_oam.vhd](vhd/clk/donkeykong_oam_00.vhd): El estado de la memoria de sprites (OAM) en un momento dado

[nespalette_colors.vhd](../nespalette_colors.vhd): Paleta con 64 colores RGB444 de la NES

### Imágenes para depurar

Esta es la pantalla que se quiere mostrar en ese ejemplo:

![Pantalla que se quiere mostrar](donkeykong_screenshot.png)

Sprites:

![Informacion del sprite](donkeykong_sprites_info.png)

Vista de la Tabla de Patrones (memoria ROM de teselas)

![Memoria ROM de teselas](donkeykong_pattern_table.png)



Paleta:

![Menu](donkeykong_paleta.png)



---

