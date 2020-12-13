import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vrl import nesmem2vrl, nesmem2vrlattr
from nesmem2vrl import patterntable2vrlsplit
#from nesmem2vrl import patterntable2vrlsplit, patterntable2vrlsplit2
from nesmem2vrl import patterntable2vrlsplit_spr_bg
#from nesmem2vrl import palcolor2vrl

# exec(open("./sprilo_00_vrl.py").read())

# choose if you want a clock in the memories
clk = False

if clk==True:
    cpath = 'clk/'
else:
    cpath = 'comb/'

nesmem2vrl(dumpfilename = "./00/dmp/sprilo_ntable_00.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_00",
              dest_path = "./00/vrl/"+cpath,
              clk = clk)



nesmem2vrl(dumpfilename = "./00/dmp/sprilo_ntable_00.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE0_SPRILO_00", #only nametable 0
              dest_path = "./00/vrl/"+cpath,
              halfnametable = True,
              clk = clk)

nesmem2vrl(dumpfilename = "./00/dmp/sprilo_ptable.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_SPRILO",
              dest_path = "./00/vrl/"+cpath,
              clk = clk)

nesmem2vrl(dumpfilename = "./00/dmp/sprilo_oam_00.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_SPRILO_00",
              dest_path = "./00/vrl/"+cpath,
              #clk = True)
              clk = clk)

# creates attribute table (separated)
nesmem2vrlattr(dumpfilename = "./00/dmp/sprilo_ntable_00.dmp",
              rom_name = "ROM_ATABLE_SPRILO_00",
              dest_path = "./00/vrl/"+cpath,
              clk = clk)

nesmem2vrl(dumpfilename = "./00/dmp/sprilo_palette.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SPRILO",
              dest_path = "./00/vrl/"+cpath,
              universal_bgcolor = True,
              clk = clk)

# creates separate pattern tables into 2 planes
patterntable2vrlsplit (dumpfilename = "./00/dmp/sprilo_ptable.dmp",
                       rom_name = "ROM_PTABLE_SPRILO",
                       dest_path = "./00/vrl/"+cpath,
                       clk = clk)

# creates separate pattern tables into sprites and background
# Total of 2 memories
patterntable2vrlsplit_spr_bg (dumpfilename = "./00/dmp/sprilo_ptable.dmp",
                        rom_name = "ROM_PTABLE_SPRILO",
                        dest_path = "./00/vrl/"+cpath,
                        clk = clk)
"""


# creates separate pattern tables into 2 planes
# and separates sprites and background into 2 memories
# Total of 4 memories
patterntable2vrlsplit2 (dumpfilename = "./00/dmp/sprilo_ptable.dmp",
                        rom_name = "ROM_PTABLE_SPRILO",
                        dest_path = './00/',
                        clk = clk)


# The NES palette is the same for all
#palcolor2vrl (palfilename = "./examples/dmp/nespalette.pal",
#                 mem_width=12,
#                 rom_name = "ROM_COLORS",
#                 dest_path = '../examples/vhd/nesrom/smario_start/')

"""
