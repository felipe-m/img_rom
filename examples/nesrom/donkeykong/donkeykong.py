import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vhd import nesmem2vhd, nesmem2vhdattr
from nesmem2vhd import patterntable2vhdsplit, patterntable2vhdsplit2
from nesmem2vhd import patterntable2vhdsplit_spr_bg
from nesmem2vhd import palcolor2vhd

# exec(open("./donkeykong.py").read())

# choose if you want a clock in the memories
clk = True

if clk==False:
    cpath = 'clk/'
else:
    cpath = 'comb/'



nesmem2vhd(dumpfilename = "./dmp/donkeykong_ntable.dmp",
              nesmemtype = 0, # Name Table 2KiB, second name table is empty: 0s
              rom_name = "ROM_NTABLE_DONKEYKONG",
              dest_path = "./vhd/"+cpath,
              halfnametable = False,
              clk = clk)

nesmem2vhd(dumpfilename = "./dmp/donkeykong_ntable.dmp",
              nesmemtype = 0, # Name Table 1KiB, just first half
              rom_name = "ROM_NTABLE_DONKEYKONG",
              dest_path = "./vhd/"+cpath,
              halfnametable = True,
              clk = clk)

nesmem2vhd(dumpfilename = "./dmp/donkeykong_ptable.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_DONKEYKONG",
              dest_path = "./vhd/"+cpath,
              clk = clk)

nesmem2vhd(dumpfilename = "./dmp/donkeykong_oam.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_DONKEYKONG",
              dest_path = "./vhd/"+cpath,
              clk = clk)

# creates attribute table (separated)
nesmem2vhdattr(dumpfilename = "./dmp/donkeykong_ntable.dmp",
              rom_name = "ROM_ATABLE_DONKEYKONG",
              dest_path = "./vhd/"+cpath,
              clk = clk)

nesmem2vhd(dumpfilename = "./dmp/donkeykong_palette.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_DONKEYKONG",
              dest_path = "./vhd/"+cpath,
              universal_bgcolor = True,
              clk = clk)

# creates separate pattern tables into 2 planes
patterntable2vhdsplit (dumpfilename = "./dmp/donkeykong_ptable.dmp",
                       rom_name = "ROM_PTABLE_DONKEYKONG",
                       dest_path = "./vhd/"+cpath,
                       clk = clk)

# creates separate pattern tables into sprites and background
# Total of 2 memories
patterntable2vhdsplit_spr_bg (dumpfilename = "./dmp/donkeykong_ptable.dmp",
                        rom_name = "ROM_PTABLE_DONKEYKONG",
                        dest_path = "./vhd/"+cpath,
                        clk = clk)


# creates separate pattern tables into 2 planes
# and separates sprites and background into 2 memories
# Total of 4 memories
patterntable2vhdsplit2 (dumpfilename = "./dmp/donkeykong_ptable.dmp",
                        rom_name = "ROM_PTABLE_DONKEYKONG",
                        dest_path = "./vhd/"+cpath,
                        clk = clk)


# The NES palette is the same for all
#palcolor2vhd (palfilename = "../nespalette.pal",
#                 mem_width=12,
#                 rom_name = "ROM_COLORS",
#                 dest_path = '../',
#                 clk = False)


