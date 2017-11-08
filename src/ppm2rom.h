/* funcion que pasa un fichero en formato raw, de 8 bits y blanco y negro a
   una ROM en VHDL */

#define CR 13            /* Decimal code of Carriage Return char */
#define LF 10            /* Decimal code of Line Feed char */

/* en teoria el maximo es 70 */
#define MAX_LINEA_PPM 120

/*enum buscar { berror, buscoTipo, buscoAncho, buscoAlto, buscoProf, buscoNada};*/
#define berror 0
#define buscoTipo 1
#define buscoAncho 2
#define buscoAlto 3
#define buscoProf 4
#define buscoNada 5


void int2bin (unsigned char numero, char *binnum);
void creacabeceravhdl (FILE *pFichvhdl, int NumCol, int NumFil, int bitsprof, char *Nombrebase, char *Nombreppm);
void imgtxtbin (FILE *pFichppm, int NumCol, int NumFil, char *nombrebasefichvhdl);
void imgtxtgris (FILE *pFichppm, int NumCol, int NumFil, int profimg, char *nombrefichppm);

void imgtxtcolor_nb (FILE *pFichppm, int NumCol, int NumFil, 
                    char *nombrefichppm, int BitsMemo);
void ppm2rom (char *nombrefichppm, int BitsMemo, int NumMemo);
int procesaLinea (FILE *pFichppm, int *quebusco,
                  int *tipoPPM, int *anchoimg, int *altoimg, int *profimg);
/*buscar procesaLinea (buscar *quebusco, FILE *pFichppm, int *tipoPPM, int *anchoimg, int *altoimg, int *profimg);*/


      
    
    
