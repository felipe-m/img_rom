import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vhd import nesmem2vhd, nesmem2vhdattr, patterntable2vhdsplit
from nesmem2vhd import palcolor2vhd

# exec(open("./smario_00.py").read())



nesmem2vhd(dumpfilename = "./00/dmp/smario_ntable_01.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SMARIO_01",
              dest_path = "./00/")

nesmem2vhd(dumpfilename = "./00/dmp/smario_ptable.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_SMARIO",
              dest_path = "./00/")

nesmem2vhd(dumpfilename = "./00/dmp/smario_oam_02.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_SMARIO",
              dest_path = "./00/")

# creates attribute table (separated)
nesmem2vhdattr(dumpfilename = "./00/dmp/smario_ntable_01.dmp",
              rom_name = "ROM_ATABLE_SMARIO_01",
              dest_path = "./00/")

nesmem2vhd(dumpfilename = "./00/dmp/smario_palette.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SMARIO",
              dest_path = "./00/",
              universal_bgcolor = True)

# creates separate pattern tables into 2 planes
patterntable2vhdsplit (dumpfilename = "./00/dmp/smario_ptable.dmp",
                       rom_name = "ROM_PTABLE_SMARIO",
                       dest_path = './00/')

# The NES palette is the same for all
#palcolor2vhd (palfilename = "./examples/dmp/nespalette.pal",
#                 mem_width=12,
#                 rom_name = "ROM_COLORS",
#                 dest_path = '../examples/vhd/nesrom/smario_start/')

