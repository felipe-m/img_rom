//- Autcmatically generated verilog ROM from a NES memory file----
//-   PALETTE MEMORY
// https://wiki.nesdev.com/w/index.php/PPU_palettes


//-  Original memory dump file name: pacman_palette.dmp --
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




module ROM_PALETTE_PACMAN
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
      5'h0: dout  = 8'b00001111; //    0 :  15 - 0xf
      5'h1: dout  = 8'b00100000; //    1 :  32 - 0x20
      5'h2: dout  = 8'b00001111; //    2 :  15 - 0xf
      5'h3: dout  = 8'b00000110; //    3 :   6 - 0x6
      5'h4: dout  = 8'b00001111; //    4 :  15 - 0xf
      5'h5: dout  = 8'b00010001; //    5 :  17 - 0x11
      5'h6: dout  = 8'b00001111; //    6 :  15 - 0xf
      5'h7: dout  = 8'b00100111; //    7 :  39 - 0x27
      5'h8: dout  = 8'b00001111; //    8 :  15 - 0xf
      5'h9: dout  = 8'b00010110; //    9 :  22 - 0x16
      5'hA: dout  = 8'b00100110; //   10 :  38 - 0x26
      5'hB: dout  = 8'b00000110; //   11 :   6 - 0x6
      5'hC: dout  = 8'b00001111; //   12 :  15 - 0xf
      5'hD: dout  = 8'b00011001; //   13 :  25 - 0x19
      5'hE: dout  = 8'b00010111; //   14 :  23 - 0x17
      5'hF: dout  = 8'b00010010; //   15 :  18 - 0x12
      5'h10: dout  = 8'b00001111; //   16 :  15 - 0xf
      5'h11: dout  = 8'b00100111; //   17 :  39 - 0x27
      5'h12: dout  = 8'b00100000; //   18 :  32 - 0x20
      5'h13: dout  = 8'b00000110; //   19 :   6 - 0x6
      5'h14: dout  = 8'b00001111; //   20 :  15 - 0xf
      5'h15: dout  = 8'b00010001; //   21 :  17 - 0x11
      5'h16: dout  = 8'b00100000; //   22 :  32 - 0x20
      5'h17: dout  = 8'b00110011; //   23 :  51 - 0x33
      5'h18: dout  = 8'b00001111; //   24 :  15 - 0xf
      5'h19: dout  = 8'b00100001; //   25 :  33 - 0x21
      5'h1A: dout  = 8'b00100000; //   26 :  32 - 0x20
      5'h1B: dout  = 8'b00100001; //   27 :  33 - 0x21
      5'h1C: dout  = 8'b00001111; //   28 :  15 - 0xf
      5'h1D: dout  = 8'b00010110; //   29 :  22 - 0x16
      5'h1E: dout  = 8'b00100000; //   30 :  32 - 0x20
      5'h1F: dout  = 8'b00010111; //   31 :  23 - 0x17
    endcase
  end

endmodule
