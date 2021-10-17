//------------------------------------------------------------------------------
// Felipe Machado Sanchez
// Area de Tecnologia Electronica
// Universidad Rey Juan Carlos
// https://github.com/felipe-m

// Second example of NES background
// Draws the NES background using just the Name Table and Pattern Table
// Pattern table is split in 2 planes. Memories without clock
// As a result, only 4 colors are displayed. No Attributes or palettes

module top_nes
  # (parameter
    C_MEMW  = 8,  // ancho de la memoria
    C_NB_RED  = 2, // 2 bits para cada canal de color en la Alhambra II
    C_NB_GREEN  = 2,
    C_NB_BLUE  = 2
  )
  (
    // IN PORTS
    input               rst,
    input               clk,
    // OUT PORTS
    output  reg    [C_NB_RED-1:0] red, // color VGA rojo
    output  reg [C_NB_GREEN-1:0] green, // color VGA verde
    output  reg  [C_NB_BLUE-1:0] blue, // color VGA azu
    output  reg                  hsync,
    output  reg                  vsync
  );

  wire  [C_NB_RED-1:0]   rojo; // color VGA rojo
  wire  [C_NB_GREEN-1:0] verde; // color VGA verde
  wire  [C_NB_BLUE-1:0]  azul; // color VGA azu
  wire  hsinc;
  wire  vsinc;

  wire  [10-1:0] col;
  wire  [10-1:0] fila;
  wire           visible;

  wire      [10-1:0] addr_ntable;
  wire  [C_MEMW-1:0] d_ntable;

  wire      [11-1:0] addr_ptable;
  wire  [C_MEMW-1:0] d_ptable0;
  wire  [C_MEMW-1:0] d_ptable1;

  wire            clk50mhz;


  // 50 MHz clock
   SB_PLL40_CORE
            #(.FEEDBACK_PATH("SIMPLE"),
                .PLLOUT_SELECT("GENCLK"),
                .DIVR(4'd5),
                .DIVF(6'd49),
                .DIVQ(3'd1),
                .FILTER_RANGE(3'b001)
            )
            uut
            (
                .REFERENCECLK(clk),
                .PLLOUTCORE(clk50mhz),
                .RESETB(1'b1),
                .BYPASS(1'b0)
             );

  ROM_PTABLE_MARIO_TRASPAS_BG_PLN0 PTABLE0
  (
      .addr(addr_ptable),
      .dout(d_ptable0)
  );

  ROM_PTABLE_MARIO_TRASPAS_BG_PLN1 PTABLE1
  (
      .addr(addr_ptable),
      .dout(d_ptable1)
  );

  ROM_NTABLE_SMARIO_TRASPAS  NTABLE
  (
      .addr(addr_ntable),
      .dout(d_ntable)
  );


   vga_sync i_vga 
   (
     .rst     (rst),
     .clk     (clk50mhz),
     .visible (visible),
     //.new_pxl (new_pxl),
     .hsync   (hsinc),
     .vsync   (vsinc),
     .col     (col),
     .row     (fila)
  );

  ppu i_ppu
  (
     .visible       (visible),
     //.new_pxl      (vga_new_pxl),
     .col           (col),
     .fila          (fila),
     .d_ntable      (d_ntable),
     .addr_ntable   (addr_ntable),
     .d_ptable0     (d_ptable0),
     .d_ptable1     (d_ptable1),
     .addr_ptable   (addr_ptable),
     .rojo          (rojo),
     .verde         (verde),
     .azul          (azul)
  );


  always @ (posedge clk50mhz)
  begin
    red   <= rojo; 
    green <= verde; 
    blue  <= azul; 
    hsync <= hsinc; 
    vsync <= vsinc; 
  end
    
endmodule

