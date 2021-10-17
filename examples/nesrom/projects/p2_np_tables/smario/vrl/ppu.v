//------------------------------------------------------------------------------
// Felipe Machado Sanchez
// Area de Tecnologia Electronica
// Universidad Rey Juan Carlos
// https://github.com/felipe-m

// Segundo ejemplo del fondo de la NES
// Pinta el fondo de la NES a 512x480 (NES 256x240:  x2)
// Usando solo la tabla de nombres y de patrones (4 colores sin atributos)
// Sin paletas ni atributos

// Second example of NES background
// Draws the NES background using just the Name Table and Pattern Table
// Pattern table is split in 2 planes. Memories without clock
// As a result, only 4 colors are displayed. No Attributes or palettes

module ppu
  # (parameter
    C_MEMW  = 8,  // ancho de la memoria
    C_NB_RED  = 2,
    C_NB_GREEN  = 2,
    C_NB_BLUE  = 2
  )
  (
    input               visible,
    input      [10-1:0] col,
    input      [10-1:0] fila,
    input  [C_MEMW-1:0] d_ntable,
    output     [10-1:0] addr_ntable, // dir tabla de nombres de 1KiB
    input  [C_MEMW-1:0] d_ptable0,
    input  [C_MEMW-1:0] d_ptable1,
    input      [11-1:0] addr_ptable,
    output reg [C_NB_RED-1:0] rojo, // color VGA rojo
    output reg [C_NB_GREEN-1:0] verde, // color VGA verde
    output reg [C_NB_BLUE-1:0] azul // color VGA azul
  );

  // fila y columna de la NES (8 bits)
  wire   [8-1:0] col_nes;
  wire   [8-1:0] fila_nes;

  // 8x8 cuadricula de filas y columnas de la NES: 5 bits
  // 32x30 cuadriculas: 5 bits col y fila de cuadricula
  wire   [5-1:0] col_cuad;
  wire   [5-1:0] fila_cuad;

  wire   [3-1:0] col_in; // inner NES column
  wire   [3-1:0] fila_in; // inner NES row

  // inverted (1's complement) of the col_in value
  wire   [3-1:0] col_in_inv;

  wire   [1:0] color_index;

  assign col_nes  = col[8:1];
  assign fila_nes = fila[8:1];

  assign col_in   = col_nes[2:0];
  assign fila_in  = fila_nes[2:0];

  assign col_cuad  = col_nes[7:3];
  assign fila_cuad = fila_nes[7:3];

  assign addr_ntable = {fila_cuad,col_cuad};

  assign addr_ptable = {d_ntable,fila_in};

  assign col_in_inv = ~col_in; // invert the internal column number

  assign color_index = {d_ptable1[col_in_inv],d_ptable0[col_in_inv]};

  always @(*)
  begin
    rojo   = 2'b00;
    verde  = 2'b00;
    azul   = 2'b00;
    if (visible) begin
      if (col[9] == 1'b0) begin  // less than 512
        case (color_index)
          2'b00:
            begin // background blue sky #22
              rojo  = 2'b01;
              verde = 2'b10;
              azul  = 2'b11;
            end
          2'b01:
            begin // color 1: light brown #36
              rojo  = 2'b11;
              verde = 2'b11;
              azul  = 2'b10;
            end
          2'b10:
            begin // color 2: dark brown #17
              rojo  = 2'b10;
              verde = 2'b01;
              azul  = 2'b00;
            end
          default:
            begin // color 3: black  #0F
              rojo  = 2'b00;
              verde = 2'b00;
              azul  = 2'b00;
            end
        endcase
      end
    end
  end
  
endmodule

