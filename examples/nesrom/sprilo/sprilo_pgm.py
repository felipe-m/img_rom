# converts to PGM image (just to show its content in a image viewer)

import os
import sys
import math

filepath = os.getcwd()
sys.path.append(filepath +  "/../../../src/")
from nesnt2pgm import nesnt2pgm

# exec(open("./sprilo_pgm.py").read())

nesnt2pgm(dumpfilename = "./dmp/sprilo_racet1.bin",
              dest_path = "./pgm/",
              incl_attr = True,
              halfnametable = True)

nesnt2pgm(dumpfilename = "./dmp/sprilo_racet2.bin",
              dest_path = "./pgm/",
              incl_attr = True,
              halfnametable = True)


nesnt2pgm(dumpfilename = "./dmp/sprilo_racet1.bin",
              dest_path = "./pgm/",
              incl_attr = False,
              halfnametable = True)

nesnt2pgm(dumpfilename = "./dmp/sprilo_racet2.bin",
              dest_path = "./pgm/",
              incl_attr = False,
              halfnametable = True)

