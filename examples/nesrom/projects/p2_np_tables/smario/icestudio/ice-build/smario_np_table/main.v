// Code generated by Icestudio 0.7.1w202108280708

`default_nettype none

//---- Top entity
module main (
 input va90334,
 input v2cb7a3,
 output [1:0] v8514bc,
 output [1:0] v2cf531,
 output [1:0] v62c682,
 output v4e6402,
 output v712bbf
);
 wire w0;
 wire w1;
 wire w2;
 wire [0:9] w3;
 wire [0:9] w4;
 wire [0:4] w5;
 wire [0:4] w6;
 wire [0:7] w7;
 wire [0:2] w8;
 wire [0:7] w9;
 wire [0:2] w10;
 wire [0:7] w11;
 wire [0:7] w12;
 wire [0:2] w13;
 wire w14;
 wire w15;
 wire w16;
 wire w17;
 wire w18;
 wire [0:1] w19;
 wire [0:1] w20;
 wire [0:1] w21;
 wire w22;
 wire w23;
 assign w1 = v2cb7a3;
 assign w2 = va90334;
 assign v8514bc = w19;
 assign v2cf531 = w20;
 assign v62c682 = w21;
 assign v4e6402 = w22;
 assign v712bbf = w23;
 assign w9 = w7;
 assign w10 = w8;
 assign w18 = w0;
 vd8d107 v820333 (
  .vc82b22(w0),
  .va8051c(w1)
 );
 vec49d1 v2c74e1 (
  .v7aec70(w0),
  .v12e5c2(w2),
  .v9459b8(w3),
  .vb50967(w4),
  .v7688c4(w15),
  .v7af556(w16),
  .v27278a(w17)
 );
 v5d7f3a v189a1d (
  .v83e377(w7),
  .ve091bd(w8),
  .v237199(w11)
 );
 ve87f4a v9e16af (
  .v83e377(w9),
  .ve091bd(w10),
  .v237199(w12)
 );
 v82cebd v5e3d2e (
  .v4b5b17(w3),
  .v117158(w4),
  .v822d73(w5),
  .vca1728(w6),
  .v24d12d(w8),
  .v5467e1(w13),
  .v7df241(w14)
 );
 v3ff344 vabd8fd (
  .v6a586c(w5),
  .v86d61f(w6),
  .v237199(w7)
 );
 v47ab07 v405288 (
  .va89817(w11),
  .va264a3(w12),
  .v2c3fae(w13),
  .v7c7bf8(w14),
  .v8973a7(w15),
  .vb0e99d(w16),
  .v5074f5(w17),
  .veabd1c(w18),
  .va48225(w19),
  .v0d0802(w20),
  .v1ad6a6(w21),
  .vf00ce9(w22),
  .va770b4(w23)
 );
endmodule

/*-------------------------------------------------*/
/*--   */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- 
/*-------------------------------------------------*/
//---- Top entity
module vd8d107 (
 input va8051c,
 output vc82b22
);
 wire w0;
 wire w1;
 assign w0 = va8051c;
 assign vc82b22 = w1;
 vd8d107_v3ead23 v3ead23 (
  .clk_brd(w0),
  .clk50mhz(w1)
 );
endmodule

/*-------------------------------------------------*/
/*-- pll12to50mhz  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- Generates a 50MHz clock from a 12MHz clock
/*-------------------------------------------------*/

module vd8d107_v3ead23 (
 input clk_brd,
 output clk50mhz
);
   // Generates a 50 MHz clock from a 12MHz clock
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
                 .REFERENCECLK(clk_brd),
                 .PLLOUTCORE(clk50mhz),
                 .RESETB(1'b1),
                 .BYPASS(1'b0)
              );
endmodule
//---- Top entity
module vec49d1 (
 input v12e5c2,
 input v7aec70,
 output v27278a,
 output v7688c4,
 output v7af556,
 output [9:0] v9459b8,
 output [9:0] vb50967
);
 wire w0;
 wire w1;
 wire w2;
 wire w3;
 wire [0:9] w4;
 wire [0:9] w5;
 wire w6;
 assign w0 = v12e5c2;
 assign v27278a = w1;
 assign v7688c4 = w2;
 assign v7af556 = w3;
 assign v9459b8 = w4;
 assign vb50967 = w5;
 assign w6 = v7aec70;
 vec49d1_v9a5c44 v9a5c44 (
  .rst(w0),
  .visible(w1),
  .hsinc(w2),
  .vsinc(w3),
  .col(w4),
  .fila(w5),
  .clk50mhz(w6)
 );
endmodule

/*-------------------------------------------------*/
/*-- VGA SYNC  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- Generate synchronization signals for VGA 640x480 at clk 50MHz
/*-------------------------------------------------*/

module vec49d1_v9a5c44 (
 input rst,
 input clk50mhz,
 output visible,
 output hsinc,
 output vsinc,
 output [9:0] col,
 output [9:0] fila
);
 // @include vga_sync_50mhz.v
 
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
 
endmodule
//---- Top entity
module v5d7f3a (
 input [7:0] v83e377,
 input [2:0] ve091bd,
 output [7:0] v237199
);
 wire [0:7] w0;
 wire [0:7] w1;
 wire [0:2] w2;
 assign w0 = v83e377;
 assign v237199 = w1;
 assign w2 = ve091bd;
 v5d7f3a_v5874e0 v5874e0 (
  .i_ptrn(w0),
  .d_ptable0(w1),
  .fila_in(w2)
 );
endmodule

/*-------------------------------------------------*/
/*-- PTable0 SMario  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- Pattern Table plane 0 no sprites, of a SuperMario screen
/*-------------------------------------------------*/

module v5d7f3a_v5874e0 (
 input [7:0] i_ptrn,
 input [2:0] fila_in,
 output [7:0] d_ptable0
);
 // @include smario_traspas_patronbg_0.v
 wire [10:0] addr_ptable;
 
 assign addr_ptable = {i_ptrn,fila_in};
 
 ROM_PTABLE_MARIO_TRASPAS_BG_PLN0 PTABLE0
 (
   .addr(addr_ptable),
   .dout(d_ptable0)
 );
endmodule
//---- Top entity
module ve87f4a (
 input [7:0] v83e377,
 input [2:0] ve091bd,
 output [7:0] v237199
);
 wire [0:7] w0;
 wire [0:2] w1;
 wire [0:7] w2;
 assign w0 = v83e377;
 assign w1 = ve091bd;
 assign v237199 = w2;
 ve87f4a_v5874e0 v5874e0 (
  .i_ptrn(w0),
  .fila_in(w1),
  .d_ptable1(w2)
 );
endmodule

/*-------------------------------------------------*/
/*-- PTable1 SMario  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- Pattern Table plane 1 no sprites, of a SuperMario screen
/*-------------------------------------------------*/

module ve87f4a_v5874e0 (
 input [7:0] i_ptrn,
 input [2:0] fila_in,
 output [7:0] d_ptable1
);
 // @include smario_traspas_patronbg_1.v
 wire [10:0] addr_ptable;
 
 assign addr_ptable = {i_ptrn,fila_in};
 
 ROM_PTABLE_MARIO_TRASPAS_BG_PLN1 PTABLE1
 (
   .addr(addr_ptable),
   .dout(d_ptable1)
 );
endmodule
//---- Top entity
module v82cebd (
 input [9:0] v117158,
 input [9:0] v4b5b17,
 output [4:0] v822d73,
 output [4:0] vca1728,
 output [2:0] v24d12d,
 output [2:0] v5467e1,
 output v7df241
);
 wire [0:9] w0;
 wire [0:9] w1;
 wire [0:4] w2;
 wire [0:4] w3;
 wire [0:2] w4;
 wire [0:2] w5;
 wire w6;
 assign w0 = v117158;
 assign w1 = v4b5b17;
 assign v822d73 = w2;
 assign vca1728 = w3;
 assign v24d12d = w4;
 assign v5467e1 = w5;
 assign v7df241 = w6;
 v82cebd_v5874e0 v5874e0 (
  .fila(w0),
  .col(w1),
  .fila_cuad(w2),
  .col_cuad(w3),
  .fila_in(w4),
  .col_in(w5),
  .col9(w6)
 );
endmodule

/*-------------------------------------------------*/
/*-- grid_signals  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- generation of grid signals
/*-------------------------------------------------*/

module v82cebd_v5874e0 (
 input [9:0] fila,
 input [9:0] col,
 output [4:0] fila_cuad,
 output [4:0] col_cuad,
 output [2:0] fila_in,
 output [2:0] col_in,
 output col9
);
 // Generate grid signals
 
 assign col_cuad = col[8:4];
 assign fila_cuad = fila[8:4];
 
 // useful to know when we are over column 511
 assign col9 = col[9];
 assign fila_in = fila[3:1];
 assign col_in = col[3:1];
endmodule
//---- Top entity
module v3ff344 (
 input [4:0] v6a586c,
 input [4:0] v86d61f,
 output [7:0] v237199
);
 wire [0:7] w0;
 wire [0:4] w1;
 wire [0:4] w2;
 assign v237199 = w0;
 assign w1 = v6a586c;
 assign w2 = v86d61f;
 v3ff344_v5874e0 v5874e0 (
  .num_patron(w0),
  .fila_cuad(w1),
  .col_cuad(w2)
 );
endmodule

/*-------------------------------------------------*/
/*-- NameTable SMario sports  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- Name Table of a SuperMario screen, input ports are split in grid col & row
/*-------------------------------------------------*/

module v3ff344_v5874e0 (
 input [4:0] fila_cuad,
 input [4:0] col_cuad,
 output [7:0] num_patron
);
 // @include smario_traspas_nt_nt0.v
 
 wire [9:0] dir_ntable;
 
 assign dir_ntable = {fila_cuad, col_cuad};
 
 ROM_NTABLE_SMARIO_TRASPAS NTABLE
 (
   .addr(dir_ntable),
   .dout(num_patron)
 );
endmodule
//---- Top entity
module v47ab07 (
 input [7:0] va89817,
 input [7:0] va264a3,
 input [2:0] v2c3fae,
 input v7c7bf8,
 input v8973a7,
 input vb0e99d,
 input v5074f5,
 input veabd1c,
 output [1:0] va48225,
 output [1:0] v0d0802,
 output [1:0] v1ad6a6,
 output vf00ce9,
 output va770b4
);
 wire w0;
 wire w1;
 wire [0:1] w2;
 wire [0:1] w3;
 wire [0:1] w4;
 wire [0:7] w5;
 wire [0:2] w6;
 wire w7;
 wire w8;
 wire w9;
 wire w10;
 wire w11;
 wire [0:7] w12;
 assign w0 = v7c7bf8;
 assign w1 = v5074f5;
 assign va48225 = w2;
 assign v0d0802 = w3;
 assign v1ad6a6 = w4;
 assign w5 = va264a3;
 assign w6 = v2c3fae;
 assign w7 = v8973a7;
 assign w8 = vb0e99d;
 assign vf00ce9 = w9;
 assign va770b4 = w10;
 assign w11 = veabd1c;
 assign w12 = va89817;
 v47ab07_v5874e0 v5874e0 (
  .col9(w0),
  .visible(w1),
  .red(w2),
  .green(w3),
  .blue(w4),
  .d_ptable1(w5),
  .col_in(w6),
  .hsinc(w7),
  .vsinc(w8),
  .hsync(w9),
  .vsync(w10),
  .clk(w11),
  .d_ptable0(w12)
 );
endmodule

/*-------------------------------------------------*/
/*-- Name & Pattern Tables Pxl Gen  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- Pixel generator for Name Table and pattern tables
/*-------------------------------------------------*/

module v47ab07_v5874e0 (
 input [7:0] d_ptable0,
 input [7:0] d_ptable1,
 input [2:0] col_in,
 input col9,
 input hsinc,
 input vsinc,
 input visible,
 input clk,
 output [1:0] red,
 output [1:0] green,
 output [1:0] blue,
 output hsync,
 output vsync
);
  reg [1:0] rojo, verde, azul;
  reg [1:0] rojo_rg, verde_rg, azul_rg;
  reg hsync_rg, vsync_rg;
  wire [1:0] color_index;
  assign red = rojo_rg;
  assign green = verde_rg;
  assign blue = azul_rg;
  assign hsync = hsync_rg;
  assign vsync = vsync_rg;
  
  assign color_index = {d_ptable1[~col_in],d_ptable0[~col_in]};
  
  always @(*)
   begin
     rojo   = 2'b00;
     verde  = 2'b00;
     azul   = 2'b00;
     if (visible) begin
     if (col9 == 1'b0) begin  // less than 512
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
   // register to synchronize
   always @ (posedge clk)
   begin
     rojo_rg   <= rojo; 
     verde_rg  <= verde; 
     azul_rg   <= azul; 
     hsync_rg <= hsinc; 
     vsync_rg <= vsinc; 
   end
endmodule
