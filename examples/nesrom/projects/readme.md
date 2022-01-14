# Sample projects

## [Ice Blocks](ice_blocks)
 
Icestudio blocks

---

## [Example 1: Name Table](p1_ntable/smario)

First project just to understand how the Name Table works.

VHDL, verilog and Icestudio versions
 
Video para más información (video in Spanish): https://youtu.be/Twvdh8xt7a4

Y pdf: https://doi.org/10.5281/zenodo.5303187 

Serie de videos: https://youtube.com/playlist?list=PLSUmB2yTypWE5cFtsGbdwOUH4URFshsYs)

Name table can be shown in grayscale (each gray level corresponds to a pattern index):

![Tabla nombres mario](p1_ntable/smario_tablanombres_traspas_invertido_x4.png)

Or in color to have more contrast and better appreciate the indexes:
Each index is a color in RGB222. There could be duplicated indexes since RGB222 has 64 colores and there are 256 indexes
But to show how the Alhambra II with a RGB222 connector would show it

![Tabla nombres mario](p1_ntable/smario_tablanombres_traspas_rgb222_x4.png)

### [Icestudio project](p1_ntable/smario/icestudio)

![Icestudio Name Table](p1_ntable/icestudio_nametable.png)

## [Example 2: Name + Pattern Tables](p2_np_tables/smario)

Second project includes Name Table and the Pattern Table divided in two memories, not including the sprites
Only one palette because there is no Attribute Table: only 4 colors in total

VHDL, verilog and Icestudio versions

Video para más información (video in Spanish): https://youtu.be/M-aZKPRhV_Y

Y pdf: https://doi.org/10.5281/zenodo.5508138

![Tabla nombres+patrones mario](p2_np_tables/smario_traspas2_bg_paletamarron.png)

### [Icestudio project](p2_np_tables/smario/icestudio)

![Icestudio Name + Pattern Tables](p2_np_tables/icestudio_2_np_tables.png)