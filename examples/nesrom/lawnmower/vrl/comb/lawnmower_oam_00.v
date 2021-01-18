//- Autcmatically generated verilog ROM from a NES memory file----
//-   SPRITEs MEMORY (OAM)
// https://wiki.nesdev.com/w/index.php/PPU_OAM


//-  Original memory dump file name: lawnmower_oam_00.dmp --
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




module ROM_OAM_LAWN_00
  (
     //input     clk,   // clock
     input      [8-1:0] addr,  //256 memory positions
     output reg  [8-1:0] dout  // memory data width
  );


  always @*
  begin
    case (addr)
                               //  address:   value 
                               //    dec  : dec - hex
      8'h0: dout  = 8'b00100000; //    0 :  32 - 0x20 -- Sprite 0x0
      8'h1: dout  = 8'b10101011; //    1 : 171 - 0xab
      8'h2: dout  = 8'b00000000; //    2 :   0 - 0x0
      8'h3: dout  = 8'b00000000; //    3 :   0 - 0x0
      8'h4: dout  = 8'b01111111; //    4 : 127 - 0x7f -- Sprite 0x1
      8'h5: dout  = 8'b11001001; //    5 : 201 - 0xc9
      8'h6: dout  = 8'b00000011; //    6 :   3 - 0x3
      8'h7: dout  = 8'b01101000; //    7 : 104 - 0x68
      8'h8: dout  = 8'b01111111; //    8 : 127 - 0x7f -- Sprite 0x2
      8'h9: dout  = 8'b11001010; //    9 : 202 - 0xca
      8'hA: dout  = 8'b00000011; //   10 :   3 - 0x3
      8'hB: dout  = 8'b01110000; //   11 : 112 - 0x70
      8'hC: dout  = 8'b01111111; //   12 : 127 - 0x7f -- Sprite 0x3
      8'hD: dout  = 8'b11001011; //   13 : 203 - 0xcb
      8'hE: dout  = 8'b00000011; //   14 :   3 - 0x3
      8'hF: dout  = 8'b01111000; //   15 : 120 - 0x78
      8'h10: dout  = 8'b10000111; //   16 : 135 - 0x87 -- Sprite 0x4
      8'h11: dout  = 8'b11001100; //   17 : 204 - 0xcc
      8'h12: dout  = 8'b00000011; //   18 :   3 - 0x3
      8'h13: dout  = 8'b01110000; //   19 : 112 - 0x70
      8'h14: dout  = 8'b10000111; //   20 : 135 - 0x87 -- Sprite 0x5
      8'h15: dout  = 8'b11001101; //   21 : 205 - 0xcd
      8'h16: dout  = 8'b00000011; //   22 :   3 - 0x3
      8'h17: dout  = 8'b01111000; //   23 : 120 - 0x78
      8'h18: dout  = 8'b01111111; //   24 : 127 - 0x7f -- Sprite 0x6
      8'h19: dout  = 8'b10110100; //   25 : 180 - 0xb4
      8'h1A: dout  = 8'b00000010; //   26 :   2 - 0x2
      8'h1B: dout  = 8'b01110000; //   27 : 112 - 0x70
      8'h1C: dout  = 8'b01111111; //   28 : 127 - 0x7f -- Sprite 0x7
      8'h1D: dout  = 8'b10110101; //   29 : 181 - 0xb5
      8'h1E: dout  = 8'b00000010; //   30 :   2 - 0x2
      8'h1F: dout  = 8'b01111000; //   31 : 120 - 0x78
      8'h20: dout  = 8'b10000111; //   32 : 135 - 0x87 -- Sprite 0x8
      8'h21: dout  = 8'b10110110; //   33 : 182 - 0xb6
      8'h22: dout  = 8'b00000010; //   34 :   2 - 0x2
      8'h23: dout  = 8'b01110000; //   35 : 112 - 0x70
      8'h24: dout  = 8'b10000111; //   36 : 135 - 0x87 -- Sprite 0x9
      8'h25: dout  = 8'b10110111; //   37 : 183 - 0xb7
      8'h26: dout  = 8'b00000010; //   38 :   2 - 0x2
      8'h27: dout  = 8'b01111000; //   39 : 120 - 0x78
      8'h28: dout  = 8'b01111111; //   40 : 127 - 0x7f -- Sprite 0xa
      8'h29: dout  = 8'b10101100; //   41 : 172 - 0xac
      8'h2A: dout  = 8'b00000010; //   42 :   2 - 0x2
      8'h2B: dout  = 8'b01110000; //   43 : 112 - 0x70
      8'h2C: dout  = 8'b10000011; //   44 : 131 - 0x83 -- Sprite 0xb
      8'h2D: dout  = 8'b10101100; //   45 : 172 - 0xac
      8'h2E: dout  = 8'b00000001; //   46 :   1 - 0x1
      8'h2F: dout  = 8'b01101000; //   47 : 104 - 0x68
      8'h30: dout  = 8'b11111111; //   48 : 255 - 0xff -- Sprite 0xc
      8'h31: dout  = 8'b11111111; //   49 : 255 - 0xff
      8'h32: dout  = 8'b11100011; //   50 : 227 - 0xe3
      8'h33: dout  = 8'b11111111; //   51 : 255 - 0xff
      8'h34: dout  = 8'b11111111; //   52 : 255 - 0xff -- Sprite 0xd
      8'h35: dout  = 8'b11111111; //   53 : 255 - 0xff
      8'h36: dout  = 8'b11100011; //   54 : 227 - 0xe3
      8'h37: dout  = 8'b11111111; //   55 : 255 - 0xff
      8'h38: dout  = 8'b11111111; //   56 : 255 - 0xff -- Sprite 0xe
      8'h39: dout  = 8'b11111111; //   57 : 255 - 0xff
      8'h3A: dout  = 8'b11100011; //   58 : 227 - 0xe3
      8'h3B: dout  = 8'b11111111; //   59 : 255 - 0xff
      8'h3C: dout  = 8'b11111111; //   60 : 255 - 0xff -- Sprite 0xf
      8'h3D: dout  = 8'b11111111; //   61 : 255 - 0xff
      8'h3E: dout  = 8'b11100011; //   62 : 227 - 0xe3
      8'h3F: dout  = 8'b11111111; //   63 : 255 - 0xff
      8'h40: dout  = 8'b11111111; //   64 : 255 - 0xff -- Sprite 0x10
      8'h41: dout  = 8'b11111111; //   65 : 255 - 0xff
      8'h42: dout  = 8'b11100011; //   66 : 227 - 0xe3
      8'h43: dout  = 8'b11111111; //   67 : 255 - 0xff
      8'h44: dout  = 8'b11111111; //   68 : 255 - 0xff -- Sprite 0x11
      8'h45: dout  = 8'b11111111; //   69 : 255 - 0xff
      8'h46: dout  = 8'b11100011; //   70 : 227 - 0xe3
      8'h47: dout  = 8'b11111111; //   71 : 255 - 0xff
      8'h48: dout  = 8'b11111111; //   72 : 255 - 0xff -- Sprite 0x12
      8'h49: dout  = 8'b11111111; //   73 : 255 - 0xff
      8'h4A: dout  = 8'b11100011; //   74 : 227 - 0xe3
      8'h4B: dout  = 8'b11111111; //   75 : 255 - 0xff
      8'h4C: dout  = 8'b11111111; //   76 : 255 - 0xff -- Sprite 0x13
      8'h4D: dout  = 8'b11111111; //   77 : 255 - 0xff
      8'h4E: dout  = 8'b11100011; //   78 : 227 - 0xe3
      8'h4F: dout  = 8'b11111111; //   79 : 255 - 0xff
      8'h50: dout  = 8'b11111111; //   80 : 255 - 0xff -- Sprite 0x14
      8'h51: dout  = 8'b11111111; //   81 : 255 - 0xff
      8'h52: dout  = 8'b11100011; //   82 : 227 - 0xe3
      8'h53: dout  = 8'b11111111; //   83 : 255 - 0xff
      8'h54: dout  = 8'b11111111; //   84 : 255 - 0xff -- Sprite 0x15
      8'h55: dout  = 8'b11111111; //   85 : 255 - 0xff
      8'h56: dout  = 8'b11100011; //   86 : 227 - 0xe3
      8'h57: dout  = 8'b11111111; //   87 : 255 - 0xff
      8'h58: dout  = 8'b11111111; //   88 : 255 - 0xff -- Sprite 0x16
      8'h59: dout  = 8'b11111111; //   89 : 255 - 0xff
      8'h5A: dout  = 8'b11100011; //   90 : 227 - 0xe3
      8'h5B: dout  = 8'b11111111; //   91 : 255 - 0xff
      8'h5C: dout  = 8'b11111111; //   92 : 255 - 0xff -- Sprite 0x17
      8'h5D: dout  = 8'b11111111; //   93 : 255 - 0xff
      8'h5E: dout  = 8'b11100011; //   94 : 227 - 0xe3
      8'h5F: dout  = 8'b11111111; //   95 : 255 - 0xff
      8'h60: dout  = 8'b11111111; //   96 : 255 - 0xff -- Sprite 0x18
      8'h61: dout  = 8'b11111111; //   97 : 255 - 0xff
      8'h62: dout  = 8'b11100011; //   98 : 227 - 0xe3
      8'h63: dout  = 8'b11111111; //   99 : 255 - 0xff
      8'h64: dout  = 8'b11111111; //  100 : 255 - 0xff -- Sprite 0x19
      8'h65: dout  = 8'b11111111; //  101 : 255 - 0xff
      8'h66: dout  = 8'b11100011; //  102 : 227 - 0xe3
      8'h67: dout  = 8'b11111111; //  103 : 255 - 0xff
      8'h68: dout  = 8'b11111111; //  104 : 255 - 0xff -- Sprite 0x1a
      8'h69: dout  = 8'b11111111; //  105 : 255 - 0xff
      8'h6A: dout  = 8'b11100011; //  106 : 227 - 0xe3
      8'h6B: dout  = 8'b11111111; //  107 : 255 - 0xff
      8'h6C: dout  = 8'b11111111; //  108 : 255 - 0xff -- Sprite 0x1b
      8'h6D: dout  = 8'b11111111; //  109 : 255 - 0xff
      8'h6E: dout  = 8'b11100011; //  110 : 227 - 0xe3
      8'h6F: dout  = 8'b11111111; //  111 : 255 - 0xff
      8'h70: dout  = 8'b11111111; //  112 : 255 - 0xff -- Sprite 0x1c
      8'h71: dout  = 8'b11111111; //  113 : 255 - 0xff
      8'h72: dout  = 8'b11100011; //  114 : 227 - 0xe3
      8'h73: dout  = 8'b11111111; //  115 : 255 - 0xff
      8'h74: dout  = 8'b11111111; //  116 : 255 - 0xff -- Sprite 0x1d
      8'h75: dout  = 8'b11111111; //  117 : 255 - 0xff
      8'h76: dout  = 8'b11100011; //  118 : 227 - 0xe3
      8'h77: dout  = 8'b11111111; //  119 : 255 - 0xff
      8'h78: dout  = 8'b11111111; //  120 : 255 - 0xff -- Sprite 0x1e
      8'h79: dout  = 8'b11111111; //  121 : 255 - 0xff
      8'h7A: dout  = 8'b11100011; //  122 : 227 - 0xe3
      8'h7B: dout  = 8'b11111111; //  123 : 255 - 0xff
      8'h7C: dout  = 8'b11111111; //  124 : 255 - 0xff -- Sprite 0x1f
      8'h7D: dout  = 8'b11111111; //  125 : 255 - 0xff
      8'h7E: dout  = 8'b11100011; //  126 : 227 - 0xe3
      8'h7F: dout  = 8'b11111111; //  127 : 255 - 0xff
      8'h80: dout  = 8'b11111111; //  128 : 255 - 0xff -- Sprite 0x20
      8'h81: dout  = 8'b11111111; //  129 : 255 - 0xff
      8'h82: dout  = 8'b11100011; //  130 : 227 - 0xe3
      8'h83: dout  = 8'b11111111; //  131 : 255 - 0xff
      8'h84: dout  = 8'b11111111; //  132 : 255 - 0xff -- Sprite 0x21
      8'h85: dout  = 8'b11111111; //  133 : 255 - 0xff
      8'h86: dout  = 8'b11100011; //  134 : 227 - 0xe3
      8'h87: dout  = 8'b11111111; //  135 : 255 - 0xff
      8'h88: dout  = 8'b11111111; //  136 : 255 - 0xff -- Sprite 0x22
      8'h89: dout  = 8'b11111111; //  137 : 255 - 0xff
      8'h8A: dout  = 8'b11100011; //  138 : 227 - 0xe3
      8'h8B: dout  = 8'b11111111; //  139 : 255 - 0xff
      8'h8C: dout  = 8'b11111111; //  140 : 255 - 0xff -- Sprite 0x23
      8'h8D: dout  = 8'b11111111; //  141 : 255 - 0xff
      8'h8E: dout  = 8'b11100011; //  142 : 227 - 0xe3
      8'h8F: dout  = 8'b11111111; //  143 : 255 - 0xff
      8'h90: dout  = 8'b11111111; //  144 : 255 - 0xff -- Sprite 0x24
      8'h91: dout  = 8'b11111111; //  145 : 255 - 0xff
      8'h92: dout  = 8'b11100011; //  146 : 227 - 0xe3
      8'h93: dout  = 8'b11111111; //  147 : 255 - 0xff
      8'h94: dout  = 8'b11111111; //  148 : 255 - 0xff -- Sprite 0x25
      8'h95: dout  = 8'b11111111; //  149 : 255 - 0xff
      8'h96: dout  = 8'b11100011; //  150 : 227 - 0xe3
      8'h97: dout  = 8'b11111111; //  151 : 255 - 0xff
      8'h98: dout  = 8'b11111111; //  152 : 255 - 0xff -- Sprite 0x26
      8'h99: dout  = 8'b11111111; //  153 : 255 - 0xff
      8'h9A: dout  = 8'b11100011; //  154 : 227 - 0xe3
      8'h9B: dout  = 8'b11111111; //  155 : 255 - 0xff
      8'h9C: dout  = 8'b11111111; //  156 : 255 - 0xff -- Sprite 0x27
      8'h9D: dout  = 8'b11111111; //  157 : 255 - 0xff
      8'h9E: dout  = 8'b11100011; //  158 : 227 - 0xe3
      8'h9F: dout  = 8'b11111111; //  159 : 255 - 0xff
      8'hA0: dout  = 8'b11111111; //  160 : 255 - 0xff -- Sprite 0x28
      8'hA1: dout  = 8'b11111111; //  161 : 255 - 0xff
      8'hA2: dout  = 8'b11100011; //  162 : 227 - 0xe3
      8'hA3: dout  = 8'b11111111; //  163 : 255 - 0xff
      8'hA4: dout  = 8'b11111111; //  164 : 255 - 0xff -- Sprite 0x29
      8'hA5: dout  = 8'b11111111; //  165 : 255 - 0xff
      8'hA6: dout  = 8'b11100011; //  166 : 227 - 0xe3
      8'hA7: dout  = 8'b11111111; //  167 : 255 - 0xff
      8'hA8: dout  = 8'b11111111; //  168 : 255 - 0xff -- Sprite 0x2a
      8'hA9: dout  = 8'b11111111; //  169 : 255 - 0xff
      8'hAA: dout  = 8'b11100011; //  170 : 227 - 0xe3
      8'hAB: dout  = 8'b11111111; //  171 : 255 - 0xff
      8'hAC: dout  = 8'b11111111; //  172 : 255 - 0xff -- Sprite 0x2b
      8'hAD: dout  = 8'b11111111; //  173 : 255 - 0xff
      8'hAE: dout  = 8'b11100011; //  174 : 227 - 0xe3
      8'hAF: dout  = 8'b11111111; //  175 : 255 - 0xff
      8'hB0: dout  = 8'b11111111; //  176 : 255 - 0xff -- Sprite 0x2c
      8'hB1: dout  = 8'b11111111; //  177 : 255 - 0xff
      8'hB2: dout  = 8'b11100011; //  178 : 227 - 0xe3
      8'hB3: dout  = 8'b11111111; //  179 : 255 - 0xff
      8'hB4: dout  = 8'b11111111; //  180 : 255 - 0xff -- Sprite 0x2d
      8'hB5: dout  = 8'b11111111; //  181 : 255 - 0xff
      8'hB6: dout  = 8'b11100011; //  182 : 227 - 0xe3
      8'hB7: dout  = 8'b11111111; //  183 : 255 - 0xff
      8'hB8: dout  = 8'b11111111; //  184 : 255 - 0xff -- Sprite 0x2e
      8'hB9: dout  = 8'b11111111; //  185 : 255 - 0xff
      8'hBA: dout  = 8'b11100011; //  186 : 227 - 0xe3
      8'hBB: dout  = 8'b11111111; //  187 : 255 - 0xff
      8'hBC: dout  = 8'b11111111; //  188 : 255 - 0xff -- Sprite 0x2f
      8'hBD: dout  = 8'b11111111; //  189 : 255 - 0xff
      8'hBE: dout  = 8'b11100011; //  190 : 227 - 0xe3
      8'hBF: dout  = 8'b11111111; //  191 : 255 - 0xff
      8'hC0: dout  = 8'b11111111; //  192 : 255 - 0xff -- Sprite 0x30
      8'hC1: dout  = 8'b11111111; //  193 : 255 - 0xff
      8'hC2: dout  = 8'b11100011; //  194 : 227 - 0xe3
      8'hC3: dout  = 8'b11111111; //  195 : 255 - 0xff
      8'hC4: dout  = 8'b11111111; //  196 : 255 - 0xff -- Sprite 0x31
      8'hC5: dout  = 8'b11111111; //  197 : 255 - 0xff
      8'hC6: dout  = 8'b11100011; //  198 : 227 - 0xe3
      8'hC7: dout  = 8'b11111111; //  199 : 255 - 0xff
      8'hC8: dout  = 8'b11111111; //  200 : 255 - 0xff -- Sprite 0x32
      8'hC9: dout  = 8'b11111111; //  201 : 255 - 0xff
      8'hCA: dout  = 8'b11100011; //  202 : 227 - 0xe3
      8'hCB: dout  = 8'b11111111; //  203 : 255 - 0xff
      8'hCC: dout  = 8'b11111111; //  204 : 255 - 0xff -- Sprite 0x33
      8'hCD: dout  = 8'b11111111; //  205 : 255 - 0xff
      8'hCE: dout  = 8'b11100011; //  206 : 227 - 0xe3
      8'hCF: dout  = 8'b11111111; //  207 : 255 - 0xff
      8'hD0: dout  = 8'b11111111; //  208 : 255 - 0xff -- Sprite 0x34
      8'hD1: dout  = 8'b11111111; //  209 : 255 - 0xff
      8'hD2: dout  = 8'b11100011; //  210 : 227 - 0xe3
      8'hD3: dout  = 8'b11111111; //  211 : 255 - 0xff
      8'hD4: dout  = 8'b11111111; //  212 : 255 - 0xff -- Sprite 0x35
      8'hD5: dout  = 8'b11111111; //  213 : 255 - 0xff
      8'hD6: dout  = 8'b11100011; //  214 : 227 - 0xe3
      8'hD7: dout  = 8'b11111111; //  215 : 255 - 0xff
      8'hD8: dout  = 8'b11111111; //  216 : 255 - 0xff -- Sprite 0x36
      8'hD9: dout  = 8'b11111111; //  217 : 255 - 0xff
      8'hDA: dout  = 8'b11100011; //  218 : 227 - 0xe3
      8'hDB: dout  = 8'b11111111; //  219 : 255 - 0xff
      8'hDC: dout  = 8'b11111111; //  220 : 255 - 0xff -- Sprite 0x37
      8'hDD: dout  = 8'b11111111; //  221 : 255 - 0xff
      8'hDE: dout  = 8'b11100011; //  222 : 227 - 0xe3
      8'hDF: dout  = 8'b11111111; //  223 : 255 - 0xff
      8'hE0: dout  = 8'b00010101; //  224 :  21 - 0x15 -- Sprite 0x38
      8'hE1: dout  = 8'b11111000; //  225 : 248 - 0xf8
      8'hE2: dout  = 8'b00000000; //  226 :   0 - 0x0
      8'hE3: dout  = 8'b01101011; //  227 : 107 - 0x6b
      8'hE4: dout  = 8'b00010101; //  228 :  21 - 0x15 -- Sprite 0x39
      8'hE5: dout  = 8'b11111000; //  229 : 248 - 0xf8
      8'hE6: dout  = 8'b00000000; //  230 :   0 - 0x0
      8'hE7: dout  = 8'b01110011; //  231 : 115 - 0x73
      8'hE8: dout  = 8'b00010101; //  232 :  21 - 0x15 -- Sprite 0x3a
      8'hE9: dout  = 8'b11111000; //  233 : 248 - 0xf8
      8'hEA: dout  = 8'b00000000; //  234 :   0 - 0x0
      8'hEB: dout  = 8'b01111011; //  235 : 123 - 0x7b
      8'hEC: dout  = 8'b00010101; //  236 :  21 - 0x15 -- Sprite 0x3b
      8'hED: dout  = 8'b11110100; //  237 : 244 - 0xf4
      8'hEE: dout  = 8'b00000000; //  238 :   0 - 0x0
      8'hEF: dout  = 8'b10000011; //  239 : 131 - 0x83
      8'hF0: dout  = 8'b11101111; //  240 : 239 - 0xef -- Sprite 0x3c
      8'hF1: dout  = 8'b11111000; //  241 : 248 - 0xf8
      8'hF2: dout  = 8'b00000000; //  242 :   0 - 0x0
      8'hF3: dout  = 8'b10001011; //  243 : 139 - 0x8b
      8'hF4: dout  = 8'b11101111; //  244 : 239 - 0xef -- Sprite 0x3d
      8'hF5: dout  = 8'b11111000; //  245 : 248 - 0xf8
      8'hF6: dout  = 8'b00000000; //  246 :   0 - 0x0
      8'hF7: dout  = 8'b10010011; //  247 : 147 - 0x93
      8'hF8: dout  = 8'b11101111; //  248 : 239 - 0xef -- Sprite 0x3e
      8'hF9: dout  = 8'b11111000; //  249 : 248 - 0xf8
      8'hFA: dout  = 8'b00000000; //  250 :   0 - 0x0
      8'hFB: dout  = 8'b10011011; //  251 : 155 - 0x9b
      8'hFC: dout  = 8'b11101111; //  252 : 239 - 0xef -- Sprite 0x3f
      8'hFD: dout  = 8'b11111000; //  253 : 248 - 0xf8
      8'hFE: dout  = 8'b00000000; //  254 :   0 - 0x0
      8'hFF: dout  = 8'b10100011; //  255 : 163 - 0xa3
    endcase
  end

endmodule
