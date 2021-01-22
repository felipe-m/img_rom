//- Autcmatically generated verilog ROM from a NES memory file----
//-   PALETTE MEMORY
// https://wiki.nesdev.com/w/index.php/PPU_palettes


//-  Original memory dump file name: nova_palette.dmp --
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




module ROM_PALETTE_NOVA
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
      5'h0: dout  = 8'b00110001; //    0 :  49 - 0x31
      5'h1: dout  = 8'b00011011; //    1 :  27 - 0x1b
      5'h2: dout  = 8'b00101011; //    2 :  43 - 0x2b
      5'h3: dout  = 8'b00110111; //    3 :  55 - 0x37
      5'h4: dout  = 8'b00110001; //    4 :  49 - 0x31
      5'h5: dout  = 8'b00101101; //    5 :  45 - 0x2d
      5'h6: dout  = 8'b00111101; //    6 :  61 - 0x3d
      5'h7: dout  = 8'b00110000; //    7 :  48 - 0x30
      5'h8: dout  = 8'b00110001; //    8 :  49 - 0x31
      5'h9: dout  = 8'b00010111; //    9 :  23 - 0x17
      5'hA: dout  = 8'b00100111; //   10 :  39 - 0x27
      5'hB: dout  = 8'b00110111; //   11 :  55 - 0x37
      5'hC: dout  = 8'b00110001; //   12 :  49 - 0x31
      5'hD: dout  = 8'b00000110; //   13 :   6 - 0x6
      5'hE: dout  = 8'b00010110; //   14 :  22 - 0x16
      5'hF: dout  = 8'b00100110; //   15 :  38 - 0x26
      5'h10: dout  = 8'b00110001; //   16 :  49 - 0x31
      5'h11: dout  = 8'b00010010; //   17 :  18 - 0x12
      5'h12: dout  = 8'b00101010; //   18 :  42 - 0x2a
      5'h13: dout  = 8'b00110000; //   19 :  48 - 0x30
      5'h14: dout  = 8'b00110001; //   20 :  49 - 0x31
      5'h15: dout  = 8'b00101101; //   21 :  45 - 0x2d
      5'h16: dout  = 8'b00111101; //   22 :  61 - 0x3d
      5'h17: dout  = 8'b00110000; //   23 :  48 - 0x30
      5'h18: dout  = 8'b00110001; //   24 :  49 - 0x31
      5'h19: dout  = 8'b00000110; //   25 :   6 - 0x6
      5'h1A: dout  = 8'b00010110; //   26 :  22 - 0x16
      5'h1B: dout  = 8'b00110110; //   27 :  54 - 0x36
      5'h1C: dout  = 8'b00110001; //   28 :  49 - 0x31
      5'h1D: dout  = 8'b00010110; //   29 :  22 - 0x16
      5'h1E: dout  = 8'b00100111; //   30 :  39 - 0x27
      5'h1F: dout  = 8'b00110111; //   31 :  55 - 0x37
    endcase
  end

endmodule
