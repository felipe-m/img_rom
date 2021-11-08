//- Autcmatically generated verilog ROM from a NES memory file----
//-   PALETTE MEMORY
// https://wiki.nesdev.com/w/index.php/PPU_palettes


//-  Original memory dump file name: donkeykong_palette.dmp --
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




module ROM_PALETTE_DONKEYKONG
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
      5'h1: dout  = 8'b00010101; //    1 :  21 - 0x15
      5'h2: dout  = 8'b00101100; //    2 :  44 - 0x2c
      5'h3: dout  = 8'b00010010; //    3 :  18 - 0x12
      5'h4: dout  = 8'b00001111; //    4 :  15 - 0xf
      5'h5: dout  = 8'b00100111; //    5 :  39 - 0x27
      5'h6: dout  = 8'b00000010; //    6 :   2 - 0x2
      5'h7: dout  = 8'b00010111; //    7 :  23 - 0x17
      5'h8: dout  = 8'b00001111; //    8 :  15 - 0xf
      5'h9: dout  = 8'b00110000; //    9 :  48 - 0x30
      5'hA: dout  = 8'b00110110; //   10 :  54 - 0x36
      5'hB: dout  = 8'b00000110; //   11 :   6 - 0x6
      5'hC: dout  = 8'b00001111; //   12 :  15 - 0xf
      5'hD: dout  = 8'b00110000; //   13 :  48 - 0x30
      5'hE: dout  = 8'b00101100; //   14 :  44 - 0x2c
      5'hF: dout  = 8'b00100100; //   15 :  36 - 0x24
      5'h10: dout  = 8'b00001111; //   16 :  15 - 0xf
      5'h11: dout  = 8'b00000010; //   17 :   2 - 0x2
      5'h12: dout  = 8'b00110110; //   18 :  54 - 0x36
      5'h13: dout  = 8'b00010110; //   19 :  22 - 0x16
      5'h14: dout  = 8'b00001111; //   20 :  15 - 0xf
      5'h15: dout  = 8'b00110000; //   21 :  48 - 0x30
      5'h16: dout  = 8'b00100111; //   22 :  39 - 0x27
      5'h17: dout  = 8'b00100100; //   23 :  36 - 0x24
      5'h18: dout  = 8'b00001111; //   24 :  15 - 0xf
      5'h19: dout  = 8'b00010110; //   25 :  22 - 0x16
      5'h1A: dout  = 8'b00110000; //   26 :  48 - 0x30
      5'h1B: dout  = 8'b00110111; //   27 :  55 - 0x37
      5'h1C: dout  = 8'b00001111; //   28 :  15 - 0xf
      5'h1D: dout  = 8'b00000110; //   29 :   6 - 0x6
      5'h1E: dout  = 8'b00100111; //   30 :  39 - 0x27
      5'h1F: dout  = 8'b00000010; //   31 :   2 - 0x2
    endcase
  end

endmodule
