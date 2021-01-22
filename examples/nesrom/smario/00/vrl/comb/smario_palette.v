//- Autcmatically generated verilog ROM from a NES memory file----
//-   PALETTE MEMORY
// https://wiki.nesdev.com/w/index.php/PPU_palettes


//-  Original memory dump file name: smario_palette.dmp --
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




module ROM_PALETTE_SMARIO
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
      5'h0: dout  = 8'b00100010; //    0 :  34 - 0x22
      5'h1: dout  = 8'b00101001; //    1 :  41 - 0x29
      5'h2: dout  = 8'b00011010; //    2 :  26 - 0x1a
      5'h3: dout  = 8'b00001111; //    3 :  15 - 0xf
      5'h4: dout  = 8'b00100010; //    4 :  34 - 0x22
      5'h5: dout  = 8'b00110110; //    5 :  54 - 0x36
      5'h6: dout  = 8'b00010111; //    6 :  23 - 0x17
      5'h7: dout  = 8'b00001111; //    7 :  15 - 0xf
      5'h8: dout  = 8'b00100010; //    8 :  34 - 0x22
      5'h9: dout  = 8'b00110000; //    9 :  48 - 0x30
      5'hA: dout  = 8'b00100001; //   10 :  33 - 0x21
      5'hB: dout  = 8'b00001111; //   11 :  15 - 0xf
      5'hC: dout  = 8'b00100010; //   12 :  34 - 0x22
      5'hD: dout  = 8'b00100111; //   13 :  39 - 0x27
      5'hE: dout  = 8'b00010111; //   14 :  23 - 0x17
      5'hF: dout  = 8'b00001111; //   15 :  15 - 0xf
      5'h10: dout  = 8'b00100010; //   16 :  34 - 0x22
      5'h11: dout  = 8'b00010110; //   17 :  22 - 0x16
      5'h12: dout  = 8'b00100111; //   18 :  39 - 0x27
      5'h13: dout  = 8'b00011000; //   19 :  24 - 0x18
      5'h14: dout  = 8'b00100010; //   20 :  34 - 0x22
      5'h15: dout  = 8'b00011010; //   21 :  26 - 0x1a
      5'h16: dout  = 8'b00110000; //   22 :  48 - 0x30
      5'h17: dout  = 8'b00100111; //   23 :  39 - 0x27
      5'h18: dout  = 8'b00100010; //   24 :  34 - 0x22
      5'h19: dout  = 8'b00010110; //   25 :  22 - 0x16
      5'h1A: dout  = 8'b00110000; //   26 :  48 - 0x30
      5'h1B: dout  = 8'b00100111; //   27 :  39 - 0x27
      5'h1C: dout  = 8'b00100010; //   28 :  34 - 0x22
      5'h1D: dout  = 8'b00001111; //   29 :  15 - 0xf
      5'h1E: dout  = 8'b00110110; //   30 :  54 - 0x36
      5'h1F: dout  = 8'b00010111; //   31 :  23 - 0x17
    endcase
  end

endmodule
