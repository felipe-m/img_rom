### Cómo pasar una imagen a memoria ROM en VHDL

Para imágenes pequeñas se podría hacer a mano, pero sería inviable para imágenes grandes, aquí se propone una solución El programa está en lenguaje C, para usarlo tendrás que compilarlo y usar línea de comandos, bien en Linux con gcc, o en Windows con [Mingw](http://www.mingw.org) o [Cygwin](http://www.cygwin.com)  
Los ficheros son:

*   El fichero fuente en C: [ppm2rom.c](img2rom/ppm2rom.c)
*   La cabecera: [ppm2rom.h](img2rom/ppm2rom.h)
*   El makefile para compilar: [makefile](img2rom/makefile)
*   El ejecutable compilado en Mingw (posible que no te funione en tu ordenador: [ppm2rom.exe](img2rom/ppm2rom.exe)
*   El ejecutable compilado en Cygwin (posible que no te funione en tu ordenador: [ppm2rom_cygwin.exe](img2rom/ppm2rom_cygwin.exe)
*   Todo esto comprimido [img2rom.rar](img2rom/img2rom.rar)
*   Una versión antigua con ciertas diferencias, comprimida [img2rom_old.rar](img2rom/img2rom_old.rar)

#### Instrucciones

1.  Mediante un programa de dibujo, ajusta la imagen al número de pixeles que quieras.
2.  Guarda la imagen en formato [PNM](http://en.wikipedia.org/wiki/Portable_pixmap) (PBM, PGM o PPM) en modo ASCII. Para esto puedes guardar la imagen en este formato puedes usar el [Irfanview](http://www.irfanview.com/) o el [ImageMagick](http://www.imagemagick.org) (puedes utilizar otras herramientas de dibujo pero éstas son gratuitas)

    <table border="1">

    <tbody>

    <tr>

    <td>Con el Irfanview simplemente pincha en _save as_ y selecciona

    *   **PBM**: para imágenes de 1 bit de profundidad (blanco y negro)
    *   **PGM**: para imágenes de un color de 8 bits de profundidad (escala de grises)
    *   **PPM**: para imágenes de tres color de 8 bits de profundidad cada color (RGB)

    *   Compression level=0
    *   todas las opciones sin seleccionar
    *   ASCII encoding

    </td>

    </tr>

    <tr>

    <td>Con el ImageMagik debes usar línea de comandos:

    *   **PBM**: Para imágenes de 1 bit de profundidad (blanco y negro), el comando es: **`convert -compress none _imagen.png_ imagen.pbm`**
    *   **PGM**: Para imágenes de un color de 8 bits de profundidad (escala de grises), el comando es: **`convert -compress none _imagen.png_ imagen.pgm`**
    *   **PPM**: Para imágenes de tres colores de 8 bits de profundidad cada color (RGB): el comando es: **`convert -compress none _imagen.png_ imagen.ppm`**   
    _NOTAS:_

      *   El nombre **`_imagen.png`_** es el nombre de la imagen original que has creado, puede ser otro nombre y otro formato de imagen.
      *   Si tienes instalado el ImageMagick, para ejecutarlo haz: Inicio->Ejecutar->cmd y vas al directorio donde esté la imagen y escribe cualquiera de los tres comandos arriba indicados
      *   Es importante que incluyas la opción `-compress none` pues si no se guardará en binario.

    </td>

    </tr>

    </tbody>

    </table>

3.  Ahora la convertimos la imagen PNM a un fichero VHDL mediante el ejecutable `ppm2rom.exe`, según sea el formato de la imagen ejecutaremos:
    *   PBM (blanco y negro): **`ppm2rom.exe imagen.pbm [0-1]`**  
        El último argumento es opcional, si se pone un 1 creará una ROM en la que cada píxel de la imagen se corresponderá con una dirección de memoria. El ancho de palabra de la memoria será de un bit. Así pues, las ROM tendrá tantos elementos como el número de filas multiplicado por el número de columnas.  
        Si se pone un 0, cada fila de la imagen se corresponderá con una direccion de memoria. Por tanto, el ancho de palabra se corresponderá con el número de columnas de la imagen. Así pues, la ROM tendrá tantos elementos como número de filas. **0 es el valor por defecto para PBM**
    *   PGM (escala de grises, 8 bits): **`ppm2rom.exe imagen.pgm [2-8]`**  
        8 es el valor por defecto, pero se puede poner cualquier número entre 2 y 8\. Para números menores, la ROM será más pequeña y por tanto se ahorrará en tamaño
    *   PPM (RGB, 8 bits cada color): **`ppm2rom.exe imagen.ppm [BitsMemo: 0-8] [NumMemo: 1,3]`**  
        **BitsMemo** Indica el numero de bits de cada palabra de la memoria.  
        Puede ser: de 1 a 8: Entre 1 y 8 bits cada palabra 0: Cada palabra (cada dirección) devuelve una fila completa (cada pixel 1 bit de color)  
        **NumMemo** Indica si se usa una o tres memorias para los colores.  
        **Ejemplos:**  
        + **NumMemo = 1**, indica que en una memoria se agrupan los tres colores  
        Por ejemplo:  
        *BitsMemo=3 NumMemo=1 : Se crea una memoria que cada palabra alberga los 3 colores: RGB (1 bit para cada color: 8 colores)  
        *BitsMemo=6 NumMemo=1 : Se crea una memoria que cada palabra alberga los 3 colores: RGB (2 bits para cada color: 64 colores)  
        *BitsMemo=8 NumMemo=1 : Se crea una memoria que cada palabra alberga los tres colores: RGB (3 bits para rojo, 3 para verde y 2 bits para azul: 256 colores)  
        *BitsMemo=9 NumMemo=1 : Se crea una memoria que cada palabra alberga los tres colores: RGB (3 bits para cada color: 512 colores)  
        + **NumMemo = 3**, indica que se crean tres memorias, una para cada color  
        *BitsMemo=8 NumMemo=3 : Se crean 3 memorias que cada palabra alberga 8 bits del pixel de su color: 2<sup>24</sup>: más de 16 millones de colores  
        *BitsMemo=4 NumMemo=3 : Se crean 3 memorias que cada palabra alberga 4 bits del pixel de su color: 2<sup>12</sup>: 4096 colores  
        *BitsMemo=1 NumMemo=3 : Se crean 3 memorias que cada palabra alberga 1 bit del pixel de su color: 2<sup>3</sup>: 8 colores  
        *BitsMemo=0 NumMemo=3 : Se crean 3 memorias que cada palabra contiene la fila de la imagen en su color: un bit para cada color: 8 colores.  
           Esta ROM no conviene para imágenes con más de 36 columnas  

4.  El resultado es una ROM VHDL sintetizable que podrás utilizar para tus dibujos en pantalla.
5.  Si quieres poner más de un dibujo en la ROM, puedes crear varias memorias ROM y luego a mano, copiarlas y pegarlas en una sola (modificando el número de direcciones de memoria).