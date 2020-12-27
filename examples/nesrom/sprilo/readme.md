# Memorias ROM similares a las usadas por la NES

Juego sencillo con un sprite simple de 8x8, bueno para empezar y probar que va bien

https://cmrn.itch.io/sprilo

https://github.com/cbrwn/gameoff


* [Sprilo](#Sprilo)

---

## Sprilo


### Memorias ROM VHDL

En el directorio [comb](vhd/comb) están las ROM sin reloj (combinacionales)

En el directorio [clk](vhd/clk) están las ROM con reloj

En el directorio [vrl](vrl) están las memorias en verilog, con reloj y sin reloj.

[sprilo_ntable00.vhd](vhd/clk/sprilo_ntable_00.vhd): Mapa de mosaicos/teselas (Tabla de nombres) de 2KiB. Por lo tanto hay dos tablas de 1KiB. Al final de cada tabla están los 64 B de la tabla de atributos

[sprilo_ntable00_nt0.vhd](vhd/clk/sprilo_ntable_00_nt0.vhd): Mapa de mosaicos/teselas (Tabla de nombres) de 1KiB. Por lo tanto hay una sola tabla, ya que en este juego no se hace _scroll_ y por lo tanto la otra no se utiliza. Al final de la tabla están los 64 B de la tabla de atributos


[sprilo_ntable00_attr.vhd](vhd/clk/sprilo_ntable_00_attr.vhd): Los 64 bytes de la tabla de atributos separados de la tabla de nombres

[sprilo_ptable.vhd](vhd/clk/sprilo_ptable.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con los dos planos de color. 8KiB en total

[sprilo_ptable_0.vhd](vhd/clk/sprilo_ptable_0.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con el plano de color 0. 4KiB en total

[sprilo_ptable_1.vhd](vhd/clk/sprilo_ptable_1.vhd): Los mosaicos (tiles), la tabla de patrones de sprites y de fondo. Con el plano de color 1. 4KiB en total

[sprilo_ptablespr.vhd](vhd/clk/sprilo_ptablespr.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con los dos planos de color. 4KiB en total

[sprilo_ptablebg.vhd](vhd/clk/sprilo_ptablebg.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con los dos planos de color. 4KiB en total

[sprilo_ptablespr_0.vhd](vhd/clk/sprilo_ptablespr_0.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con el plano de color 0. 2KiB en total

[sprilo_ptablespr_1.vhd](vhd/clk/sprilo_ptablespr_1.vhd): Los mosaicos (tiles), la tabla de patrones de sprites (sin fondo). Con el plano de color 1. 2KiB en total

[sprilo_ptablebg_0.vhd](vhd/clk/sprilo_ptablebg_0.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con el plano de color 0. 2KiB en total

[sprilo_ptablebg_1.vhd](vhd/clk/sprilo_ptablebg_1.vhd): Los mosaicos (tiles), la tabla de patrones de fondo (sin sprites). Con el plano de color 1. 2KiB en total


[sprilo_introscr_nt0.vhd](vhd/clk/sprilo_introscr_nt0cr_nt0.vhd): El mapa de mosaicos (name table), para la pantalla de inicio. 1KiB

[sprilo_menuscr_nt0.vhd](vhd/clk/sprilo_menuscr_nt0.vhd): El mapa de mosaicos (name table), para el menu. 1KiB

[sprilo_racet1_nt0.vhd](vhd/clk/sprilo_racet1_nt0.vhd): El mapa de mosaicos (name table), para la pista de carreras 1. 1KiB

[sprilo_racet2_nt0.vhd](vhd/clk/sprilo_racet2_nt0.vhd): El mapa de mosaicos (name table), para la pista de carreras 2. 1KiB

[sprilo_racet3_nt0.vhd](vhd/clk/sprilo_racet3_nt0.vhd): El mapa de mosaicos (name table), para la pista de carreras 3. 1KiB

[sprilo_racet4_nt0.vhd](vhd/clk/sprilo_racet4_nt0.vhd): El mapa de mosaicos (name table), para la pista de carreras 4. 1KiB


[sprilo_endscr_nt0.vhd](vhd/clk/sprilo_endscr_nt0.vhd): El mapa de mosaicos (name table), para la pantalla final. 1KiB

[sprilo_oam_00.vhd](vhd/clk/sprilo_oam_00.vhd): El estado de la memoria de sprites (OAM) en un momento dado

[nespalette_colors.vhd](../nespalette_colors.vhd): Paleta con 64 colores RGB444 de la NES

### Imágenes para depurar

Esta es la pantalla que se quiere mostrar:

![Pantalla que se quiere mostrar](sprilo_screen_00.png)

Solo tiene un sprite 8x8:

![Informacion del sprite](sprilo_sprite_info_00.png)

Vista de la Tabla de Patrones (memoria ROM de teselas)

![Memoria ROM de teselas](sprilo_pattern_view.png)


Pantalla de Menu:

![Menu](sprilo_menu.png)



Pista 1:

![Pista 1](sprilo_ntable_track1.png)


Pista 2:

![Pista 2](sprilo_ntable_track2.png)


Pista 3:

![Pista 3](sprilo_ntable_track3.png)


Pista 4:

![Pista 4](sprilo_ntable_track4.png)
---

