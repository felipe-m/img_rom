// Code generated by Icestudio 0.7.1w202108280708

`default_nettype none

//---- Top entity
module main (
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
 main_v5874e0 v5874e0 (
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
/*-- Name Table Pxl Gen  */
/*-- - - - - - - - - - - - - - - - - - - - - - - --*/
/*-- Pixel generator for Name Table
/*-------------------------------------------------*/

module main_v5874e0 (
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
