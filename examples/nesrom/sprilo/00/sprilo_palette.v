//- Autcmatically generated verilog ROM from a NES memory file----
//-   PALETTE MEMORY
// https://wiki.nesdev.com/w/index.php/PPU_palettes


//-  Original memory dump file name: sprilo_palette.dmp --
//---- Felipe Machado -----------------------------------
//---- Area de Tecnologia Electronica -----------
//---- Universidad Rey Juan Carlos ----------------------
//---- https://github.com/felipe-m ----------------------
//-------------------------------------------------------
//--- Memory without clock -----

//--- Ports ---------------------------------------------
// Inputs   ---------------------------------------------
//   // clk  :  clock signal
//    addr :  memory address
// Outputs  ---------------------------------------------
//    dout :  memory data out  (no clock: in the same clock cycle)




module ROM_PALETTE_SPRILO
  (
     //input     clk,   // clock
     input      [5-1:0] addr,  //32 memory positions
     output reg  [8-1:0] dout  // memory data width
  );


  always @*
  begin
    case (addr)
                               //  address:   value 
                               //    dec  : dec - hex
      5'h0: dout  = 8'b00010101; //    0 :  21 - 0x15
      5'h1: dout  = 8'b00101101; //    1 :  45 - 0x2d
      5'h2: dout  = 8'b00100111; //    2 :  39 - 0x27
      5'h3: dout  = 8'b00110000; //    3 :  48 - 0x30
      5'h4: dout  = 8'b00010101; //    4 :  21 - 0x15
      5'h5: dout  = 8'b00110000; //    5 :  48 - 0x30
      5'h6: dout  = 8'b00011010; //    6 :  26 - 0x1a
      5'h7: dout  = 8'b00001001; //    7 :   9 - 0x9
      5'h8: dout  = 8'b00010101; //    8 :  21 - 0x15
      5'h9: dout  = 8'b00101101; //    9 :  45 - 0x2d
      5'hA: dout  = 8'b00100111; //   10 :  39 - 0x27
      5'hB: dout  = 8'b00110000; //   11 :  48 - 0x30
      5'hC: dout  = 8'b00010101; //   12 :  21 - 0x15
      5'hD: dout  = 8'b00100111; //   13 :  39 - 0x27
      5'hE: dout  = 8'b00010111; //   14 :  23 - 0x17
      5'hF: dout  = 8'b00001111; //   15 :  15 - 0xf
      5'h10: dout  = 8'b00010101; //   16 :  21 - 0x15
      5'h11: dout  = 8'b00011100; //   17 :  28 - 0x1c
      5'h12: dout  = 8'b00010101; //   18 :  21 - 0x15
      5'h13: dout  = 8'b00010100; //   19 :  20 - 0x14
      5'h14: dout  = 8'b00010101; //   20 :  21 - 0x15
      5'h15: dout  = 8'b00100001; //   21 :  33 - 0x21
      5'h16: dout  = 8'b00010101; //   22 :  21 - 0x15
      5'h17: dout  = 8'b00110000; //   23 :  48 - 0x30
      5'h18: dout  = 8'b00010101; //   24 :  21 - 0x15
      5'h19: dout  = 8'b00011100; //   25 :  28 - 0x1c
      5'h1A: dout  = 8'b00010101; //   26 :  21 - 0x15
      5'h1B: dout  = 8'b00010100; //   27 :  20 - 0x14
      5'h1C: dout  = 8'b00010101; //   28 :  21 - 0x15
      5'h1D: dout  = 8'b00000010; //   29 :   2 - 0x2
      5'h1E: dout  = 8'b00111000; //   30 :  56 - 0x38
      5'h1F: dout  = 8'b00111100; //   31 :  60 - 0x3c
    endcase
  end

endmodule
