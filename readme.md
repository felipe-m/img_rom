# Imágenes a memorias

[English](#Image-to-memory)

---

Hay varios programas:

+ Programa en lenguaje C que convierten imágenes a memorias ROM en VHDL
+ [nesmem2vhd.py](src/nesmem2vhd.py): Script en Python que convierte memorias de la [NES](https://es.wikipedia.org/wiki/Nintendo_Entertainment_System) a memorias ROM en VHDL. Para verilog [nesmem2vrl.py](src/nesmem2vrl.py)
+ [rvinstr2vhd.py](src/rvinstr2vhd.py): Script en Python que convierte el volcado de memoria de instrucciones del RISC-V en memoria ROM de instrucciones en VHDL. Se utiliza el RARS (https://github.com/TheThirdOne/rars) para volcar en memoria (formato de exportación: Text-Data segment window).
+ [vhdlrom2vrl.py] (src/vhdlrom2vrl.py): Script en Python que convierte una memoria ROM VHDL a verilog

En [examples](examples) hay ejemplos de imágenes y las memorias resultantes en VHDL

En [examples/nesrom](examples/nesrom) hay ejemplos de las memorias de la NES.

En [examples/instr](examples/instr) hay ejemplos de las memorias de instrucciones del RISC-V.

## Conversión de una imagen PPM, PGM o PBM en una memoria ROM en VHDL


Se debe guardar la imagen en formato .ppm .pgm o .pbm en ASCII. Para ello se puede usar programa como gimp o irfanview.

Luego compilar el código fuente y ejecutar el programa para convertir en un fichero VHDL

Lee el fichero img2rom.htm o la versión markdown [img2rom.md](img2rom.md) 

Tienes ejemplos VHDL [examples/vhd](examples/vhd)

[examples/vhd/readme.md](examples/vhd/readme.md)

---

# Image to memory


There are 3 different codes

+ Code in C language to convert a image into a VHDL ROM memory
+ [nesmem2vhd.py](src/nesmem2vhd.py): Python script to convert [NES](https://en.wikipedia.org/wiki/Nintendo_Entertainment_System) dump memories into VHDL ROM memories (or verilog: [nesmem2vrl.py](src/nesmem2vrl.py) )
+ [rvinstr2vhd.py](src/rvinstr2vhd.py): Python script to convert RISC-V memory dump file (using RARS https://github.com/TheThirdOne/rars) into VHDL ROM instruction memory (export format: Text-Data segment window)
+ [vhdlrom2vrl.py] (src/vhdlrom2vrl.py): Python script to convert a VHDL ROM into verilog

## Conversion of a a PPM, PGM or PBM image into a VHDL ROM memory file

You can save any image into an ASCII .ppm .pgm or .pbm format using image software, such as gimp or irfanview.

Then, compile the source and run the executable to convert it into a VHDL ROM memory file

Read the img2rom.htm (in Spanish) o the markdown version [img2rom.md](img2rom.md) 

Check the examples [examples/vhd](examples/vhd)

[examples/vhd/readme.md](examples/vhd/readme.md)
