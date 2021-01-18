//- Autcmatically generated verilog ROM from a NES memory file----
//-   PALETTE MEMORY
// https://wiki.nesdev.com/w/index.php/PPU_palettes


//-  Original memory dump file name: lawnmower_palette.dmp --
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




module ROM_PALETTE_LAWN
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
      5'h1: dout  = 8'b00010001; //    1 :  17 - 0x11
      5'h2: dout  = 8'b00100001; //    2 :  33 - 0x21
      5'h3: dout  = 8'b00110000; //    3 :  48 - 0x30
      5'h4: dout  = 8'b00001111; //    4 :  15 - 0xf
      5'h5: dout  = 8'b00001010; //    5 :  10 - 0xa
      5'h6: dout  = 8'b00111000; //    6 :  56 - 0x38
      5'h7: dout  = 8'b00100101; //    7 :  37 - 0x25
      5'h8: dout  = 8'b00001111; //    8 :  15 - 0xf
      5'h9: dout  = 8'b00001010; //    9 :  10 - 0xa
      5'hA: dout  = 8'b00011010; //   10 :  26 - 0x1a
      5'hB: dout  = 8'b00101001; //   11 :  41 - 0x29
      5'hC: dout  = 8'b00001111; //   12 :  15 - 0xf
      5'hD: dout  = 8'b00001010; //   13 :  10 - 0xa
      5'hE: dout  = 8'b00010000; //   14 :  16 - 0x10
      5'hF: dout  = 8'b00100000; //   15 :  32 - 0x20
      5'h10: dout  = 8'b00001111; //   16 :  15 - 0xf
      5'h11: dout  = 8'b00010001; //   17 :  17 - 0x11
      5'h12: dout  = 8'b00100111; //   18 :  39 - 0x27
      5'h13: dout  = 8'b00100000; //   19 :  32 - 0x20
      5'h14: dout  = 8'b00001111; //   20 :  15 - 0xf
      5'h15: dout  = 8'b00101010; //   21 :  42 - 0x2a
      5'h16: dout  = 8'b00111001; //   22 :  57 - 0x39
      5'h17: dout  = 8'b00100101; //   23 :  37 - 0x25
      5'h18: dout  = 8'b00001111; //   24 :  15 - 0xf
      5'h19: dout  = 8'b00000110; //   25 :   6 - 0x6
      5'h1A: dout  = 8'b00100111; //   26 :  39 - 0x27
      5'h1B: dout  = 8'b00110111; //   27 :  55 - 0x37
      5'h1C: dout  = 8'b00001111; //   28 :  15 - 0xf
      5'h1D: dout  = 8'b00001111; //   29 :  15 - 0xf
      5'h1E: dout  = 8'b00000000; //   30 :   0 - 0x0
      5'h1F: dout  = 8'b00110000; //   31 :  48 - 0x30
    endcase
  end

endmodule
