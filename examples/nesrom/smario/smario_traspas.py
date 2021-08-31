import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vhd import nesmem2vhd, nesmem2vhdattr
from nesmem2vhd import patterntable2vhdsplit, patterntable2vhdsplit2
from nesmem2vhd import patterntable2vhdsplit_spr_bg
from nesmem2vhd import palcolor2vhd

# exec(open("./smario_traspas.py").read())


# choose if you want a clock in the memories
clk = False

if clk==True:
    cpath = 'clk/'
else:
    cpath = 'comb/'


nesmem2vhd(dumpfilename = "./traspas/dmp/smario_traspas_nt.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SMARIO_TRASPAS",
              dest_path = "./traspas/vhd/"+cpath,
              halfnametable = True,
              clk = clk)

nesmem2vhd(dumpfilename = "./traspas/dmp/smario_traspas_patron.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_SMARIO_TRASPAS",
              dest_path = "./traspas/vhd/"+cpath,
              clk = clk)


nesmem2vhd(dumpfilename = "./traspas/dmp/smario_traspas_oam.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_SMARIO_TRASPAS",
              dest_path = "./traspas/vhd/"+cpath,
              clk = clk)

# creates attribute table (separated)
nesmem2vhdattr(dumpfilename = "./traspas/dmp/smario_traspas_nt.dmp",
              rom_name = "ROM_ATABLE_SMARIO_TRASPAS",
              dest_path = "./traspas/vhd/"+cpath,
              clk = clk)

nesmem2vhd(dumpfilename = "./traspas/dmp/smario_traspas_paletas.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SMARIO",
              dest_path = "./traspas/vhd/"+cpath,
              universal_bgcolor = True,
              clk = clk)
# creates separate pattern tables into 2 planes
patterntable2vhdsplit (dumpfilename = "./traspas/dmp/smario_traspas_patron.dmp",
                       rom_name = "ROM_PTABLE_SPRILO",
                       dest_path = "./traspas/vhd/"+cpath,
                       clk = clk)

# creates separate pattern tables into sprites and background
# Total of 2 memories
patterntable2vhdsplit_spr_bg (
                      dumpfilename = "./traspas/dmp/smario_traspas_patron.dmp",
                      rom_name = "ROM_PTABLE_MARIO_TRASPAS",
                      dest_path = "./traspas/vhd/"+cpath,
                      clk = clk)


# creates separate pattern tables into 2 planes
# and separates sprites and background into 2 memories
# Total of 4 memories
patterntable2vhdsplit2 (
                      dumpfilename = "./traspas/dmp/smario_traspas_patron.dmp",
                      rom_name = "ROM_PTABLE_MARIO_TRASPAS",
                      dest_path = "./traspas/vhd/"+cpath,
                      clk = clk)



# The NES palette is the same for all
#palcolor2vhd (palfilename = "./examples/dmp/nespalette.pal",
#                 mem_width=12,
#                 rom_name = "ROM_COLORS",
#                 dest_path = '../examples/vhd/nesrom/smario_start/')
