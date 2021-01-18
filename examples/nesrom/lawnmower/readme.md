# Memorias ROM similares a las usadas por la NES

Juego sencillo con un varios sprites, una pantalla

https://shiru.untergrund.net/software.shtml

https://github.com/sehugg/lawn-mower-nes

* [Lawn Mower](#Lawn Mower)

---

## Lawn Mower


### Memorias ROM VHDL

En el directorio [comb](vhd/comb) están las ROM sin reloj (combinacionales)

En el directorio [clk](vhd/clk) están las ROM con reloj

En el directorio [vrl](vrl) están las memorias en verilog, con reloj y sin reloj.

[lawnmower_ntable00.vhd](vhd/clk/lawnmower_ntable.vhd): Mapa de mosaicos/teselas (Tabla de nombres) de 2KiB. Por lo tanto hay dos tablas de 1KiB. Al final de cada tabla están los 64 B de la tabla de atributos

[lawnmower_ntable00_nt0.vhd](vhd/clk/lawnmower_ntable_nt0.vhd): Mapa de mosaicos/teselas (Tabla de nombres) de 1KiB. Por lo tanto hay una sola tabla, ya que en este juego no se hace _scroll_ y por lo tanto la otra no se utiliza. Al final de la tabla están los 64 B de la tabla de atributos


[lawnmower_ntable00_attr.vhd](vhd/clk/lawnmower_ntable_attr.vhd): Los 64 bytes de la tabla de atributos separados de la tabla de nombres

[lawnmower_ptable.vhd](vhd/clk/lawnmower_ptable.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con los dos planos de color. 8KiB en total

[lawnmower_ptable_0.vhd](vhd/clk/lawnmower_ptable_0.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con el plano de color 0. 4KiB en total

[lawnmower_ptable_1.vhd](vhd/clk/lawnmower_ptable_1.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con el plano de color 1. 4KiB en total

[lawnmower_ptablespr.vhd](vhd/clk/lawnmower_ptablespr.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con los dos planos de color. 4KiB en total

[lawnmower_ptablebg.vhd](vhd/clk/lawnmower_ptablebg.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con los dos planos de color. 4KiB en total

[lawnmower_ptablespr_0.vhd](vhd/clk/lawnmower_ptablespr_0.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con el plano de color 0. 2KiB en total

[lawnmower_ptablespr_1.vhd](vhd/clk/lawnmower_ptablespr_1.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con el plano de color 1. 2KiB en total

[lawnmower_ptablebg_0.vhd](vhd/clk/lawnmower_ptablebg_0.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con el plano de color 0. 2KiB en total

[lawnmower_ptablebg_1.vhd](vhd/clk/lawnmower_ptablebg_1.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con el plano de color 1. 2KiB en total


[lawnmower_ntable_start_nt0.vhd](vhd/clk/lawnmower_ntable_start_nt0.vhd): El mapa de mosaicos (name table), para la pantalla de inicio. 1KiB

[lawnmower_oam_00.vhd](vhd/clk/lawnmower_oam_00.vhd): El estado de la memoria de sprites (OAM) en un momento dado

[nespalette_colors.vhd](../nespalette_colors.vhd): Paleta con 64 colores RGB444 de la NES

### Imágenes para depurar

Esta es la pantalla que se quiere mostrar:

![Pantalla que se quiere mostrar](lawnmower_screenshot.png)

Solo tiene varios sprite 8x8:

![Informacion del sprite](lawnmower_sprites_info.png)

Vista de la Tabla de Patrones (memoria ROM de teselas)

![Memoria ROM de teselas](lawnmower_pattern_view.png)

Pantalla de inicio:

![Pantalla de inicio](lawnmower_start.png)

Paleta:

![Menu](lawnmower_paleta.png)



---

