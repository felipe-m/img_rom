import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vrl import nesmem2vrl, nesmem2vrlattr
from nesmem2vrl import patterntable2vrlsplit, patterntable2vrlsplit2
from nesmem2vrl import patterntable2vrlsplit_spr_bg
from nesmem2vrl import palcolor2vrl

# exec(open("./smario_traspas_vrl.py").read())


# choose if you want a clock in the memories
clk = False

if clk==True:
    cpath = 'clk/'
else:
    cpath = 'comb/'


nesmem2vrl(dumpfilename = "./traspas/dmp/smario_traspas_nt.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SMARIO_TRASPAS",
              dest_path = "./traspas/vrl/"+cpath,
              halfnametable = True,
              clk = clk)

nesmem2vrl(dumpfilename = "./traspas/dmp/smario_traspas_patron.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_SMARIO_TRASPAS",
              dest_path = "./traspas/vrl/"+cpath,
              clk = clk)


nesmem2vrl(dumpfilename = "./traspas/dmp/smario_traspas_oam.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_SMARIO_TRASPAS",
              dest_path = "./traspas/vrl/"+cpath,
              clk = clk)

# creates attribute table (separated)
nesmem2vrl(dumpfilename = "./traspas/dmp/smario_traspas_nt.dmp",
              rom_name = "ROM_ATABLE_SMARIO_TRASPAS",
              dest_path = "./traspas/vrl/"+cpath,
              clk = clk)

nesmem2vrl(dumpfilename = "./traspas/dmp/smario_traspas_paletas.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SMARIO",
              dest_path = "./traspas/vrl/"+cpath,
              universal_bgcolor = True,
              clk = clk)
# creates separate pattern tables into 2 planes
patterntable2vrlsplit (dumpfilename = "./traspas/dmp/smario_traspas_patron.dmp",
                       rom_name = "ROM_PTABLE_SPRILO",
                       dest_path = "./traspas/vrl/"+cpath,
                       clk = clk)

# creates separate pattern tables into sprites and background
# Total of 2 memories
patterntable2vrlsplit_spr_bg (
                      dumpfilename = "./traspas/dmp/smario_traspas_patron.dmp",
                      rom_name = "ROM_PTABLE_MARIO_TRASPAS",
                      dest_path = "./traspas/vrl/"+cpath,
                      clk = clk)


# creates separate pattern tables into 2 planes
# and separates sprites and background into 2 memories
# Total of 4 memories
patterntable2vrlsplit2 (
                      dumpfilename = "./traspas/dmp/smario_traspas_patron.dmp",
                      rom_name = "ROM_PTABLE_MARIO_TRASPAS",
                      dest_path = "./traspas/vrl/"+cpath,
                      clk = clk)



# The NES palette is the same for all
#palcolor2vrl (palfilename = "./examples/dmp/nespalette.pal",
#                 mem_width=12,
#                 rom_name = "ROM_COLORS",
#                 dest_path = '../examples/vrl/nesrom/smario_start/')
