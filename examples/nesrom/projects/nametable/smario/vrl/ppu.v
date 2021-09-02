//------------------------------------------------------------------------------
// Felipe Machado Sanchez
// Area de Tecnologia Electronica
// Universidad Rey Juan Carlos
// Pinta el fondo de la NES a 512x480 (NES 256x240:  x2)
// Las cuatro paletas y 64 colores

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
    output reg [C_NB_RED-1:0] rojo, // color VGA rojo
    output reg [C_NB_GREEN-1:0] verde, // color VGA verde
    output reg [C_NB_BLUE-1:0] azul // color VGA azul
  );


  // fila y columna de la NES (8 bits)
  wire   [8-1:0] nes_col;
  wire   [8-1:0] nes_fila;

  // 8x8 cuadricula de filas y columnas de la NES: 5 bits
  // 32x30 cuadriculas: 5 bits col y fila de cuadricula
  wire   [5-1:0] cuad_col;
  wire   [5-1:0] cuad_fila;

  assign nes_col  = col[8:1];
  assign nes_fila = fila[8:1];

  assign cuad_col  = nes_col[7:3];
  assign cuad_fila = nes_fila[7:3];

  assign addr_ntable = {cuad_fila,cuad_col};

  always @(*)
  begin
    rojo   = 2'b00;
    verde  = 2'b00;
    azul   = 2'b00;
    if (visible) begin
      if (col[9] == 1'b0) begin  // less than 512
        rojo  = ~d_ntable [7:6];
        //verde = ~d_ntable [7:6];
        verde = d_ntable [5:4]; //instead of d_ntable [7:6], to have more colors
        //azul  = ~d_ntable [7:6];
        azul  = d_ntable [3:2]; //instead of d_ntable [7:6], to have more colors
      end
    end
  end
  
endmodule

