# Organización del directorio

- [vhd](vhd): ejemplos de ROM en VHDL
- [img](img): imágenes originales de las ROM de VHDL
- [nesrom](nesrom): está organizado por juegos, e incluso distintas pantallas, dentro de cada carpeta están las pantallas (como si fuesen capturas de imágenes) donde están las memorias ROM en VHDL. Dento hay otra carpeta dmp donde están las memorias de la NES en binario (que se convierten en ROM en VHDL por el script)
- [instr](instr): ejemplos de volcados de memoria de RISC-V y su conversión a memorias ROM en VHDL. Se recomienda utilizar el RARS (https://github.com/TheThirdOne/rars) y volcar memoria en utilizando el formato (Text/Data segment window)

---

# A continuación se muestran algunos ejemplos de memorias ROM en vhd


## Monstruo (fantasma) del pac-man
* Imagen de 32x32.
* 3 memorias, una para cada color
* 4 bits para cada color
* Cada pixel en una direccion de memoria: 1024 direcciones
* ![monster small](img/monster32x32.png)


1. [rom4b_blue_monster32x32.vhd](vhd/rom4b_blue_monster32x32.vhd)
1. [rom4b_red_monster32x32.vhd](vhd/rom4b_red_monster32x32.vhd)
1. [rom4b_green_monster32x32.vhd](vhd/rom4b_green_monster32x32.vhd)

![monster](img/monster_32x32b.png)

## Mario
* Imagen de 32x32.
* 3 memorias, una para cada color
* 4 bits para cada color
* Cada pixel en una direccion de memoria: 1024 direcciones
* ![mario](img/mario32x32.png)


1. [rom4b_blue_mario32x32.vhd](vhd/rom4b_blue_mario32x32.vhd)
1. [rom4b_red_mario32x32.vhd](vhd/rom4b_red_mario32x32.vhd)
1. [rom4b_green_mario32x32.vhd](vhd/rom4b_green_mario32x32.vhd)


## Pac-Man
* Imagen de 32x32.
* 3 memorias, una para cada color
* 4 bits para cada color
* Cada pixel en una direccion de memoria: 1024 direcciones
* ![pacman](img/pacman32x32.png)


1. [rom4b_blue_pacman32x32.vhd](vhd/rom4b_blue_pacman32x32.vhd)
1. [rom4b_red_pacman32x32.vhd](vhd/rom4b_red_pacman32x32.vhd)
1. [rom4b_green_pacman32x32.vhd](vhd/rom4b_green_pacman32x32.vhd)

## Mario 16
* Imagen de 16x16.
* Una memoria. En cada direccion de memoria estan los 3 colores RGB
* Cada pixel en una direccion de memoria: 256 direcciones
* 1 bit para cada color
* dato(2): Rojo
* dato(1): Verde
* dato(0): Azul
* ![mario_16](img/mario_16x16.png)


1. [rom_rgb_3b_mario_16x16.vhd](vhd/rom_rgb_3b_mario_16x16.vhd)

## Mario run 16
* Imagen de 16x16.
* Una memoria. En cada direccion de memoria estan los 3 colores RGB
* Cada pixel en una direccion de memoria: 256 direcciones
* 1 bit para cada color
* dato(2): Rojo
* dato(1): Verde
* dato(0): Azul
* ![mario_run_16](img/mario_run_16x16.png)


1. [rom_rgb_3b_mario_run_16x16.vhd](vhd/rom_rgb_3b_mario_run_16x16.vhd)


## Fantasma rojo
* Imagen de 16x16.
* Una memoria. En cada direccion de memoria estan los 3 colores RGB
* Cada pixel en una direccion de memoria: 256 direcciones
* 1 bit para cada color
* dato(2): Rojo
* dato(1): Verde
* dato(0): Azul
* ![monster_rojo_16](img/monster_16x16_rojo.png)


1. [rom_rgb_3b_monster_16x16_rojo.vhd](vhd/rom_rgb_3b_monster_16x16_rojo.vhd)


## Fantasma blanco y negro
* Imagen de 16x16.
* Una memoria. En cada direccion de memoria está la fila de 16 bits(pixeles)
* Cada pixel es un bit de la dirección de memoria.
* 16 direcciones de memoria
* 1 bit para el color (monocroma)
* ![monster_bn_16](img/monster_bn_16x16_negro.png)


1. [rom1b_1f_monster_16_t.vhd](vhd/rom1b_1f_monster_16_t.vhd)


## Fantasma blanco y negro asustado
* Imagen de 16x16.
* Una memoria. En cada direccion de memoria está la fila de 16 bits(pixeles)
* Cada pixel es un bit de la dirección de memoria.
* 16 direcciones de memoria
* 1 bit para el color (monocroma)
* ![monster_bn_16_scared](img/monster_bn_16x16_scared.png)
* ![monster_bn_16_scared_x4](img/monster_bn_16x16_scared_x4.png)

1. [rom1b_1f_monster_16_t.vhd](vhd/rom1b_1f_monster_16_scared_t.vhd)


## Fantasma blanco y negro normal y asustado en una memoria
* Imagen de 16 columnas x 32 filas.
* Una memoria. En cada direccion de memoria está la fila de 16 bits(pixeles)
* Cada pixel es un bit de la dirección de memoria.
* 32 direcciones de memoria (dos imágenes)
* 1 bit para el color (monocroma)
* ![monster_bn_16_scared](img/monster_bn_16x32_normal_scared.png)
* ![monster_bn_16_scared_x4](img/monster_bn_16x32_normal_scared_x4.png)

1. [rom1b_1f_monster_16_t.vhd](vhd/rom1b_1f_monster_16x32_normal_scared_t.vhd)



## 8 personajes y formas en una memoria
* Imagen de 16 columnas x 128 filas.
* Una memoria. En cada direccion de memoria está la fila de 16 bits(pixeles)
* Cada pixel es un bit de la dirección de memoria.
* 128 direcciones de memoria (8 imágenes)
  * Opción: 1 bit para el color (monocroma)
  * Opción: 3 bit para el color (3 memorias)

En color:
![8imagenes_color_16](img/imagenes8_16x16.png)
1. [rom1b_red_imagenes8_16x16.vhd](vhd/rom1b_red_imagenes8_16x16.vhd)
1. [rom1b_green_imagenes8_16x16.vhd](vhd/rom1b_green_imagenes8_16x16.vhd)
1. [rom1b_blue_imagenes8_16x16.vhd](vhd/rom1b_blue_imagenes8_16x16.vhd)

En blanco y negro
![8imagenes_color_16](img/imagenes8_16x16_bn.png)
1. [rom1b_1f_imagenes8_16x16_bn_t.vhd](vhd/rom1b_1f_imagenes8_16x16_bn_t.vhd)




## Laberinto 20x15 blanco y negro
* Imagen de 20 columnas x 15 filas
* Una memoria. En cada direccion de memoria está la fila de 20 bits(pixeles)
* Cada pixel es un bit de la dirección de memoria.
* 15 direcciones de memoria
* El color negro ('0') es el pasillo
* ![laberinto](img/laberinto_x4.png)

1. [laberinto.vhd](vhd/rom1b_1f_laberinto_t.vhd)

## Laberinto 40x30 blanco y negro
* Imagen de 40 columnas x 30 filas
* Una memoria. En cada direccion de memoria está la fila de 40 bits(pixeles)
* Cada pixel es un bit de la dirección de memoria.
* 30 direcciones de memoria
* El color blanco ('1') es el pasillo
* ![laberinto_40x30](img/laberinto_40x30_x4.png)

1. [laberinto.vhd](vhd/rom1b_1f_laberinto_40x30_t.vhd)
