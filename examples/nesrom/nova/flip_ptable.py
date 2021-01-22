import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")

from flip_halfbin import flip_halfbin

# exec(open("./flip_ptable.py").read())

# nova also has background at the first half
flip_halfbin(dumpfilename_o = "./dmp/nova_ptable_orig.dmp",
             dumpfilename_r = "./dmp/nova_ptable.dmp"
             )

