# converts a NES name table into pgm file, in order to visualize it
import os
import math

# exec(open("./nesnt2pgm.py").read())


def nesnt2pgm (dumpfilename,
               dest_path = './',
               incl_attr = True,
               halfnametable = False):
    """
    Takes a binary memory dump file of a NES memory,
      https://wiki.nesdev.com/w/index.php/PPU_nametables
    Name Table: 2KiB (or 1KiB)

    dumpfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .dmp
                   2KiB
    dest_path    : path of the VHDL file to be created
    incl_attr    : if true, includes the attibute table
    halfnametable: if True only takes the first nametable
                  thus 1KiB
    """


    filemem_length = os.stat(dumpfilename).st_size # number of memory positions
    mem_length = 2048   
    if halfnametable == True:
        mem_length = int(mem_length/2)

    if (os.path.isfile(dumpfilename) and 
                                         # *2 in case of half table
        ((mem_length == filemem_length) or (2*mem_length == filemem_length))):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        if halfnametable == True and incl_attr == True:
            pgmfilename = dest_path + basefilename + "_nt0_attr.pgm"
            img_dim = '32 32\n' # 32 columns x 32 rows (30 nametable + 2 attrib)
        elif halfnametable == True and incl_attr == False:
            pgmfilename = dest_path + basefilename + "_nt0.pgm"
            img_dim = '32 30\n' # 32 columns x 30 rows (30 nametable + 2 attrib)
        elif halfnametable == False and incl_attr == True:
            pgmfilename = dest_path + basefilename + "_attr.pgm"
            img_dim = '32 64\n' # 2 x rows
        else:
            pgmfilename = dest_path + basefilename + ".pgm"
            img_dim = '32 60\n' # 2x

        pgmfile = open(pgmfilename, 'w')
        # write the header
        pgmfile.write('P2\n') # grayscale
        pgmfile.write('# Generated from ' + filename
                     + ' by nesnt2pgm https://github.com/felipe-m/img_rom'
                     + '\n' ) # comment
        pgmfile.write(img_dim) # image dimensions: columns x rows
        pgmfile.write('255\n') # Maximum gray value

        with open(dumpfilename,"rb") as nametablefile:
            mem_addr = 0;
            while (byte_str := nametablefile.read(1)): 
                #gets the unicode character, the number we want
                byte = ord(byte_str)
                if mem_addr < 960: # Name Table 0: always write
                    pgmfile.write(str(byte))
                    if mem_addr % 32 == 31:
                        pgmfile.write('\n') # new line with each image row
                    else:
                        pgmfile.write(' ') # space
                elif mem_addr < 1024: # Attribute Table 0
                    if incl_attr == True:
                        pgmfile.write(str(byte))
                        if mem_addr % 32 == 31:
                            pgmfile.write('\n') # new line with each image row
                        else:
                            pgmfile.write(' ') # space
                elif mem_addr < (1024 + 960): # Name Table 1
                    if halfnametable == False:
                        pgmfile.write(str(byte))
                        if mem_addr % 32 == 31:
                            pgmfile.write('\n') # new line with each image row
                        else:
                            pgmfile.write(' ') # space
                else: # Attribute Table 1
                    if halfnametable == False and incl_attr == True:
                        pgmfile.write(str(byte))
                        if mem_addr % 32 == 31:
                            pgmfile.write('\n') # new line with each image row
                        else:
                            pgmfile.write(' ') # space
                mem_addr = mem_addr + 1
        pgmfile.close()
        nametablefile.close()
            



"""



nesnt2pgm(dumpfilename = "../examples/nesrom/nova/dmp/nova_ntable.dmp",
              dest_path = "../examples/nesrom/nova/",
              incl_attr = True,
              halfnametable = False)

nesnt2pgm(dumpfilename = "../examples/nesrom/nova/dmp/nova_ntable.dmp",
              dest_path = "../examples/nesrom/nova/",
              incl_attr = False,
              halfnametable = False)

nesnt2pgm(dumpfilename = "../examples/nesrom/nova/dmp/nova_ntable.dmp",
              dest_path = "../examples/nesrom/nova/",
              incl_attr = True,
              halfnametable = True)

nesnt2pgm(dumpfilename = "../examples/nesrom/nova/dmp/nova_ntable.dmp",
              dest_path = "../examples/nesrom/nova/",
              incl_attr = False,
              halfnametable = True)


"""
