import os
import sys

#exec(open("./src/test_vhdlrom2vrl.py").read())

filepath = os.getcwd()
sys.path.append(filepath +  "./../../src/")
from vhdlrom2vrl import vhdlrom2vrl

vhdlrom2vrl(vhdlfilename = "rom_red_square_80x60_rgb_8b.vhd",
             constant_name = "filaimg",
             data_name = "dout",
             gen_module = True,
             addr_name = "addr",
             outfilename = "rom_red_square_80x60_rgb_8b_noclk.v",
             dest_path = './',
             blocking = True,
             clk = False)

vhdlrom2vrl(vhdlfilename = "rom_red_square_80x60_rgb_9b.vhd",
             constant_name = "filaimg",
             data_name = "dout",
             addr_name = "addr",
             outfilename = "rom_red_square_80x60_rgb_9b.v",
             dest_path = './',
             blocking = False,
             clk = True)

