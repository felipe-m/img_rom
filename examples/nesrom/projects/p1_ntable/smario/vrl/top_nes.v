//------------------------------------------------------------------------------
// Felipe Machado Sanchez
// Area de Tecnologia Electronica
// Universidad Rey Juan Carlos


module top_nes
  # (parameter
    C_MEMW  = 8,  // ancho de la memoria
    C_NB_RED  = 2,
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

  wire  [C_NB_RED-1:0]   rojo;  // color VGA rojo
  wire  [C_NB_GREEN-1:0] verde; // color VGA verde
  wire  [C_NB_BLUE-1:0]  azul;  // color VGA azu
  wire  hsinc;
  wire  vsinc;

  wire  [10-1:0] col;
  wire  [10-1:0] fila;
  wire           visible;

  wire      [10-1:0] addr_ntable;
  wire  [C_MEMW-1:0] d_ntable;

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

