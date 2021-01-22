import os
import math

# exec(open("./flip_halfbin.py").read())

# some NES pattern tables (eg. pacman namco) has background first and then
# sprites. So instead of changing the python script to make the memories
# just flipping the binary file to put first the sprites


def flip_halfbin (dumpfilename_o,
                  dumpfilename_r="",
                  dest_path = './'
                  ):
    """
    Takes a binary memory dump file of a NES pattern memory,
      https://wiki.nesdev.com/w/index.php/PPU_pattern_tables
    and flip the first half with the second. This is because I have found
    some memories that have the background first, which is not usual
    So it will make another binary file with the sprites first

    dumpfilename_o : name of the original memory dump file
                     (includes path and extension)
                     binary file. File extension usually is .dmp
                     8KiB
    dumpfilename_r : name of the resulting memory dump file
                     flipping the halves
    dest_path      : path of the dump file to be created
    """


    mem_length = os.stat(dumpfilename_o).st_size
    with open(dumpfilename_o,"rb") as f_orig:
        if not dumpfilename_r: # if not included, just add '_r'
            filename = os.path.split(dumpfilename_o)[1]  #take away the path
            basefilename = os.path.splitext(filename)[0] #take away extension
            extension = os.path.splitext(filename)[1] #extension
            dumpfilename_r = dest_path + basefilename + "_r" + extension
        else:
            dumpfilename_r = dest_path + dumpfilename_r

        half_1 = bytearray(f_orig.read(int(mem_length/2)))
        half_2 = bytearray(f_orig.read(int(mem_length/2)))
        with open(dumpfilename_r, 'wb') as  f_result:
            f_result.write(half_2)
            f_result.write(half_1)
        


