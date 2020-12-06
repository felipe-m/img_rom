import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vhd import nesmem2vhd, nesmem2vhdattr, patterntable2vhdsplit
from nesmem2vhd import palcolor2vhd

# exec(open("./sprilo_00.py").read())



nesmem2vhd(dumpfilename = "./00/dmp/sprilo_ntable_00.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_00",
              dest_path = "./00/")

nesmem2vhd(dumpfilename = "./00/dmp/sprilo_ntable_00.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE0_SPRILO_00", #only nametable 0
              dest_path = "./00/",
              halfnametable = True)

nesmem2vhd(dumpfilename = "./00/dmp/sprilo_ptable.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_SPRILO",
              dest_path = "./00/")

nesmem2vhd(dumpfilename = "./00/dmp/sprilo_oam_00.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_SPRILO_00",
              dest_path = "./00/")

# creates attribute table (separated)
nesmem2vhdattr(dumpfilename = "./00/dmp/sprilo_ntable_00.dmp",
              rom_name = "ROM_ATABLE_SPRILO_00",
              dest_path = "./00/")

nesmem2vhd(dumpfilename = "./00/dmp/sprilo_palette.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SPRILO",
              dest_path = "./00/",
              universal_bgcolor = True)

# creates separate pattern tables into 2 planes
patterntable2vhdsplit (dumpfilename = "./00/dmp/sprilo_ptable.dmp",
                       rom_name = "ROM_PTABLE_SPRILO",
                       dest_path = './00/')

# The NES palette is the same for all
#palcolor2vhd (palfilename = "./examples/dmp/nespalette.pal",
#                 mem_width=12,
#                 rom_name = "ROM_COLORS",
#                 dest_path = '../examples/vhd/nesrom/smario_start/')

