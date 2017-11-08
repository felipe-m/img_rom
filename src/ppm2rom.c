/* Felipe Machado Sanchez. Departamento de Tecnologia Electronica */
/* Universidad Rey Juan Carlos */
/* http://gtebim.es

/* funcion que pasa un fichero en formato ppm, pgm o pbm a */
/*   una ROM en VHDL */

#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#include "ppm2rom.h"


/* funcion que pasa un unsigned char numero entero de maximo 8 bits (0 a 255)
   a un string en binario */

void int2bin (unsigned char numero, char *binnum)
{
  unsigned char auxnum;
  unsigned char divide = 128;
  int           i;

  auxnum = numero;  

  for (i=7; i>=0; i--) {
    if (auxnum >= divide) {
      /*printf ("bit[%i]=1, auxnum=%i, divide=%i \n", i, auxnum, divide);*/
      binnum[i] = '1';
      auxnum = auxnum-divide;
    } else {
      binnum[i] = '0';
      /*printf ("bit[%i]=0, auxnum=%i, divide=%i \n", i, auxnum, divide);*/
    }
    divide = divide/2;
  }
}

/* Crea la ROM de una imagen binaria PBM en formato texto
   cada byte tiene 8 pixeles: 1 es negro 0 es blanco */

/*  ------------------------------- creacabeceravhdl ----------------------------- */
/* para una sola ROM, blanco y negro o grises (o un color del RGB) */

void creacabeceravhdl (FILE *pFichvhdl, int NumCol, int NumFil, int bitsprof, char *Nombrebase, char *Nombreppm)
{
  int            numdir;
  int            lognumdir;

  if (bitsprof == 0) {
    /* cada direccion ocupa una fila */
    numdir = NumFil;
  } else {
    if (bitsprof > 1) {
      numdir = NumCol*NumFil;
    } else {
      printf("Error en creacabeceravhdl, habria que haber llamado a creacabeceravhdl1bit \n");
      return;
    }
  }
  printf ("Numero de direcciones: %i\n", numdir);
  /* El logaritmo superior */
  lognumdir = (int) (ceil(log(numdir)/log(2))); 
  printf ("Numero de bits de las direcciones: %i\n", lognumdir);

  fprintf(pFichvhdl, "------- ROM creada automaticamente por ppm2rom -----------\n");
  fprintf(pFichvhdl, "------- Felipe Machado -----------------------------------\n");
  fprintf(pFichvhdl, "------- Departamento de Tecnologia Electronica -----------\n");
  fprintf(pFichvhdl, "------- Universidad Rey Juan Carlos ----------------------\n");
  fprintf(pFichvhdl, "------- http://gtebim.es ---------------------------------\n");
  fprintf(pFichvhdl, "----------------------------------------------------------\n");
  fprintf(pFichvhdl, "--------Datos de la imagen -------------------------------\n");
  fprintf(pFichvhdl, "--- Fichero original    : %s \n", Nombreppm);
  fprintf(pFichvhdl, "--- Filas    : %i \n", NumFil);
  fprintf(pFichvhdl, "--- Columnas : %i \n", NumCol);
  if (bitsprof==0) {
    fprintf(pFichvhdl, "--- Color    :  Blanco y negro. 2 niveles (1 bit)\n");
  } else { 
    fprintf(pFichvhdl, "--- Color    :  %i bits\n", bitsprof);
  }
  fprintf(pFichvhdl, "\n\n\n");
  fprintf(pFichvhdl, "------ Puertos -------------------------------------------\n");
  fprintf(pFichvhdl, "-- Entradas ----------------------------------------------\n");
  fprintf(pFichvhdl, "--    clk  :  senal de reloj\n");
  fprintf(pFichvhdl, "--    addr :  direccion de la memoria\n");
  fprintf(pFichvhdl, "-- Salidas  ----------------------------------------------\n");
  if (bitsprof==0) {
    fprintf(pFichvhdl, "--    dout :  dato de %i bits de la direccion addr (un ciclo despues)\n",NumCol);
  } else {
    fprintf(pFichvhdl, "--    dout :  dato de %i bits de la direccion addr (un ciclo despues)\n",bitsprof);
  }
  fprintf(pFichvhdl, "\n\n");
  fprintf(pFichvhdl, "library IEEE;\n");
  fprintf(pFichvhdl, "  use IEEE.STD_LOGIC_1164.ALL;\n");
  fprintf(pFichvhdl, "  use IEEE.NUMERIC_STD.ALL;\n");
  fprintf(pFichvhdl, "\n\n");
  if (bitsprof==0) {
    fprintf(pFichvhdl, "entity ROM1b_1f_%s is\n", Nombrebase);
  } else {
    fprintf(pFichvhdl, "entity ROM%ib_%s is\n", bitsprof, Nombrebase);
  }
  fprintf(pFichvhdl, "  port (\n");
  fprintf(pFichvhdl, "    clk  : in  std_logic;   -- reloj\n");
  fprintf(pFichvhdl, "    addr : in  std_logic_vector(%i-1 downto 0);\n", lognumdir);
  if (bitsprof==0) {
    fprintf(pFichvhdl,
          "    dout : out std_logic_vector(%i-1 downto 0) \n", NumCol);
  } else {
    fprintf(pFichvhdl,
          "    dout : out std_logic_vector(%i-1 downto 0) \n", bitsprof);
  }
  fprintf(pFichvhdl, "  );\n");
  if (bitsprof==0) {
    fprintf(pFichvhdl, "end ROM1b_1f_%s;\n", Nombrebase);
  } else {
    fprintf(pFichvhdl, "end ROM%ib_%s;\n", bitsprof, Nombrebase);
  }
  fprintf(pFichvhdl, "\n\n");
  if (bitsprof==0) {
    fprintf(pFichvhdl,
          "architecture BEHAVIORAL of ROM1b_1f_%s is\n", Nombrebase);
  } else {
    fprintf(pFichvhdl,
          "architecture BEHAVIORAL of ROM%ib_%s is\n", bitsprof, Nombrebase);
  }
  fprintf(pFichvhdl, "  signal addr_int  : natural range 0 to 2**%i-1;\n", lognumdir);
  if (bitsprof==0) {
    fprintf(pFichvhdl, "  type memostruct is array (natural range<>) of std_logic_vector(%i-1 downto 0);\n", NumCol);
  } else {
    fprintf(pFichvhdl, "  type memostruct is array (natural range<>) of std_logic_vector(%i-1 downto 0);\n", bitsprof);
  }
  fprintf(pFichvhdl, "  constant filaimg : memostruct := (\n");
  return;
}
/* fin creacabeceravhdl */

/*  ------------------------------- creacabeceravhdl_1m---------------------------- */
/* para una sola ROM, mezclando colores RGB en una memoria */

void creacabeceravhdl_1m (FILE *pFichvhdl, int NumCol, int NumFil, int bitsprof, char *Nombrebase, char *Nombreppm)
{
  int            numdir;
  int            lognumdir;

  numdir = NumCol*NumFil;
  printf ("Numero de direcciones: %i\n", numdir);
  /* El logaritmo superior */
  lognumdir = (int) (ceil(log(numdir)/log(2))); 
  printf ("Numero de bits de las direcciones: %i\n", lognumdir);

  fprintf(pFichvhdl, "------- ROM creada automaticamente por ppm2rom -----------\n");
  fprintf(pFichvhdl, "------- Felipe Machado -----------------------------------\n");
  fprintf(pFichvhdl, "------- Departamento de Tecnologia Electronica -----------\n");
  fprintf(pFichvhdl, "------- Universidad Rey Juan Carlos ----------------------\n");
  fprintf(pFichvhdl, "------- http://gtebim.es ---------------------------------\n");
  fprintf(pFichvhdl, "----------------------------------------------------------\n");
  fprintf(pFichvhdl, "--------Datos de la imagen -------------------------------\n");
  fprintf(pFichvhdl, "--- Fichero original    : %s \n", Nombreppm);
  fprintf(pFichvhdl, "--- Filas    : %i \n", NumFil);
  fprintf(pFichvhdl, "--- Columnas : %i \n", NumCol);
  fprintf(pFichvhdl, "----------------------------------------------------------\n");
  fprintf(pFichvhdl, "--------Codificacion de la memoria------------------------\n");
  fprintf(pFichvhdl, "--- Palabras de %i bits\n", bitsprof);
  switch (bitsprof) {
    case 3:
      fprintf(pFichvhdl, "--- De cada palabra hay 1 bit para cada color : \"RGB\" 8 colores\n");
      break;
    case 6:
      fprintf(pFichvhdl, "--- De cada palabra hay 2 bits para cada color : \"RRGGBB\" 64 colores\n");
      break;
    case 8:
      fprintf(pFichvhdl, "--- De cada palabra hay 3 bits para rojo y verde y 2 para azul: \"RRRGGGBB\" 256 colores\n");
      break;
    case 9:
      fprintf(pFichvhdl, "--- De cada palabra hay 3 bits para cada color : \"RRRGGGBBB\" 512 colores\n");
      break;
    default:
      printf ("Error en la profundidad de color \n");
  }
  fprintf(pFichvhdl, "\n\n\n");
  fprintf(pFichvhdl, "------ Puertos -------------------------------------------\n");
  fprintf(pFichvhdl, "-- Entradas ----------------------------------------------\n");
  fprintf(pFichvhdl, "--    clk  :  senal de reloj\n");
  fprintf(pFichvhdl, "--    addr :  direccion de la memoria\n");
  fprintf(pFichvhdl, "-- Salidas  ----------------------------------------------\n");
  fprintf(pFichvhdl, "--    dout :  dato de %i bits de la direccion addr (un ciclo despues)\n",bitsprof);
  fprintf(pFichvhdl, "\n\n");
  fprintf(pFichvhdl, "library IEEE;\n");
  fprintf(pFichvhdl, "  use IEEE.STD_LOGIC_1164.ALL;\n");
  fprintf(pFichvhdl, "  use IEEE.NUMERIC_STD.ALL;\n");
  fprintf(pFichvhdl, "entity ROM_RGB_%ib_%s is\n", bitsprof, Nombrebase);
  fprintf(pFichvhdl, "  port (\n");
  fprintf(pFichvhdl, "    clk  : in  std_logic;   -- reloj\n");
  fprintf(pFichvhdl, "    addr : in  std_logic_vector(%i-1 downto 0);\n", lognumdir);
    fprintf(pFichvhdl,
          "    dout : out std_logic_vector(%i-1 downto 0) \n", bitsprof);
  fprintf(pFichvhdl, "  );\n");
  fprintf(pFichvhdl, "end ROM_RGB_%ib_%s;\n", bitsprof, Nombrebase);
  fprintf(pFichvhdl, "\n\n");
  fprintf(pFichvhdl,
          "architecture BEHAVIORAL of ROM_RGB_%ib_%s is\n", bitsprof, Nombrebase);
  fprintf(pFichvhdl, "  signal addr_int  : natural range 0 to 2**%i-1;\n", lognumdir);
  fprintf(pFichvhdl, "  type memostruct is array (natural range<>) of std_logic_vector(%i-1 downto 0);\n", bitsprof);
  fprintf(pFichvhdl, "  constant filaimg : memostruct := (\n");
  return;
}
/* fin creacabeceravhdl_1m */


/*  ------------------------------- creacabeceravhdl1bit ----------------------------- */
/* para una sola ROM, blanco y negro . Cada posicion de memoria es un bit */

void creacabeceravhdl1bit (FILE *pFichvhdl, int NumCol, int NumFil, char *Nombrebase, char *Nombreppm)
{
  int            numdir;
  int            lognumdir;

  numdir = NumCol*NumFil;
  printf ("Numero de direcciones: %i\n", numdir);
  /* El logaritmo superior */
  lognumdir = (int) (ceil(log(numdir)/log(2))); 
  printf ("Numero de bits de la direcciones direcciones: %i\n", lognumdir);

  fprintf(pFichvhdl, "------- ROM creada automaticamente por ppm2rom -----------\n");
  fprintf(pFichvhdl, "------- Felipe Machado -----------------------------------\n");
  fprintf(pFichvhdl, "------- Departamento de Tecnologia Electronica -----------\n");
  fprintf(pFichvhdl, "------- Universidad Rey Juan Carlos ----------------------\n");
  fprintf(pFichvhdl, "------- http://gtebim.es ---------------------------------\n");
  fprintf(pFichvhdl, "----------------------------------------------------------\n");
  fprintf(pFichvhdl, "--------Datos de la imagen -------------------------------\n");
  fprintf(pFichvhdl, "--- Fichero original    : %s \n", Nombreppm);
  fprintf(pFichvhdl, "--- Filas    : %i \n", NumFil);
  fprintf(pFichvhdl, "--- Columnas : %i \n", NumCol);
  fprintf(pFichvhdl, "--- Color    :  Blanco y negro. 2 niveles (1 bit)\n");
  fprintf(pFichvhdl, "---             Cada direccion es un pixel\n");
  fprintf(pFichvhdl, "\n\n\n");
  fprintf(pFichvhdl, "------ Puertos -------------------------------------------\n");
  fprintf(pFichvhdl, "-- Entradas ----------------------------------------------\n");
  fprintf(pFichvhdl, "--    clk  :  senal de reloj\n");
  fprintf(pFichvhdl, "--    addr :  direccion de la memoria\n");
  fprintf(pFichvhdl, "-- Salidas  ----------------------------------------------\n");
  fprintf(pFichvhdl, "--    dout :  dato de 1 bits de la direccion addr (un ciclo despues)\n");
  fprintf(pFichvhdl, "\n\n");
  fprintf(pFichvhdl, "library IEEE;\n");
  fprintf(pFichvhdl, "  use IEEE.STD_LOGIC_1164.ALL;\n");
  fprintf(pFichvhdl, "  use IEEE.NUMERIC_STD.ALL;\n");
  fprintf(pFichvhdl, "\n\n");
  fprintf(pFichvhdl, "entity ROM1b_%s is\n", Nombrebase);
  fprintf(pFichvhdl, "  port (\n");
  fprintf(pFichvhdl, "    clk  : in  std_logic;   -- reloj\n");
  fprintf(pFichvhdl, "    addr : in  std_logic_vector(%i-1 downto 0);\n", lognumdir);
  fprintf(pFichvhdl, "    dout : out std_logic \n");
  fprintf(pFichvhdl, "  );\n");
  fprintf(pFichvhdl, "end ROM1b_%s;\n", Nombrebase);
  fprintf(pFichvhdl, "\n\n");
  fprintf(pFichvhdl,
          "architecture BEHAVIORAL of ROM1b_%s is\n", Nombrebase);
  fprintf(pFichvhdl, "  signal addr_int  : natural range 0 to 2**%i-1;\n", lognumdir);
  fprintf(pFichvhdl, "  type memostruct is array (natural range<>) of std_logic;\n");
  fprintf(pFichvhdl, "  constant filaimg : memostruct := (\n");
  return;
}
/* fin creacabeceravhdl1bit */



/* ----------------------- imgtxtbin ----------------------------------- */
/* Crea la ROM de una imagen binaria PBM en formato texto.
   1 es negro 0 es blanco
   se pone toda la fila de la imagen en una direccion de memoria */

void imgtxtbin (FILE *pFichppm, int NumCol, int NumFil, char *nombrefichppm)
{
  char           nombrebasefichvhdl[100];
  char           nombrefichvhdl[100];
  FILE          *pFichvhdl;
  unsigned char  binnum[8];
  char           filappm[MAX_LINEA_PPM]; /* en teoria el maximo es 70 */
  int            numdir;
  int            iCol = 0;
  int            iFil = 0;
  int            ind = 0;
  int            indlinea = 0;
  unsigned char  Pixel;

  /* quitamos la extension */
  ind = 0;
  do {
    nombrebasefichvhdl[ind] = nombrefichppm[ind];
    ind++;
  } while (nombrefichppm[ind] != '.' && nombrefichppm[ind] != '\0');
  nombrebasefichvhdl[ind] = '\0';
  numdir = NumFil;
  printf ("Numero de direcciones: %i\n", numdir);

  /* nombre del fichero vhdl resultante, 1f indica que cada fila va en una direccion */
  sprintf (nombrefichvhdl, "rom1b_1f_%s_t.vhd",nombrebasefichvhdl);

  pFichvhdl = fopen(nombrefichvhdl, "w");
  /* Uno es la profundidad */
  creacabeceravhdl (pFichvhdl, NumCol, NumFil, 0, nombrebasefichvhdl, nombrefichppm);
  /* Recorremos el fichero */
  fprintf(pFichvhdl, "       \""); 
  while (fgets(filappm, MAX_LINEA_PPM, pFichppm) != NULL) {
    indlinea = 0;
    while (filappm[indlinea] != '\0') {
      switch (filappm[indlinea]) {
        case '1':
          fprintf(pFichvhdl, "0"); 
          if (iCol == NumCol-1) {
            iCol = 0;
            if (iFil == NumFil-1) {
              fprintf(pFichvhdl, "\"\n");  /* en el ultimo no se pone la coma */
            } else {
              fprintf(pFichvhdl, "\",\n"); 
              fprintf(pFichvhdl, "       \""); 
              iFil++;
            }
          } else {
            iCol++;
          }
          break;
        case '0':
          fprintf(pFichvhdl, "1"); 
          if (iCol == NumCol-1) {
            iCol = 0;
            if (iFil == NumFil-1) {
              fprintf(pFichvhdl, "\"\n");  /* en el ultimo no se pone la coma */
            } else {
              fprintf(pFichvhdl, "\",\n"); 
              fprintf(pFichvhdl, "       \""); 
              iFil++;
            }
          } else {
            iCol++;
          }
          break;
        case 32: /* espacio */
        case '\0': /* espacio */
        case LF:  /* 10 nueva linea */
        case CR:  /* 13 retorno de carro */
          break;
        default:
          printf ("Caracter extranyo %c\n", filappm[indlinea]);
          break;
      }
      indlinea++;
    }
  }
  /* Terminamos de hacer la ROM */
  fprintf(pFichvhdl, "        );\n\n"); 
  fprintf(pFichvhdl, "begin\n\n"); 
  fprintf(pFichvhdl, "  addr_int <= TO_INTEGER(unsigned(addr));\n\n"); 
  fprintf(pFichvhdl, "  P_ROM: process (clk)\n"); 
  fprintf(pFichvhdl, "  begin\n"); 
  fprintf(pFichvhdl, "    if clk'event and clk='1' then\n"); 
  fprintf(pFichvhdl, "      dout <= filaimg(addr_int);\n"); 
  fprintf(pFichvhdl, "    end if;\n"); 
  fprintf(pFichvhdl, "  end process;\n\n"); 
  fprintf(pFichvhdl, "end BEHAVIORAL;\n\n"); 
  fclose(pFichvhdl);
  return;
}
/* fin de imgtxtbin */
          

/* ----------------------- imgtxtbin1pxl ----------------------------------- */
/* Crea la ROM de una imagen binaria PBM en formato texto
   cada byte tiene 8 pixeles: 1 es negro 0 es blanco
   Cada pixel es una posicion de memoria
   PBM, BitsMemo=1 */

void imgtxtbin1pxl (FILE *pFichppm, int NumCol, int NumFil, char *nombrefichppm)
{
  char           aux[100];
  char           nombrebasefichvhdl[100];
  char           nombrefichvhdl[100];
  FILE          *pFichvhdl;
  unsigned char  binnum[8];
  char           filappm[MAX_LINEA_PPM]; /* en teoria el maximo es 70 */
  int            numdir;
  int            iCol = 0;
  int            iFil = 0;
  int            ind = 0;
  int            indlinea = 0;
  /* para evitar tener lineas muy largas en el fichero de texto */
  unsigned char  Pixel;

  /* quitamos la extension */
  ind = 0;
  do {
    aux[ind] = nombrefichppm[ind];
    ind++;
  } while (nombrefichppm[ind] != '.' && nombrefichppm[ind] != '\0');
  aux[ind] = '\0';
  /* 1 direccion cada pixel */
  sprintf(nombrebasefichvhdl, "1dir_%s", aux);

  numdir = NumFil;
  printf ("Numero de direcciones: %i\n", numdir);

  /* nombre del fichero vhdl resultanteo */
  sprintf (nombrefichvhdl, "rom1b_%s.vhd",nombrebasefichvhdl);

  pFichvhdl = fopen(nombrefichvhdl, "w");
  /* Uno es la profundidad */
  creacabeceravhdl1bit (pFichvhdl, NumCol, NumFil, nombrebasefichvhdl, nombrefichppm);
  /* Recorremos el fichero */
  while (fgets(filappm, MAX_LINEA_PPM, pFichppm) != NULL) {
    indlinea = 0;
    while (filappm[indlinea] != '\0') {
      switch (filappm[indlinea]) {
        case '1':
          fprintf(pFichvhdl, "'0'"); 
          if (iCol == NumCol-1) {
            iCol = 0;
            if (iFil == NumFil-1) {
              fprintf(pFichvhdl, "\n");  /* en el ultimo no se pone la coma */
            } else {
              fprintf(pFichvhdl, ",\n"); 
              iFil++;
            }
          } else {
            fprintf(pFichvhdl, ", "); 
            iCol++;
            if ((iCol%20)==0) {
              fprintf(pFichvhdl, "\n");  /* evitar texto muy largo */
            }
          }
          break;
        case '0':
          fprintf(pFichvhdl, "'1'"); 
          if (iCol == NumCol-1) {
            iCol = 0;
            if (iFil == NumFil-1) {
              fprintf(pFichvhdl, "\n");  /* en el ultimo no se pone la coma */
            } else {
              fprintf(pFichvhdl, ",\n"); 
              iFil++;
            }
          } else {
            fprintf(pFichvhdl, ", "); 
            iCol++;
            if ((iCol%20)==0) {
              fprintf(pFichvhdl, "\n");  /* evitar texto muy largo */
            }
          }
          break;
        case 32: /* espacio */
        case '\0': /* espacio */
          break;
        case LF:  /* 10 nueva linea */
        case CR:  /* 13 retorno de carro */
          /* Nueva linea ponemos tambien */
          /*fprintf(pFichvhdl, "\n"); */
          break;
        default:
          printf ("Caracter extranyo %c\n", filappm[indlinea]);
          break;
      }
      indlinea++;
    }
  }
  /* Terminamos de hacer la ROM */
  fprintf(pFichvhdl, "        );\n\n"); 
  fprintf(pFichvhdl, "begin\n\n"); 
  fprintf(pFichvhdl, "  addr_int <= TO_INTEGER(unsigned(addr));\n\n"); 
  fprintf(pFichvhdl, "  P_ROM: process (clk)\n"); 
  fprintf(pFichvhdl, "  begin\n"); 
  fprintf(pFichvhdl, "    if clk'event and clk='1' then\n"); 
  fprintf(pFichvhdl, "      dout <= filaimg(addr_int);\n"); 
  fprintf(pFichvhdl, "    end if;\n"); 
  fprintf(pFichvhdl, "  end process;\n\n"); 
  fprintf(pFichvhdl, "end BEHAVIORAL;\n\n"); 
  fclose(pFichvhdl);
  return;
}
/* fin de imgtxtbin1pxl */
          



/* ----------------------- imgtxtgris ----------------------------------- */
/* Crea la ROM de una imagen binaria PGM en formato texto
   cada byte tiene 1 pixel: 0 es negro 255 es blanco */

void imgtxtgris (FILE *pFichppm, int NumCol, int NumFil, int BitsMemo, char *nombrefichppm)
{
  char           nombrebasefichvhdl[100];
  char           nombrefichvhdl[100];
  FILE          *pFichvhdl;
  unsigned char  binnum[8];
  char           valorpixel [16];
  char           filappm[MAX_LINEA_PPM]; /* en teoria el maximo es 70 */
  int            numdir;
  int            iCol = 0;
  int            iFil = 0;
  int            ind = 0;
  int            indlinea = 0;
  int            indvalorpixel = 0;
  int            ibit = 0;
  unsigned char  Pixel;

  /* quitamos la extension */
  ind = 0;
  do {
    nombrebasefichvhdl[ind] = nombrefichppm[ind];
    ind++;
  } while (nombrefichppm[ind] != '.' && nombrefichppm[ind] != '\0');
  nombrebasefichvhdl[ind] = '\0';
  numdir = NumFil;
  printf ("Numero de direcciones: %i\n", numdir);

  /* nombre del fichero vhdl resultante */
  sprintf (nombrefichvhdl, "rom%ib_%s.vhd", BitsMemo, nombrebasefichvhdl);

  pFichvhdl = fopen(nombrefichvhdl, "w");
  creacabeceravhdl (pFichvhdl, NumCol, NumFil, BitsMemo, nombrebasefichvhdl, nombrefichppm);
  /* Recorremos el fichero */
  while (fgets(filappm, MAX_LINEA_PPM, pFichppm) != NULL) {
    indlinea = 0;
    indvalorpixel = 0;
    while (filappm[indlinea] != '\0') {
      switch (filappm[indlinea]) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          valorpixel[indvalorpixel] = filappm[indlinea];
          indlinea++;
          indvalorpixel++;
          while ( indlinea<MAX_LINEA_PPM && indvalorpixel != 0) {
            switch (filappm[indlinea]) {
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':
              case '8':
              case '9':
                valorpixel[indvalorpixel] = filappm[indlinea];
                indlinea++;
                indvalorpixel++;
                break;
              case 32: /* espacio */
              case '\0': /* espacio */
              case LF:  /* 10 nueva linea */
              case CR:  /* 13 retorno de carro */
                valorpixel[indvalorpixel] = '\0';
                indvalorpixel = 0;
                Pixel = atoi (valorpixel);
                if (Pixel > 255) {
                  printf (" Error, el valor del pixel es mayor que 255\n");
                }
                int2bin (Pixel, binnum);
                fprintf(pFichvhdl, "       \""); /*Comillas del principio*/
                /* Si BitsMemo vale 8, ira de 7 a 0 */
                /* Si BitsMemo vale 7, ira de 7 a 1 */
                /* Si BitsMemo vale 2, ira de 7 a 6 */
                /* Si BitsMemo no valdra 1 */
                for (ibit=7; ibit>=(8-BitsMemo); ibit--) {
                  fprintf(pFichvhdl, "%c", binnum[ibit]);
                }
                fprintf(pFichvhdl, "\""); /*Comillas del final */
                if (iCol == NumCol-1) {
                  iCol = 0;
                  if (iFil == NumFil-1) {
                    fprintf(pFichvhdl, "\n");  /* en el ultimo no se pone la coma */
                  } else {
                    fprintf(pFichvhdl, ",\n"); 
                    iFil++;
                  }
                } else {
                  fprintf(pFichvhdl, ",\n"); 
                  iCol++;
                }
                break;
              default:
                printf ("Caracter extrano %c\n", filappm[indlinea]);
                indvalorpixel = 0;
                break;
            }
          }
        default:
          indlinea++;
          break;
      }
    }
  }
  /* Terminamos de hacer la ROM */
  fprintf(pFichvhdl, "        );\n\n"); 
  fprintf(pFichvhdl, "begin\n\n"); 
  fprintf(pFichvhdl, "  addr_int <= TO_INTEGER(unsigned(addr));\n\n"); 
  fprintf(pFichvhdl, "  P_ROM: process (clk)\n"); 
  fprintf(pFichvhdl, "  begin\n"); 
  fprintf(pFichvhdl, "    if clk'event and clk='1' then\n"); 
  fprintf(pFichvhdl, "      dout <= filaimg(addr_int);\n"); 
  fprintf(pFichvhdl, "    end if;\n"); 
  fprintf(pFichvhdl, "  end process;\n\n"); 
  fprintf(pFichvhdl, "end BEHAVIORAL;\n\n"); 
  fclose(pFichvhdl);
  return;
}
/* fin de imgtxtgris */

/* --- funcioncita para los tres colores 0, 1, 2, Rojo, verde y azul */
/* simplemente devuelve el siguiente color */

int nextcolor (int color)
{
  int sigcolor = -1;

  switch (color) 
  {
    case 0:
      sigcolor = 1;
      break;
    case 1:
      sigcolor = 2;
      break;
    case 2:
      sigcolor = 0;
      break;
    default:
      sigcolor = -1;
      printf ("Error en el color \n");
  }
  return (sigcolor);
} /* fin nextcolor */
          
/* --------------------------- imgtxtcolor1fil ----------------------------- */
/* Antes la llamaba imgtxtcolor1b */
/* A partir de una imagen ppm en color (P3) crea tres ROM VHDL una para 
   cada color. Para cada color un solo bit
   Cada fila en una direccion de memoria
   Imagen:   PPM
   NumMemo:  3
   BitsMemo: 0 */

void imgtxtcolor1fil (FILE *pFichppm, int NumCol, int NumFil, char *nombrefichppm)
{
  char           nombrebasefichvhdl[100];
  char           nombrebasefichvhdlred[106];
  char           nombrebasefichvhdlgreen[106];
  char           nombrebasefichvhdlblue[106];
  char           nombrefichvhdlred[100];
  char           nombrefichvhdlgreen[100];
  char           nombrefichvhdlblue[100];
  FILE          *pFichvhdlred, *pFichvhdlgreen, *pFichvhdlblue;
  FILE          *pFichvhdltodos[3]; /* ponemos los tres punteros */
  unsigned char  binnum[8];
  char           valorpixel [16];
  char           filappm[MAX_LINEA_PPM]; /* en teoria el maximo es 70 */
  int            numdir;
  int            iCol = 0;
  int            iFil = 0;
  int            ind = 0;
  int            indlinea = 0;
  int            indvalorpixel = 0;
  int            color = 0;
  unsigned char  Pixel;

  /* quitamos la extension */
  ind = 0;
  do {
    nombrebasefichvhdl[ind] = nombrefichppm[ind];
    ind++;
  } while (nombrefichppm[ind] != '.' && nombrefichppm[ind] != '\0');
  nombrebasefichvhdl[ind] = '\0';
  numdir = NumFil;
  printf ("Numero de direcciones: %i\n", numdir);
  printf ("nombrebasefichvhdl : %s\n", nombrebasefichvhdl);

  sprintf (nombrebasefichvhdlred,   "red_%s",nombrebasefichvhdl);
  sprintf (nombrebasefichvhdlgreen, "green_%s",nombrebasefichvhdl);
  sprintf (nombrebasefichvhdlblue,  "blue_%s",nombrebasefichvhdl);

  /* nombre del fichero vhdl resultante, la "t" es de origen texto */
  sprintf (nombrefichvhdlred,   "rom1b_%s.vhd",nombrebasefichvhdlred);
  sprintf (nombrefichvhdlgreen, "rom1b_%s.vhd",nombrebasefichvhdlgreen);
  sprintf (nombrefichvhdlblue,  "rom1b_%s.vhd",nombrebasefichvhdlblue);

  printf ("nombrefichvhdlred: %s\n", nombrefichvhdlred);

  pFichvhdlred = fopen(nombrefichvhdlred, "w");
  pFichvhdlgreen = fopen(nombrefichvhdlgreen, "w");
  pFichvhdlblue = fopen(nombrefichvhdlblue, "w");

  pFichvhdltodos[0] = pFichvhdlred;
  pFichvhdltodos[1] = pFichvhdlgreen;
  pFichvhdltodos[2] = pFichvhdlblue;

  /* Uno es la profundidad */
  creacabeceravhdl (pFichvhdlred, NumCol, NumFil, 0,
                    nombrebasefichvhdlred, nombrefichppm);
  creacabeceravhdl (pFichvhdlgreen, NumCol, NumFil, 0,
                    nombrebasefichvhdlgreen, nombrefichppm);
  creacabeceravhdl (pFichvhdlblue, NumCol, NumFil, 0,
                    nombrebasefichvhdlblue, nombrefichppm);

  fprintf(pFichvhdlred,   "       \""); 
  fprintf(pFichvhdlgreen, "       \""); 
  fprintf(pFichvhdlblue,  "       \""); 
  /* Recorremos el fichero */
  while (fgets(filappm, MAX_LINEA_PPM, pFichppm) != NULL) {
    indlinea = 0;
    indvalorpixel = 0;
    while (filappm[indlinea] != '\0') {
      switch (filappm[indlinea]) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          valorpixel[indvalorpixel] = filappm[indlinea];
          indlinea++;
          indvalorpixel++;
          while ( indlinea<MAX_LINEA_PPM && indvalorpixel != 0) {
            switch (filappm[indlinea]) {
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':
              case '8':
              case '9':
                valorpixel[indvalorpixel] = filappm[indlinea];
                indlinea++;
                indvalorpixel++;
                break;
              case 32: /* espacio */
              case '\0': /* espacio */
              case LF:  /* 10 nueva linea */
              case CR:  /* 13 retorno de carro */
                valorpixel[indvalorpixel] = '\0';
                indvalorpixel = 0;
                Pixel = atoi (valorpixel);
                if (Pixel > 255) {
                  printf (" Error, el valor del pixel es mayor que 255\n");
                }
                int2bin (Pixel, binnum);
                fprintf(pFichvhdltodos[color], "%c", binnum[7]); 
                if (iCol == NumCol-1) {
                  if (iFil == NumFil-1) {
                    /* en el ultimo no se pone la coma */
                    fprintf(pFichvhdltodos[color],"\"\n"); 
                  } else {
                    fprintf(pFichvhdltodos[color],"\",\n");
                    /* la siguiente fila */
                    fprintf(pFichvhdltodos[color],   "       \""); 
                    if (color == 2) {
                      iFil++;
                      iCol = 0;
                    }
                  }
                } else {
                  if (color == 2) {
                    iCol++;
                  }
                }
                color = nextcolor(color);
                break;
              default:
                printf ("Caracter extrano %c\n", filappm[indlinea]);
                indvalorpixel = 0;
                break;
            }
          }
        default:
          indlinea++;
          break;
      }
    }
  }
  for (color=0; color<=2; color++) {
    /* Terminamos de hacer la ROM */
    fprintf(pFichvhdltodos[color], "        );\n\n"); 
    fprintf(pFichvhdltodos[color], "begin\n\n"); 
    fprintf(pFichvhdltodos[color], "  addr_int <= TO_INTEGER(unsigned(addr));\n\n"); 
    fprintf(pFichvhdltodos[color], "  P_ROM: process (clk)\n"); 
    fprintf(pFichvhdltodos[color], "  begin\n"); 
    fprintf(pFichvhdltodos[color], "    if clk'event and clk='1' then\n"); 
    fprintf(pFichvhdltodos[color], "      dout <= filaimg(addr_int);\n"); 
    fprintf(pFichvhdltodos[color], "    end if;\n"); 
    fprintf(pFichvhdltodos[color], "  end process;\n\n"); 
    fprintf(pFichvhdltodos[color], "end BEHAVIORAL;\n\n"); 
    fclose(pFichvhdltodos[color]);
  }
  return;
}
/* fin de imgtxtcolor1fil */
          
          
/* --------------------------- imgtxtcolor_1m_nb ------------------------------ */
/* A partir de una imagen ppm en color (P3) crea 1 ROM VHDL con los tres colores
   en una posicion de memoria, segun el numero de BitsMemo */
/* PPM, NumMemo: 1, BitsMemo: 3,6,8,9 */

void imgtxtcolor_1m_nb (FILE *pFichppm, int NumCol, int NumFil, 
                        char *nombrefichppm, int BitsMemo)
{
  char           nombrebasefichvhdl[100];
  char           nombrefichvhdl[100];
  FILE          *pFichvhdl;
  unsigned char  binnum[8];
  char           valorpixel [16];
  char           filappm[MAX_LINEA_PPM]; /* en teoria el maximo es 70 */
  int            numdir;
  int            iCol = 0;
  int            iFil = 0;
  int            ind = 0;
  int            ibit = 0;
  int            indlinea = 0;
  int            indvalorpixel = 0;
  int            color = 0;
  unsigned char  Pixel;

  /* quitamos la extension */
  ind = 0;
  do {
    nombrebasefichvhdl[ind] = nombrefichppm[ind];
    ind++;
  } while (nombrefichppm[ind] != '.' && nombrefichppm[ind] != '\0');
  nombrebasefichvhdl[ind] = '\0';
  numdir = NumFil;
  printf ("Numero de direcciones: %i\n", numdir);

  printf ("Nombre base: %s\n", nombrebasefichvhdl);

  /* nombre del fichero vhdl resultante */
  sprintf (nombrefichvhdl,   "rom_rgb_%ib_%s.vhd",BitsMemo, nombrebasefichvhdl);

  pFichvhdl = fopen(nombrefichvhdl, "w");

  creacabeceravhdl_1m (pFichvhdl, NumCol, NumFil, BitsMemo,
                       nombrebasefichvhdl, nombrefichppm);

  switch (BitsMemo) {
    case 3:
      fprintf(pFichvhdl, "     --\"RGB\"\n"); 
      break;
    case 6:
      fprintf(pFichvhdl, "     --\"RRGGBB\"\n"); 
      break;
    case 8:
      fprintf(pFichvhdl, "     --\"RRRGGGBB\"\n"); 
      break;
    case 9:
      fprintf(pFichvhdl, "     --\"RRRGGGBBB\"\n"); 
      break;
    default:
      printf("Error en el numero de bits \n");
      break;
  }
  /* Recorremos el fichero */
  while (fgets(filappm, MAX_LINEA_PPM, pFichppm) != NULL) {
    indlinea = 0;
    indvalorpixel = 0;
    while (filappm[indlinea] != '\0') {
    /*printf("indlinea: %i \n", indlinea);*/
      switch (filappm[indlinea]) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          valorpixel[indvalorpixel] = filappm[indlinea];
          indlinea++;
          indvalorpixel++;
          while ( indlinea<MAX_LINEA_PPM && indvalorpixel != 0) {
            switch (filappm[indlinea]) {
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':
              case '8':
              case '9':
                valorpixel[indvalorpixel] = filappm[indlinea];
                indlinea++;
                indvalorpixel++;
                break;
              case 32: /* espacio */
              case '\0': /* espacio */
              case LF:  /* 10 nueva linea */
              case CR:  /* 13 retorno de carro */
                valorpixel[indvalorpixel] = '\0';
                indvalorpixel = 0;
                Pixel = atoi (valorpixel);
                if (Pixel > 255) {
                  printf (" Error, el valor del pixel es mayor que 255\n");
                }
                int2bin (Pixel, binnum);
                if (color == 0) { 
                  /*Estamos en el rojo, hay que poner las comillas del principio */
                  fprintf(pFichvhdl, "       \""); /*Comillas del principio*/
                }
                /* Incluimos los bits mas significativos */
                fprintf(pFichvhdl, "%c", binnum[7]);
                if (BitsMemo == 6) { /* 2 bits por cada color */
                  fprintf(pFichvhdl, "%c", binnum[6]);
                }
                if (BitsMemo == 8) { /* 3 bits rojo y verde */
                  fprintf(pFichvhdl, "%c", binnum[6]);
                  if (color == 0 || color == 1) {
                    fprintf(pFichvhdl, "%c", binnum[5]);
                  }
                }
                if (BitsMemo == 9) { /* 3 bits para cada color */
                  fprintf(pFichvhdl, "%c", binnum[6]);
                  fprintf(pFichvhdl, "%c", binnum[5]);
                }
                if (color == 2) { 
                  /*Estamos en el azul, hay que poner las comillas del final */
                  fprintf(pFichvhdl, "\""); /*Comillas del final */
                  if (iCol == NumCol-1) {
                    /* Ultima columna */
                    if (iFil == NumFil-1) {
                      /* en el ultimo no se pone la coma */
                      fprintf(pFichvhdl, "\n");
                    } else {
                      fprintf(pFichvhdl, ",\n");
                      iFil++;
                      iCol = 0;
                    }
                  } else {
                    fprintf(pFichvhdl, ",\n");
                    iCol++;
                  }
                }
                color = nextcolor(color);
                break;
              default:
                printf ("Caracter extrano %c\n", filappm[indlinea]);
                indvalorpixel = 0;
                break;
            }
          }
        default:
          indlinea++;
          break;
      }
    }
  }
  for (color=0; color<=2; color++) {
    /* Terminamos de hacer la ROM */
    fprintf(pFichvhdl, "        );\n\n"); 
    fprintf(pFichvhdl, "begin\n\n"); 
    fprintf(pFichvhdl, "  addr_int <= TO_INTEGER(unsigned(addr));\n\n"); 
    fprintf(pFichvhdl, "  P_ROM: process (clk)\n"); 
    fprintf(pFichvhdl, "  begin\n"); 
    fprintf(pFichvhdl, "    if clk'event and clk='1' then\n"); 
    fprintf(pFichvhdl, "      dout <= filaimg(addr_int);\n"); 
    fprintf(pFichvhdl, "    end if;\n"); 
    fprintf(pFichvhdl, "  end process;\n\n"); 
    fprintf(pFichvhdl, "end BEHAVIORAL;\n\n"); 
    fclose(pFichvhdl);
  }
  return;
}
/* fin de imgtxtcolor_nb */
          
 
          
/* --------------------------- imgtxtcolor_nb ------------------------------ */
/* Antes era para los 8 bits: imgtxtcolor8b */
/* A partir de una imagen ppm en color (P3) crea tres ROM VHDL una para 
   cada color. Para cada color BitsMemo bits */
/* PPM, NumMemo: 3, BitsMemo: 2-8 */

void imgtxtcolor_nb (FILE *pFichppm, int NumCol, int NumFil, 
                    char *nombrefichppm, int BitsMemo)
{
  char           nombrebasefichvhdl[100];
  char           nombrebasefichvhdlred[106];
  char           nombrebasefichvhdlgreen[106];
  char           nombrebasefichvhdlblue[106];
  char           nombrefichvhdlred[100];
  char           nombrefichvhdlgreen[100];
  char           nombrefichvhdlblue[100];
  FILE          *pFichvhdlred, *pFichvhdlgreen, *pFichvhdlblue;
  FILE          *pFichvhdltodos[3]; /* ponemos los tres punteros */
  unsigned char  binnum[8];
  char           valorpixel [16];
  char           filappm[MAX_LINEA_PPM]; /* en teoria el maximo es 70 */
  int            numdir;
  int            iCol = 0;
  int            iFil = 0;
  int            ind = 0;
  int            ibit = 0;
  int            indlinea = 0;
  int            indvalorpixel = 0;
  int            color = 0;
  unsigned char  Pixel;

  /* quitamos la extension */
  ind = 0;
  do {
    nombrebasefichvhdl[ind] = nombrefichppm[ind];
    ind++;
  } while (nombrefichppm[ind] != '.' && nombrefichppm[ind] != '\0');
  nombrebasefichvhdl[ind] = '\0';
  numdir = NumFil;
  printf ("Numero de direcciones: %i\n", numdir);

  printf ("Nombre base: %s\n", nombrebasefichvhdl);
  sprintf (nombrebasefichvhdlred,   "red_%s",nombrebasefichvhdl);
  sprintf (nombrebasefichvhdlgreen, "green_%s",nombrebasefichvhdl);
  sprintf (nombrebasefichvhdlblue,  "blue_%s",nombrebasefichvhdl);

  /* nombre del fichero vhdl resultante */
  sprintf (nombrefichvhdlred,   "rom%ib_%s.vhd",BitsMemo, nombrebasefichvhdlred);
  sprintf (nombrefichvhdlgreen, "rom%ib_%s.vhd",BitsMemo, nombrebasefichvhdlgreen);
  sprintf (nombrefichvhdlblue,  "rom%ib_%s.vhd",BitsMemo, nombrebasefichvhdlblue);

  pFichvhdlred = fopen(nombrefichvhdlred, "w");
  pFichvhdlgreen = fopen(nombrefichvhdlgreen, "w");
  pFichvhdlblue = fopen(nombrefichvhdlblue, "w");

  pFichvhdltodos[0] = pFichvhdlred;
  pFichvhdltodos[1] = pFichvhdlgreen;
  pFichvhdltodos[2] = pFichvhdlblue;

  creacabeceravhdl (pFichvhdlred, NumCol, NumFil, BitsMemo,
                    nombrebasefichvhdlred, nombrefichppm);
  creacabeceravhdl (pFichvhdlgreen, NumCol, NumFil, BitsMemo,
                    nombrebasefichvhdlgreen, nombrefichppm);
  creacabeceravhdl (pFichvhdlblue, NumCol, NumFil, BitsMemo,
                    nombrebasefichvhdlblue, nombrefichppm);

  printf ("recorremos ficheros \n");

  /* Recorremos el fichero */
  while (fgets(filappm, MAX_LINEA_PPM, pFichppm) != NULL) {
    indlinea = 0;
    indvalorpixel = 0;
    while (filappm[indlinea] != '\0') {
    /*printf("indlinea: %i \n", indlinea);*/
      switch (filappm[indlinea]) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          valorpixel[indvalorpixel] = filappm[indlinea];
          indlinea++;
          indvalorpixel++;
          while ( indlinea<MAX_LINEA_PPM && indvalorpixel != 0) {
            switch (filappm[indlinea]) {
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':
              case '8':
              case '9':
                valorpixel[indvalorpixel] = filappm[indlinea];
                indlinea++;
                indvalorpixel++;
                break;
              case 32: /* espacio */
              case '\0': /* espacio */
              case LF:  /* 10 nueva linea */
              case CR:  /* 13 retorno de carro */
                valorpixel[indvalorpixel] = '\0';
                indvalorpixel = 0;
                Pixel = atoi (valorpixel);
                if (Pixel > 255) {
                  printf (" Error, el valor del pixel es mayor que 255\n");
                }
                int2bin (Pixel, binnum);
                fprintf(pFichvhdltodos[color], "       \""); /*Comillas del principio*/
                /* Si BitsMemo vale 8, ira de 7 a 0 */
                /* Si BitsMemo vale 7, ira de 7 a 1 */
                /* Si BitsMemo vale 2, ira de 7 a 6 */
                /* Si BitsMemo no valdra 1 */
                for (ibit=7; ibit>=(8-BitsMemo); ibit--) {
                  fprintf(pFichvhdltodos[color], "%c", binnum[ibit]);
                }
                fprintf(pFichvhdltodos[color], "\""); /*Comillas del final */
                if (iCol == NumCol-1) {
                  if (iFil == NumFil-1) {
                    /* en el ultimo no se pone la coma */
                    fprintf(pFichvhdltodos[color], "\n");
                  } else {
                    fprintf(pFichvhdltodos[color], ",\n");
                    if (color == 2) {
                      iFil++;
                      iCol = 0;
                    }
                  }
                } else {
                  fprintf(pFichvhdltodos[color], ",\n");
                  if (color == 2) {
                    iCol++;
                  }
                }
                color = nextcolor(color);
                break;
              default:
                printf ("Caracter extrano %c\n", filappm[indlinea]);
                indvalorpixel = 0;
                break;
            }
          }
        default:
          indlinea++;
          break;
      }
    }
  }
  for (color=0; color<=2; color++) {
    /* Terminamos de hacer la ROM */
    fprintf(pFichvhdltodos[color], "        );\n\n"); 
    fprintf(pFichvhdltodos[color], "begin\n\n"); 
    fprintf(pFichvhdltodos[color], "  addr_int <= TO_INTEGER(unsigned(addr));\n\n"); 
    fprintf(pFichvhdltodos[color], "  P_ROM: process (clk)\n"); 
    fprintf(pFichvhdltodos[color], "  begin\n"); 
    fprintf(pFichvhdltodos[color], "    if clk'event and clk='1' then\n"); 
    fprintf(pFichvhdltodos[color], "      dout <= filaimg(addr_int);\n"); 
    fprintf(pFichvhdltodos[color], "    end if;\n"); 
    fprintf(pFichvhdltodos[color], "  end process;\n\n"); 
    fprintf(pFichvhdltodos[color], "end BEHAVIORAL;\n\n"); 
    fclose(pFichvhdltodos[color]);
  }
  return;
}
/* fin de imgtxtcolor_nb */

/* -------------------- procesaLinea  ------------------------------------ */
/* Procesa las lineas de la cabecera del fichero PPM, PGM, PBM             */
/* Obtiene:                                                                */
/*  - El tipo de fichero: quebusco == buscoTipo                            */
/*     tipoPPM = 1 -> Imagen binaria en texto                              */
/*     tipoPPM = 2 -> Imagen monocolor (escala de grises) en texto         */
/*     tipoPPM = 3 -> Imagen tricolor en texto                             */
/*     tipoPPM = 4 -> Imagen binaria en binario                            */
/*     tipoPPM = 5 -> Imagen monocolor (escala de grises) en binario       */
/*     tipoPPM = 6 -> Imagen tricolor en binario                           */
/*  - El ancho de la imagen: quebusco == buscoAncho                        */
/*     anchoimg                                                            */
/*  - El alto de la imagen: quebusco == buscoAlto                          */
/*     altoimg                                                             */
/*  - La profundidad de la imagen: quebusco == buscoProf                   */
/*     profimg                                                             */


int procesaLinea (FILE *pFichppm, int *quebusco,
                  int *tipoPPM, int *anchoimg, int *altoimg, int *profimg)
{

  int   indchar = 0;
  int   indlinea = 0;
  int   otralinea = 0;
  char  filappm[MAX_LINEA_PPM]; /* en teoria el maximo es 70 */
  char  anchochar [10];
  char  altochar [10];
  char  profchar [10];


  /* indicamos que por ahora no tienen nada */
  anchochar[0] = '\0';
  altochar[0] = '\0';
  profchar[0] = '\0';

  fgets(filappm, MAX_LINEA_PPM, pFichppm);
  printf ("%s\n", filappm);

  /* ------------------ TIPO ----------------------------- */
  if (*quebusco == buscoTipo) {
    indlinea = 0;
    while ( indlinea<MAX_LINEA_PPM && otralinea == 0 && *quebusco == buscoTipo) {
      printf ("letra: %c\n", filappm[indlinea]);
      switch (filappm[indlinea]) {
        case 'P':
        case 'p':
          printf("Encontramos la P\n");
          /* Econtramos la P */
          *quebusco = buscoAncho;
          indlinea++;
          switch (filappm[indlinea]) {
            case '1' :
              printf(" Imagen binaria en texto\n");
              /* Imagen binaria en texto */
              *tipoPPM = 1;
              break;
            case '2' :
              /* Imagen monocolor en texto */
              *tipoPPM = 2;
              break;
            case '3' :
              /* Imagen tricolor en texto */
              *tipoPPM = 3;
              break;
            case '4' :
              /* Imagen binaria en binario */
              *tipoPPM = 4;
              break;
            case '5' :
              /* Imagen monocolor en binario */
              *tipoPPM = 5;
              break;
            case '6' :
              /* Imagen tricolor en binario */
              *tipoPPM = 6;
              break;
            default :
              *quebusco = berror;
              printf ("Error en el procesamiento del fichero PPM\n");
              printf ("falta el tipo despues del caracter P\n");
              otralinea = 1;
              break;
          }
          break;
        case '#':
        case '\0':
        case LF:  /* 10 nueva linea */
        case CR:  /* 13 retorno de carro */
          otralinea = 1;
          break;
        case 32:  /* el espacio */
          break;
        default:
          printf ("simbolo: %i\n", filappm[indlinea]);
          *quebusco = berror;
          printf ("Error en el procesamiento del fichero PPM\n");
          printf ("falta caracter P\n");
          otralinea = 1;
          break;
      }
      indlinea++;
    }
  }
  /* ------------------ ANCHO ----------------------------- */
  if (otralinea == 0 && (*quebusco == buscoAncho)) {
    indchar = 0;
    while ( indlinea<MAX_LINEA_PPM && otralinea == 0 && *quebusco == buscoAncho) {
      switch (filappm[indlinea]) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          anchochar[indchar] = filappm[indlinea];
          indlinea++;
          indchar++;
          while ( indlinea<MAX_LINEA_PPM && indchar != 0) {
            switch (filappm[indlinea]) {
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':
              case '8':
              case '9':
                anchochar[indchar] = filappm[indlinea];
                indchar++;
                indlinea++;
                break;
              case 32 : /* espacio */
                *quebusco = buscoAlto;
                anchochar[indchar] = '\0';
                *anchoimg = atoi(anchochar);
                indchar = 0;
                break;
              case '#':
              case '\0':
              case LF:  /* 10 nueva linea */
              case CR:  /* 13 retorno de carro */
                *quebusco = buscoAlto;
                anchochar[indchar] = '\0';
                *anchoimg = atoi(anchochar);
                otralinea = 1;
                indchar = 0;
                break;
            }
          }
          break;
        case '#':
        case '\0':
        case LF:  /* 10 nueva linea */
        case CR:  /* 13 retorno de carro */
          otralinea = 1;
          break;
        case 32 : /*espacio */
          indlinea++;
          /* seguimos buscando */
          break;
        default : 
          printf (" Error, caracter extraño");
          printf (" deberia ser el ancho de la imagen\n");
          break;
      }
    }
  }
  /* ------------------ ALTO ----------------------------- */
  /* No van elsifes porque podemos venir de la anterior */
  if (otralinea == 0 && (*quebusco == buscoAlto)) {
    printf ("buscamos alto \n");
    indchar = 0;
    while ( indlinea<MAX_LINEA_PPM && otralinea == 0 && *quebusco == buscoAlto) {
      switch (filappm[indlinea]) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          altochar[indchar] = filappm[indlinea];
          indlinea++;
          indchar++;
          while ( indlinea<MAX_LINEA_PPM && indchar != 0) {
            switch (filappm[indlinea]) {
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':
              case '8':
              case '9':
                altochar[indchar] = filappm[indlinea];
                indchar++;
                indlinea++;
                break;
              case 32 : /* espacio */
                if (*tipoPPM == 1 || *tipoPPM == 3) {
                  /* Para las binarias no se indica la profundidad */
                  *quebusco = buscoNada;
                  otralinea = 1;
                } else {
                  *quebusco = buscoProf;
                }
                altochar[indchar] = '\0';
                *altoimg = atoi(altochar);
                printf ("ALLLTO: %i \n", *altoimg);
                indchar = 0;
                break;
              case '#':
              case '\0':
              case LF:  /* 10 nueva linea */
              case CR:  /* 13 retorno de carro */
                if (*tipoPPM == 1 || *tipoPPM == 4) {
                  /* Para las binarias no se indica la profundidad */
                  *quebusco = buscoNada;
                  otralinea = 1;
                } else {
                  *quebusco = buscoProf;
                }
                altochar[indchar] = '\0';
                *altoimg = atoi(altochar);
                otralinea = 1;
                indchar = 0;
                break;
            }
          }
          break;
        case '#':
        case '\0':
        case LF:  /* 10 nueva linea */
        case CR:  /* 13 retorno de carro */
          otralinea = 1;
          break;
        case 32 : /*espacio */
          indlinea++;
          /* seguimos buscando */
          break;
        default : 
          printf (" Error, caracter extraño");
          printf (" deberia ser el alto de la imagen\n");
      }
    }
  }
  /* ------------------ PROFUNDIDAD ----------------------------- */
  /* No van elsifes porque podemos venir de la anterior */
  if (otralinea == 0 && (*quebusco == buscoProf)) {
    indchar = 0;
    while ( indlinea<MAX_LINEA_PPM && otralinea == 0 && *quebusco == buscoProf) {
      switch (filappm[indlinea]) {
        case '0':
        case '1':
        case '2':
        case '3':
        case '4':
        case '5':
        case '6':
        case '7':
        case '8':
        case '9':
          profchar[indchar] = filappm[indlinea];
          indlinea++;
          indchar++;
          while ( indlinea<MAX_LINEA_PPM && indchar != 0) {
            switch (filappm[indlinea]) {
              case '0':
              case '1':
              case '2':
              case '3':
              case '4':
              case '5':
              case '6':
              case '7':
              case '8':
              case '9':
                profchar[indchar] = filappm[indlinea];
                indchar++;
                indlinea++;
                break;
              case 32 : /* espacio */
                *quebusco = buscoNada;
                otralinea = 1;
                profchar[indchar] = '\0';
                *profimg = atoi(profchar);
                indchar = 0;
                break;
              case '#':
              case '\0':
              case LF:  /* 10 nueva linea */
              case CR:  /* 13 retorno de carro */
                *quebusco = buscoNada;
                profchar[indchar] = '\0';
                *profimg = atoi(profchar);
                otralinea = 1;
                indchar = 0;
                break;
            }
          }
          break;
        case '#':
        case '\0':
        case LF:  /* 10 nueva linea */
        case CR:  /* 13 retorno de carro */
          otralinea = 1;
          break;
        case 32 : /*espacio */
          indlinea++;
          /* seguimos buscando */
          break;
        default : 
          printf (" Error, caracter extraño");
          printf (" deberia ser la profundidad de la imagen\n");
      }
    }
  }
  return (*quebusco);
}
/* fin de procesaLinea */
            
      
/* -------------------------- ppm2rom ---------------------------------*/
/* funcion principal que convierte una imagen ppm a una ROM en VHDL */
/* Argumentos explicados en la funcion main */
/* NumMemo solo se le hace caso cuando es una imagen PPM (3 colores) */

void ppm2rom (char *nombrefichppm, int BitsMemo, int NumMemo)
{
  int            ind = 0;
  int            tipoPPM = -1;
  int            anchoimg = -1;
  int            altoimg = -1;
  int            profimg = -1;
  FILE          *pFichppm;
  
  int            quebusco = buscoTipo;

  pFichppm = fopen(nombrefichppm, "r");
  if (pFichppm ==NULL) {
    printf ("Error al abrir el fichero %s\n",nombrefichppm);
    printf ("Comprueba que existe el fichero\n");
    exit(1);
  } else {
    while (quebusco != berror && quebusco != buscoNada) {
      /* Voy llamando a procesaLinea buscando:
           (1): buscoTipo:  el tipo de imagen,
           (2): buscoAncho: el ancho de la imagen,
           (3): buscoAlto:  el alto de la imagen
           (4): buscoProf:  la profundidad de la imagen */
      procesaLinea (pFichppm,&quebusco,&tipoPPM, &anchoimg, &altoimg, &profimg);
      if (quebusco == berror) {
        printf ("Error en la interpretacion del fichero PPM \n");
        exit (1);
      }
    }
    printf ("Datos img: tipo: %i, ancho: %i, alto: %i, prof: %i \n", tipoPPM, anchoimg, altoimg, profimg);
    /* En teoria ya estamos en la imagen */
    switch (tipoPPM) {
      case 1:
        printf ("vamos a imagen binaria en texto \n");
        /* imagen binaria texto */
        if (BitsMemo == 1) {
          /* cada pixel es una posicion de memoria */
          /* PBM, BitsMemo: 1, NumMemo: - */
          imgtxtbin1pxl (pFichppm, anchoimg, altoimg, nombrefichppm);
        } else { /*si hay un 8 es que se ha puesto por defecto */
          /* cada fila es una posicion de memoria */
          /* PBM, BitsMemo: 0, NumMemo: - */
          imgtxtbin (pFichppm, anchoimg, altoimg, nombrefichppm);
        }
        break;
      case 2:
        printf ("vamos a imagen en escala de grises en texto \n");
        /* imagen gris texto */
        if (BitsMemo > 1 && BitsMemo <= 8) {
          /* PBM, BitsMemo: 2-8, NumMemo: - */
          imgtxtgris (pFichppm, anchoimg, altoimg, BitsMemo, nombrefichppm);
        } else {
          printf ("Parámetro erroneo para imagen PGM \n");
        }
        break;
      case 3:
        printf ("vamos a imagen en color (RGB) en texto \n");
        if (NumMemo == 1) {
          /* Una sola memoria para los tres colores*/
          if (BitsMemo == 3 || BitsMemo == 6 || BitsMemo == 8 || BitsMemo == 9) {
            /* 1 memorias, 3 bits cada palabra, 1 bit para cada color, RGB  */
            /* PPM, NumMemo: 1, BitsMemo: 3,6,8,9 */
            imgtxtcolor_1m_nb (pFichppm, anchoimg, altoimg, nombrefichppm, BitsMemo);
          } else {
            printf ("Error en el numero de bits de BitsMemo\n");
          }
        } else {
          /* Una memoria para cada color*/
          if (BitsMemo == 0) {
            /* 3 memorias, 1 bit para cada color, 1 fila en cada direccion */
            /* PPM, NumMemo: 3, BitsMemo: 0 */
            /* antes la llamaba imgtxtcolor1b */
            imgtxtcolor1fil (pFichppm, anchoimg, altoimg, nombrefichppm);
          } else {
            if (BitsMemo == 1) {
              /* 3 memorias, 1 bit para cada color, 1 pixel en cada direccion */
              /* PPM, NumMemo: 3, BitsMemo: 1 */
   /* AAAAAAAAAAAAAAAAAAAAAAAAAAAAAA */
              printf ("Todavia no implementado: BitsMemo=1 y NumMemo = 3\n");
            } else {
              if (BitsMemo <= 8 ) {
                /* 3 memorias, BitsMemo bits para cada color, 1 pixel en cada direccion */
                /* PPM, NumMemo: 3, BitsMemo: 2-8 */
                /* antes la llamaba imgtxtcolor8b (para BitsMemo = 8 bits) */
                imgtxtcolor_nb (pFichppm, anchoimg, altoimg, nombrefichppm, BitsMemo);
              } else {
                printf ("Todavia no implementado BitsMemo > 8 y NumMemo = 3\n");
              }
            }
          }
        }
        break;
      case 4:
        /* imagen binaria en binario */
        /*imgbinbin (pFichppm, anchoimg, altoimg, nombrefichvhdl);*/
        printf ("PBM en formato binario, aun no soportado\n");
        break;
      case 5:
        /* imagen gris en binario */
        /*imgbingris (pFichppm, anchoimg, altoimg, profimg, nombrefichvhdl);*/
        printf ("PGM en formato binario, aun no soportado\n");
        break;
      case 6:
        /* imagen gris en binario */
        /*imgbincolor (pFichppm, anchoimg, altoimg, profimg, nombrefichvhdl);*/
        printf ("PPM en formato binario, aun no soportado\n");
        break;
      default:
        printf ("Error en el tipo de imagen \n");
    }
  }      
  return;
}
/* fin de ppm2rom */

/* ----------------------- MAIN -------------------------------- */
/* Un argumento obligatorio:      */
/*        el nombre del fichero (argc=2)*/

/* Opcional, el numero de bits por cada posicion de memoria (argc=3) */
/* Opcional, el numero de memorias (para PPM): 1 o 3 */

int main(int argc, char* argv[])
{

  
 
  if (argc < 2  || argc > 4) {
    printf ("Uso: %s NombreFicheroPPM [BitsMemo] [NumMemo]\n",
        argv[0]);
    printf (" Argumentos: \n");
    printf ("      -NombreFicheroPPM: \n");
    printf ("           El nombre del fichero ppm (pbm, pgm, ppm)\n");
    printf ("      -BitsMemo: bits para cada palabra de la memoria: \n");
    printf ("           Numero de bits para cada color: 0,1-8 \n");
    printf ("           + En imagenes PBM (blanco y negro) \n");
    printf ("              * Si se pone 1 indica que cada pixel es una posicion de memoria \n");
    printf ("                debes poner un uno para imagenes grandes (por ejemplo mas de 255 columnas)\n");
    printf ("                para evitar memorias con datos mayores que 255.\n");
    printf ("              * Si se pone 0 indica que cada posicion de memoria representa una fila\n");
    printf ("                es el valor por defecto en imagenes PBM\n");
    printf ("           + En imagenes PGM (escala de grises), 2-8 (8 valor por defecto, no acepta 1)\n");
    printf ("           + En imagenes PPM (tres colores: RGB)\n");
    printf ("              * si se pone un 8, 8 bits para cada color\n");
    printf ("              * si se pone un 1, un solo bit para cada color\n");
    printf ("              * si se pone un 0, un solo bit para cada color y cada fila en una direccion\n");
    printf ("      -NumMemo: Numero de memorias (solo valido para PPM).\n");
    printf ("           Valores: 1, 3 \n");
    printf ("           Por defecto se crean tres memorias, una para cada color \n");
    printf ("           + NumMemo = 1, indica que en una memoria se agrupan los tres colores\n");
    printf ("             Por ejemplo:\n");
    printf ("               *BitsMemo=3 NumMemo=1 :\n");
    printf ("                  Se crea una memoria que cada palabra alberga los 3 colores: RGB (1 bit para cada color:\n");
    printf ("                  8 colores\n");
    printf ("               *BitsMemo=6 NumMemo=1 :\n");
    printf ("                  Se crea una memoria que cada palabra alberga los 3 colores: RGB (2 bits para cada color:\n");
    printf ("                  64 colores\n");
    printf ("               *BitsMemo=8 NumMemo=1 :\n");
    printf ("                  Se crea una memoria que cada palabra alberga los tres colores: RGB\n");
    printf ("                  (3 bits para rojo, 3 para verde y 2 bits para azul:\n");
    printf ("                  256 colores\n");
    printf ("               *BitsMemo=9 NumMemo=1 :\n");
    printf ("                  Se crea una memoria que cada palabra alberga los tres colores: RGB\n");
    printf ("                  (3 bits para cada color:\n");
    printf ("                  512 colores\n");
    printf ("           + NumMemo = 3, indica que se crean tres memorias, una para cada color\n");
    printf ("               *BitsMemo=8 NumMemo=3 :\n");
    printf ("                   Se crean 3 memorias que cada palabra alberga 8 bits del pixel de su color\n");
    printf ("               *BitsMemo=4 NumMemo=3 :\n");
    printf ("                   Se crean 3 memorias que cada palabra alberga 4 bits del pixel de su color\n");
    printf ("               *BitsMemo=1 NumMemo=3 :\n");
    printf ("                   Se crean 3 memorias que cada palabra alberga 1 bit del pixel de su color\n");
    printf ("               *BitsMemo=0 NumMemo=3 :\n");
    printf ("                   Se crean 3 memorias que cada palabra la fila de la imagen en su color\n");
    printf ("                   Un bit para cada color\n");
  } else {
    if (argc == 2) {
      /* si no pone, se pone por defecto: 8 y 3 */
      ppm2rom (argv[1], 8, 3);
    } else {
      if (argc == 3) {
        ppm2rom (argv[1], atoi(argv[2]), 3);
      } else {
        ppm2rom (argv[1], atoi(argv[2]), atoi(argv[3]));
      }
    }
  }
}


      
    
    
