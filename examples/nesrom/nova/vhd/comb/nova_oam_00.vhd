--- Autcmatically generated VHDL ROM from a NES memory file----
---   SPRITEs MEMORY (OAM)
-- https://wiki.nesdev.com/w/index.php/PPU_OAM


---  Original memory dump file name: nova_oam_00.dmp --
------ Felipe Machado -----------------------------------
------ Area de Tecnologia Electronica -----------
------ Universidad Rey Juan Carlos ----------------------
------ https://github.com/felipe-m ----------------------
---------------------------------------------------------
----- Memory without clock -----

----- Ports ---------------------------------------------
-- Inputs   ---------------------------------------------
--   -- clk  :  clock signal
--    addr :  memory address
-- Salidas  ---------------------------------------------
--    dout :  memory data out  (no clock: in the same clock cycle)


library IEEE;
  use IEEE.STD_LOGIC_1164.ALL;
  use IEEE.NUMERIC_STD.ALL;


entity ROM_OAM_NOVA_00 is
  port (
    --clk  : in  std_logic;   -- clock
    addr : in  std_logic_vector(8-1 downto 0);  --256 memory positions
    dout : out std_logic_vector(8-1 downto 0) -- memory data width
  );
end ROM_OAM_NOVA_00;

architecture BEHAVIORAL of ROM_OAM_NOVA_00 is
  signal addr_int  : natural range 0 to 2**8-1;
  type memostruct is array (natural range<>) of std_logic_vector(8-1 downto 0);
  constant table_mem : memostruct := (
                --    address   :    value 
                --  dec -  hex  :  dec - hex
    "00001111", --    0 -  0x0  :   15 - 0xf -- Sprite 0x0
    "01001100", --    1 -  0x1  :   76 - 0x4c
    "00000000", --    2 -  0x2  :    0 - 0x0
    "00001111", --    3 -  0x3  :   15 - 0xf
    "00001111", --    4 -  0x4  :   15 - 0xf -- Sprite 0x1
    "01001110", --    5 -  0x5  :   78 - 0x4e
    "00000000", --    6 -  0x6  :    0 - 0x0
    "00010111", --    7 -  0x7  :   23 - 0x17
    "00010111", --    8 -  0x8  :   23 - 0x17 -- Sprite 0x2
    "01001101", --    9 -  0x9  :   77 - 0x4d
    "00000000", --   10 -  0xa  :    0 - 0x0
    "00001111", --   11 -  0xb  :   15 - 0xf
    "00010111", --   12 -  0xc  :   23 - 0x17 -- Sprite 0x3
    "01001111", --   13 -  0xd  :   79 - 0x4f
    "00000000", --   14 -  0xe  :    0 - 0x0
    "00010111", --   15 -  0xf  :   23 - 0x17
    "00011111", --   16 - 0x10  :   31 - 0x1f -- Sprite 0x4
    "01001010", --   17 - 0x11  :   74 - 0x4a
    "00000000", --   18 - 0x12  :    0 - 0x0
    "00001111", --   19 - 0x13  :   15 - 0xf
    "10111000", --   20 - 0x14  :  184 - 0xb8 -- Sprite 0x5
    "00000001", --   21 - 0x15  :    1 - 0x1
    "01000000", --   22 - 0x16  :   64 - 0x40
    "00101000", --   23 - 0x17  :   40 - 0x28
    "10111000", --   24 - 0x18  :  184 - 0xb8 -- Sprite 0x6
    "00000000", --   25 - 0x19  :    0 - 0x0
    "01000000", --   26 - 0x1a  :   64 - 0x40
    "00110000", --   27 - 0x1b  :   48 - 0x30
    "11000000", --   28 - 0x1c  :  192 - 0xc0 -- Sprite 0x7
    "00000011", --   29 - 0x1d  :    3 - 0x3
    "01000000", --   30 - 0x1e  :   64 - 0x40
    "00101000", --   31 - 0x1f  :   40 - 0x28
    "11000000", --   32 - 0x20  :  192 - 0xc0 -- Sprite 0x8
    "00000010", --   33 - 0x21  :    2 - 0x2
    "01000000", --   34 - 0x22  :   64 - 0x40
    "00110000", --   35 - 0x23  :   48 - 0x30
    "11001000", --   36 - 0x24  :  200 - 0xc8 -- Sprite 0x9
    "00000101", --   37 - 0x25  :    5 - 0x5
    "01000000", --   38 - 0x26  :   64 - 0x40
    "00101000", --   39 - 0x27  :   40 - 0x28
    "11001000", --   40 - 0x28  :  200 - 0xc8 -- Sprite 0xa
    "00000100", --   41 - 0x29  :    4 - 0x4
    "01000000", --   42 - 0x2a  :   64 - 0x40
    "00110000", --   43 - 0x2b  :   48 - 0x30
    "11000000", --   44 - 0x2c  :  192 - 0xc0 -- Sprite 0xb
    "10001110", --   45 - 0x2d  :  142 - 0x8e
    "01000010", --   46 - 0x2e  :   66 - 0x42
    "01110001", --   47 - 0x2f  :  113 - 0x71
    "11001000", --   48 - 0x30  :  200 - 0xc8 -- Sprite 0xc
    "10001111", --   49 - 0x31  :  143 - 0x8f
    "01000010", --   50 - 0x32  :   66 - 0x42
    "01110001", --   51 - 0x33  :  113 - 0x71
    "11000000", --   52 - 0x34  :  192 - 0xc0 -- Sprite 0xd
    "10001100", --   53 - 0x35  :  140 - 0x8c
    "01000010", --   54 - 0x36  :   66 - 0x42
    "01111001", --   55 - 0x37  :  121 - 0x79
    "11001000", --   56 - 0x38  :  200 - 0xc8 -- Sprite 0xe
    "10001101", --   57 - 0x39  :  141 - 0x8d
    "01000010", --   58 - 0x3a  :   66 - 0x42
    "01111001", --   59 - 0x3b  :  121 - 0x79
    "00100110", --   60 - 0x3c  :   38 - 0x26 -- Sprite 0xf
    "01100100", --   61 - 0x3d  :  100 - 0x64
    "00000001", --   62 - 0x3e  :    1 - 0x1
    "10100000", --   63 - 0x3f  :  160 - 0xa0
    "00101110", --   64 - 0x40  :   46 - 0x2e -- Sprite 0x10
    "01100101", --   65 - 0x41  :  101 - 0x65
    "00000001", --   66 - 0x42  :    1 - 0x1
    "10100000", --   67 - 0x43  :  160 - 0xa0
    "00100110", --   68 - 0x44  :   38 - 0x26 -- Sprite 0x11
    "01100110", --   69 - 0x45  :  102 - 0x66
    "00000001", --   70 - 0x46  :    1 - 0x1
    "10101000", --   71 - 0x47  :  168 - 0xa8
    "00101110", --   72 - 0x48  :   46 - 0x2e -- Sprite 0x12
    "01100111", --   73 - 0x49  :  103 - 0x67
    "00000001", --   74 - 0x4a  :    1 - 0x1
    "10101000", --   75 - 0x4b  :  168 - 0xa8
    "11111000", --   76 - 0x4c  :  248 - 0xf8 -- Sprite 0x13
    "01100100", --   77 - 0x4d  :  100 - 0x64
    "00000001", --   78 - 0x4e  :    1 - 0x1
    "10100000", --   79 - 0x4f  :  160 - 0xa0
    "11111000", --   80 - 0x50  :  248 - 0xf8 -- Sprite 0x14
    "01100101", --   81 - 0x51  :  101 - 0x65
    "00000001", --   82 - 0x52  :    1 - 0x1
    "10100000", --   83 - 0x53  :  160 - 0xa0
    "11111000", --   84 - 0x54  :  248 - 0xf8 -- Sprite 0x15
    "01100110", --   85 - 0x55  :  102 - 0x66
    "00000001", --   86 - 0x56  :    1 - 0x1
    "10101000", --   87 - 0x57  :  168 - 0xa8
    "11111000", --   88 - 0x58  :  248 - 0xf8 -- Sprite 0x16
    "01100111", --   89 - 0x59  :  103 - 0x67
    "00000001", --   90 - 0x5a  :    1 - 0x1
    "10101000", --   91 - 0x5b  :  168 - 0xa8
    "11111000", --   92 - 0x5c  :  248 - 0xf8 -- Sprite 0x17
    "01100111", --   93 - 0x5d  :  103 - 0x67
    "00000001", --   94 - 0x5e  :    1 - 0x1
    "00110010", --   95 - 0x5f  :   50 - 0x32
    "11111000", --   96 - 0x60  :  248 - 0xf8 -- Sprite 0x18
    "00000000", --   97 - 0x61  :    0 - 0x0
    "00000000", --   98 - 0x62  :    0 - 0x0
    "00000000", --   99 - 0x63  :    0 - 0x0
    "11111000", --  100 - 0x64  :  248 - 0xf8 -- Sprite 0x19
    "00000000", --  101 - 0x65  :    0 - 0x0
    "00000000", --  102 - 0x66  :    0 - 0x0
    "00000000", --  103 - 0x67  :    0 - 0x0
    "11111000", --  104 - 0x68  :  248 - 0xf8 -- Sprite 0x1a
    "00000000", --  105 - 0x69  :    0 - 0x0
    "00000000", --  106 - 0x6a  :    0 - 0x0
    "00000000", --  107 - 0x6b  :    0 - 0x0
    "11111000", --  108 - 0x6c  :  248 - 0xf8 -- Sprite 0x1b
    "00000000", --  109 - 0x6d  :    0 - 0x0
    "00000000", --  110 - 0x6e  :    0 - 0x0
    "00000000", --  111 - 0x6f  :    0 - 0x0
    "11111000", --  112 - 0x70  :  248 - 0xf8 -- Sprite 0x1c
    "00000000", --  113 - 0x71  :    0 - 0x0
    "00000000", --  114 - 0x72  :    0 - 0x0
    "00000000", --  115 - 0x73  :    0 - 0x0
    "11111000", --  116 - 0x74  :  248 - 0xf8 -- Sprite 0x1d
    "00000000", --  117 - 0x75  :    0 - 0x0
    "00000000", --  118 - 0x76  :    0 - 0x0
    "00000000", --  119 - 0x77  :    0 - 0x0
    "11111000", --  120 - 0x78  :  248 - 0xf8 -- Sprite 0x1e
    "00000000", --  121 - 0x79  :    0 - 0x0
    "00000000", --  122 - 0x7a  :    0 - 0x0
    "00000000", --  123 - 0x7b  :    0 - 0x0
    "11111000", --  124 - 0x7c  :  248 - 0xf8 -- Sprite 0x1f
    "00000000", --  125 - 0x7d  :    0 - 0x0
    "00000000", --  126 - 0x7e  :    0 - 0x0
    "00000000", --  127 - 0x7f  :    0 - 0x0
    "11111000", --  128 - 0x80  :  248 - 0xf8 -- Sprite 0x20
    "00100011", --  129 - 0x81  :   35 - 0x23
    "00000011", --  130 - 0x82  :    3 - 0x3
    "10000000", --  131 - 0x83  :  128 - 0x80
    "11111000", --  132 - 0x84  :  248 - 0xf8 -- Sprite 0x21
    "00000111", --  133 - 0x85  :    7 - 0x7
    "00000011", --  134 - 0x86  :    3 - 0x3
    "01111100", --  135 - 0x87  :  124 - 0x7c
    "11111000", --  136 - 0x88  :  248 - 0xf8 -- Sprite 0x22
    "00100000", --  137 - 0x89  :   32 - 0x20
    "00000011", --  138 - 0x8a  :    3 - 0x3
    "01001011", --  139 - 0x8b  :   75 - 0x4b
    "11111000", --  140 - 0x8c  :  248 - 0xf8 -- Sprite 0x23
    "00100001", --  141 - 0x8d  :   33 - 0x21
    "00000011", --  142 - 0x8e  :    3 - 0x3
    "01001011", --  143 - 0x8f  :   75 - 0x4b
    "11111000", --  144 - 0x90  :  248 - 0xf8 -- Sprite 0x24
    "00100010", --  145 - 0x91  :   34 - 0x22
    "00000011", --  146 - 0x92  :    3 - 0x3
    "01010011", --  147 - 0x93  :   83 - 0x53
    "11111000", --  148 - 0x94  :  248 - 0xf8 -- Sprite 0x25
    "00100011", --  149 - 0x95  :   35 - 0x23
    "00000011", --  150 - 0x96  :    3 - 0x3
    "01010011", --  151 - 0x97  :   83 - 0x53
    "11111000", --  152 - 0x98  :  248 - 0xf8 -- Sprite 0x26
    "00001000", --  153 - 0x99  :    8 - 0x8
    "00000011", --  154 - 0x9a  :    3 - 0x3
    "01011011", --  155 - 0x9b  :   91 - 0x5b
    "11111000", --  156 - 0x9c  :  248 - 0xf8 -- Sprite 0x27
    "00100000", --  157 - 0x9d  :   32 - 0x20
    "00000011", --  158 - 0x9e  :    3 - 0x3
    "00111000", --  159 - 0x9f  :   56 - 0x38
    "11111000", --  160 - 0xa0  :  248 - 0xf8 -- Sprite 0x28
    "00100001", --  161 - 0xa1  :   33 - 0x21
    "00000011", --  162 - 0xa2  :    3 - 0x3
    "00111000", --  163 - 0xa3  :   56 - 0x38
    "11111000", --  164 - 0xa4  :  248 - 0xf8 -- Sprite 0x29
    "00100010", --  165 - 0xa5  :   34 - 0x22
    "00000011", --  166 - 0xa6  :    3 - 0x3
    "01000000", --  167 - 0xa7  :   64 - 0x40
    "11111000", --  168 - 0xa8  :  248 - 0xf8 -- Sprite 0x2a
    "00100011", --  169 - 0xa9  :   35 - 0x23
    "00000011", --  170 - 0xaa  :    3 - 0x3
    "01000000", --  171 - 0xab  :   64 - 0x40
    "11111000", --  172 - 0xac  :  248 - 0xf8 -- Sprite 0x2b
    "00001001", --  173 - 0xad  :    9 - 0x9
    "00000011", --  174 - 0xae  :    3 - 0x3
    "01001100", --  175 - 0xaf  :   76 - 0x4c
    "11111000", --  176 - 0xb0  :  248 - 0xf8 -- Sprite 0x2c
    "00000000", --  177 - 0xb1  :    0 - 0x0
    "00000000", --  178 - 0xb2  :    0 - 0x0
    "00000000", --  179 - 0xb3  :    0 - 0x0
    "11111000", --  180 - 0xb4  :  248 - 0xf8 -- Sprite 0x2d
    "00000000", --  181 - 0xb5  :    0 - 0x0
    "00000000", --  182 - 0xb6  :    0 - 0x0
    "00000000", --  183 - 0xb7  :    0 - 0x0
    "11111000", --  184 - 0xb8  :  248 - 0xf8 -- Sprite 0x2e
    "00000000", --  185 - 0xb9  :    0 - 0x0
    "00000000", --  186 - 0xba  :    0 - 0x0
    "00000000", --  187 - 0xbb  :    0 - 0x0
    "11111000", --  188 - 0xbc  :  248 - 0xf8 -- Sprite 0x2f
    "00000000", --  189 - 0xbd  :    0 - 0x0
    "00000000", --  190 - 0xbe  :    0 - 0x0
    "00000000", --  191 - 0xbf  :    0 - 0x0
    "11111000", --  192 - 0xc0  :  248 - 0xf8 -- Sprite 0x30
    "00000000", --  193 - 0xc1  :    0 - 0x0
    "00000000", --  194 - 0xc2  :    0 - 0x0
    "00000000", --  195 - 0xc3  :    0 - 0x0
    "11111000", --  196 - 0xc4  :  248 - 0xf8 -- Sprite 0x31
    "00000000", --  197 - 0xc5  :    0 - 0x0
    "00000000", --  198 - 0xc6  :    0 - 0x0
    "00000000", --  199 - 0xc7  :    0 - 0x0
    "11111000", --  200 - 0xc8  :  248 - 0xf8 -- Sprite 0x32
    "00000000", --  201 - 0xc9  :    0 - 0x0
    "00000000", --  202 - 0xca  :    0 - 0x0
    "00000000", --  203 - 0xcb  :    0 - 0x0
    "11111000", --  204 - 0xcc  :  248 - 0xf8 -- Sprite 0x33
    "00000000", --  205 - 0xcd  :    0 - 0x0
    "00000000", --  206 - 0xce  :    0 - 0x0
    "00000000", --  207 - 0xcf  :    0 - 0x0
    "11111000", --  208 - 0xd0  :  248 - 0xf8 -- Sprite 0x34
    "00000000", --  209 - 0xd1  :    0 - 0x0
    "00000000", --  210 - 0xd2  :    0 - 0x0
    "00000000", --  211 - 0xd3  :    0 - 0x0
    "11111000", --  212 - 0xd4  :  248 - 0xf8 -- Sprite 0x35
    "00000000", --  213 - 0xd5  :    0 - 0x0
    "00000000", --  214 - 0xd6  :    0 - 0x0
    "00000000", --  215 - 0xd7  :    0 - 0x0
    "11111000", --  216 - 0xd8  :  248 - 0xf8 -- Sprite 0x36
    "00000000", --  217 - 0xd9  :    0 - 0x0
    "00000000", --  218 - 0xda  :    0 - 0x0
    "00000000", --  219 - 0xdb  :    0 - 0x0
    "11111000", --  220 - 0xdc  :  248 - 0xf8 -- Sprite 0x37
    "00000000", --  221 - 0xdd  :    0 - 0x0
    "00000000", --  222 - 0xde  :    0 - 0x0
    "00000000", --  223 - 0xdf  :    0 - 0x0
    "11111000", --  224 - 0xe0  :  248 - 0xf8 -- Sprite 0x38
    "00000000", --  225 - 0xe1  :    0 - 0x0
    "00000000", --  226 - 0xe2  :    0 - 0x0
    "00000000", --  227 - 0xe3  :    0 - 0x0
    "11111000", --  228 - 0xe4  :  248 - 0xf8 -- Sprite 0x39
    "00000000", --  229 - 0xe5  :    0 - 0x0
    "00000000", --  230 - 0xe6  :    0 - 0x0
    "00000000", --  231 - 0xe7  :    0 - 0x0
    "11111000", --  232 - 0xe8  :  248 - 0xf8 -- Sprite 0x3a
    "00000000", --  233 - 0xe9  :    0 - 0x0
    "00000000", --  234 - 0xea  :    0 - 0x0
    "00000000", --  235 - 0xeb  :    0 - 0x0
    "11111000", --  236 - 0xec  :  248 - 0xf8 -- Sprite 0x3b
    "00000000", --  237 - 0xed  :    0 - 0x0
    "00000000", --  238 - 0xee  :    0 - 0x0
    "00000000", --  239 - 0xef  :    0 - 0x0
    "11111000", --  240 - 0xf0  :  248 - 0xf8 -- Sprite 0x3c
    "00000000", --  241 - 0xf1  :    0 - 0x0
    "00000000", --  242 - 0xf2  :    0 - 0x0
    "00000000", --  243 - 0xf3  :    0 - 0x0
    "11111000", --  244 - 0xf4  :  248 - 0xf8 -- Sprite 0x3d
    "00000000", --  245 - 0xf5  :    0 - 0x0
    "00000000", --  246 - 0xf6  :    0 - 0x0
    "00000000", --  247 - 0xf7  :    0 - 0x0
    "11111000", --  248 - 0xf8  :  248 - 0xf8 -- Sprite 0x3e
    "00000000", --  249 - 0xf9  :    0 - 0x0
    "00000000", --  250 - 0xfa  :    0 - 0x0
    "00000000", --  251 - 0xfb  :    0 - 0x0
    "11111000", --  252 - 0xfc  :  248 - 0xf8 -- Sprite 0x3f
    "00000000", --  253 - 0xfd  :    0 - 0x0
    "00000000", --  254 - 0xfe  :    0 - 0x0
    "00000000"  --  255 - 0xff  :    0 - 0x0
    );
begin
  addr_int <= to_integer(unsigned(addr));
  --P_ROM: process(clk)
  --begin
  --  if clk'event and clk='1' then
      dout <= table_mem(addr_int);
  --  end if;
  --end process;
end BEHAVIORAL;
