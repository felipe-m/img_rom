import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")

from flip_halfbin import flip_halfbin

# exec(open("./flip_ptable.py").read())

flip_halfbin(dumpfilename_o = "./dmp/pacman_ptable_orig.dmp",
             dumpfilename_r = "./dmp/pacman_ptable.dmp"
             )

