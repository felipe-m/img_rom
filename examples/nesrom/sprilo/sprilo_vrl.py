import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesmem2vrl import nesmem2vrl, nesmem2vrlattr
from nesmem2vrl import patterntable2vrlsplit, patterntable2vrlsplit2
from nesmem2vrl import patterntable2vrlsplit_spr_bg
from nesmem2vrl import palcolor2vrl

# exec(open("./sprilo_vrl.py").read())

# choose if you want a clock in the memories
clk = True

if clk==True:
    cpath = 'clk/'
else:
    cpath = 'comb/'

nesmem2vrl(dumpfilename = "./dmp/sprilo_ntable_00.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_00",
              dest_path = "./vrl/"+cpath,
              clk = clk)


# This is racetrack 1 (see bottom)
#nesmem2vrl(dumpfilename = "./dmp/sprilo_ntable_00.dmp",
#              nesmemtype = 0, # Name Table
#              rom_name = "ROM_NTABLE0_SPRILO_00", #only nametable 0
#              dest_path = "./vrl/"+cpath,
#              halfnametable = True,
#              clk = clk)

nesmem2vrl(dumpfilename = "./dmp/sprilo_ptable.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_SPRILO",
              dest_path = "./vrl/"+cpath,
              clk = clk)

nesmem2vrl(dumpfilename = "./dmp/sprilo_oam_00.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_SPRILO_00",
              dest_path = "./vrl/"+cpath,
              #clk = True)
              clk = clk)

# creates attribute table (separated)
nesmem2vrlattr(dumpfilename = "./dmp/sprilo_ntable_00.dmp",
              rom_name = "ROM_ATABLE_SPRILO_00",
              dest_path = "./vrl/"+cpath,
              clk = clk)

nesmem2vrl(dumpfilename = "./dmp/sprilo_palette.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SPRILO",
              dest_path = "./vrl/"+cpath,
              universal_bgcolor = True,
              clk = clk)

nesmem2vrl(dumpfilename = "./dmp/sprilo_palette2.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SPRILO",
              dest_path = "./vrl/"+cpath,
              universal_bgcolor = True,
              clk = clk)

nesmem2vrl(dumpfilename = "./dmp/sprilo_palette3.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SPRILO",
              dest_path = "./vrl/"+cpath,
              universal_bgcolor = True,
              clk = clk)

# creates separate pattern tables into 2 planes
patterntable2vrlsplit (dumpfilename = "./dmp/sprilo_ptable.dmp",
                       rom_name = "ROM_PTABLE_SPRILO",
                       dest_path = "./vrl/"+cpath,
                       clk = clk)

# creates separate pattern tables into sprites and background
# Total of 2 memories
patterntable2vrlsplit_spr_bg (dumpfilename = "./dmp/sprilo_ptable.dmp",
                        rom_name = "ROM_PTABLE_SPRILO",
                        dest_path = "./vrl/"+cpath,
                        clk = clk)


# creates separate pattern tables into 2 planes
# and separates sprites and background into 2 memories
# Total of 4 memories
patterntable2vrlsplit2 (dumpfilename = "./dmp/sprilo_ptable.dmp",
                        rom_name = "ROM_PTABLE_SPRILO",
                        dest_path = "./vrl/"+cpath,
                        clk = clk)


# The NES palette is the same for all
palcolor2vrl (palfilename = "../nespalette.pal",
                 mem_width=12,
                 rom_name = "ROM_COLORS",
                 dest_path = '../',
                 clk = False)


# NameTable menuscreen 1KiB
nesmem2vrl(dumpfilename = "./dmp/sprilo_menuscr.bin",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE0_SPRILO_MENU", # Menu screen
              dest_path = "./vrl/"+cpath,
              halfnametable = True,
              clk = clk)

# NameTable endscreen 1KiB
nesmem2vrl(dumpfilename = "./dmp/sprilo_endscr.bin",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_ENDSCREEN", # nd screen
              dest_path = "./vrl/"+cpath,
              halfnametable = True,
              clk = clk)

# NameTable introcreen 1KiB
nesmem2vrl(dumpfilename = "./dmp/sprilo_introscr.bin",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_INTROSCREEN", # Intro screen
              dest_path = "./vrl/"+cpath,
              halfnametable = True,
              clk = clk)

# NameTable racetrack 1 1KiB
nesmem2vrl(dumpfilename = "./dmp/sprilo_racet1.bin",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_RACE1", # Racetrack 1
              dest_path = "./vrl/"+cpath,
              halfnametable = True,
              clk = clk)


# NameTable racetrack 2 1KiB
nesmem2vrl(dumpfilename = "./dmp/sprilo_racet2.bin",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_RACE2", # Racetrack 2
              dest_path = "./vrl/"+cpath,
              halfnametable = True,
              clk = clk)

# NameTable racetrack 3 1KiB
nesmem2vrl(dumpfilename = "./dmp/sprilo_racet3.bin",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_RACE3", # Racetrack 3
              dest_path = "./vrl/"+cpath,
              halfnametable = True,
              clk = clk)

# NameTable racetrack 4 1KiB
nesmem2vrl(dumpfilename = "./dmp/sprilo_racet4.bin",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SPRILO_RACE4", # Racetrack 4
              dest_path = "./vrl/"+cpath,
              halfnametable = True,
              clk = clk)


