// Code generated by Icestudio 0.7.1w202108280708

`default_nettype none

//---- Top entity
module main (
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
 main_v5874e0 v5874e0 (
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

module main_v5874e0 (
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