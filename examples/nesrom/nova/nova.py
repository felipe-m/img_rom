import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vhd import nesmem2vhd, nesmem2vhdattr
from nesmem2vhd import patterntable2vhdsplit, patterntable2vhdsplit2
from nesmem2vhd import patterntable2vhdsplit_spr_bg
from nesmem2vhd import palcolor2vhd

# exec(open("./nova.py").read())

# choose if you want a clock in the memories
clk = False

if clk==True:
    cpath = 'clk/'
else:
    cpath = 'comb/'


nesmem2vhd(dumpfilename = "./dmp/nova_ntable.dmp",
              nesmemtype = 0, # Name Table 2KiB, second name table is empty: 0s
              rom_name = "ROM_NTABLE_NOVA_00",
              dest_path = "./vhd/"+cpath,
              clk = clk)

nesmem2vhd(dumpfilename = "./dmp/nova_ntable.dmp",
              nesmemtype = 0, # Name Table 2KiB, second name table is empty: 0s
              rom_name = "ROM_NTABLE_NOVA_00",
              dest_path = "./vhd/"+cpath,
              halfnametable = True,
              clk = clk)


# This is racetrack 1 (see bottom)
#nesmem2vhd(dumpfilename = "./dmp/nova_ntable.dmp",
#             nesmemtype = 0, # Name Table
#             rom_name = "ROM_NTABLE0_NOVA_00", #only nametable 0
#             dest_path = "./vhd/"+cpath,
#             halfnametable = True,
#             clk = clk)



nesmem2vhd(dumpfilename = "./dmp/nova_ptable.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_NOVA",
              dest_path = "./vhd/"+cpath,
              clk = clk)

nesmem2vhd(dumpfilename = "./dmp/nova_oam_00.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_NOVA_00",
              dest_path = "./vhd/"+cpath,
              clk = clk)

# creates attribute table (separated)
nesmem2vhdattr(dumpfilename = "./dmp/nova_ntable.dmp",
              rom_name = "ROM_ATABLE_NOVA_00",
              dest_path = "./vhd/"+cpath,
              clk = clk)

nesmem2vhd(dumpfilename = "./dmp/nova_palette.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_NOVA",
              dest_path = "./vhd/"+cpath,
              universal_bgcolor = True,
              clk = clk)

# creates separate pattern tables into 2 planes
patterntable2vhdsplit (dumpfilename = "./dmp/nova_ptable.dmp",
                       rom_name = "ROM_PTABLE_NOVA",
                       dest_path = "./vhd/"+cpath,
                       clk = clk)

# creates separate pattern tables into sprites and background
# Total of 2 memories
patterntable2vhdsplit_spr_bg (dumpfilename = "./dmp/nova_ptable.dmp",
                        rom_name = "ROM_PTABLE_NOVA",
                        dest_path = "./vhd/"+cpath,
                        clk = clk)


# creates separate pattern tables into 2 planes
# and separates sprites and background into 2 memories
# Total of 4 memories
patterntable2vhdsplit2 (dumpfilename = "./dmp/nova_ptable.dmp",
                        rom_name = "ROM_PTABLE_NOVA",
                        dest_path = "./vhd/"+cpath,
                        clk = clk)


# The NES palette is the same for all
#palcolor2vhd (palfilename = "../nespalette.pal",
#                 mem_width=12,
#                 rom_name = "ROM_COLORS",
#                 dest_path = '../',
#                 clk = False)



