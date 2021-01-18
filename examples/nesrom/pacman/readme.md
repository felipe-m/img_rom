# Memorias ROM similares a las usadas por la NES

---

## PAC MAN


### Memorias ROM VHDL

En el directorio [comb](vhd/comb) están las ROM sin reloj (combinacionales)

En el directorio [clk](vhd/clk) están las ROM con reloj

En el directorio [vrl](vrl) están las memorias en verilog, con reloj y sin reloj.

[pacman_ntable00.vhd](vhd/clk/pacman_ntable.vhd): Mapa de mosaicos/teselas (Tabla de nombres) de 2KiB. Por lo tanto hay dos tablas de 1KiB. Al final de cada tabla están los 64 B de la tabla de atributos

[pacman_ntable00_nt0.vhd](vhd/clk/pacman_ntable_nt0.vhd): Mapa de mosaicos/teselas (Tabla de nombres) de 1KiB. Por lo tanto hay una sola tabla, ya que en este juego no se hace _scroll_ y por lo tanto la otra no se utiliza. Al final de la tabla están los 64 B de la tabla de atributos


[pacman_ntable00_attr.vhd](vhd/clk/pacman_ntable_attr.vhd): Los 64 bytes de la tabla de atributos separados de la tabla de nombres

[pacman_ptable.vhd](vhd/clk/pacman_ptable.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con los dos planos de color. 8KiB en total

[pacman_ptable_0.vhd](vhd/clk/pacman_ptable_0.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con el plano de color 0. 4KiB en total

[pacman_ptable_1.vhd](vhd/clk/pacman_ptable_1.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con el plano de color 1. 4KiB en total

[pacman_ptablespr.vhd](vhd/clk/pacman_ptablespr.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con los dos planos de color. 4KiB en total

[pacman_ptablebg.vhd](vhd/clk/pacman_ptablebg.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con los dos planos de color. 4KiB en total

[pacman_ptablespr_0.vhd](vhd/clk/pacman_ptablespr_0.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con el plano de color 0. 2KiB en total

[pacman_ptablespr_1.vhd](vhd/clk/pacman_ptablespr_1.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con el plano de color 1. 2KiB en total

[pacman_ptablebg_0.vhd](vhd/clk/pacman_ptablebg_0.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con el plano de color 0. 2KiB en total

[pacman_ptablebg_1.vhd](vhd/clk/pacman_ptablebg_1.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con el plano de color 1. 2KiB en total


[pacman_ntable_start_nt0.vhd](vhd/clk/pacman_ntable_start_nt0.vhd): El mapa de mosaicos (name table), para la pantalla de inicio. 1KiB

[pacman_oam_00.vhd](vhd/clk/pacman_oam_00.vhd): El estado de la memoria de sprites (OAM) en un momento dado

[nespalette_colors.vhd](../nespalette_colors.vhd): Paleta con 64 colores RGB444 de la NES

### Imágenes para depurar

Esta es la pantalla que se quiere mostrar:

![Pantalla que se quiere mostrar](pacman_screenshot.png)

Solo tiene varios sprite 8x8:

![Informacion del sprite](pacman_sprites_info.png)

Vista de la Tabla de Patrones (memoria ROM de teselas)

![Memoria ROM de teselas](pacman_pattern_view.png)

Pantalla de inicio:

![Pantalla de inicio](pacman_start.png)

Paleta:

![Menu](pacman_paleta.png)



---

