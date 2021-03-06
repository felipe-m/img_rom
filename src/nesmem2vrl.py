import os
import math

# exec(open("./nesmem2vrlg.py").read())


def write_vrl_header (vrlfile, nesmemtype, modulename, orig_name, mem_length, mem_width, halfnametable= False, clk=True):
    """
    Writes the header of the verilog file

    vrlfile     : text file to be written
    nesmemtype  : memory type
                   0: Name Table
                   1: Pattern Table
                   2: Pattern Table with only one color plane
                   3: Attribute Table (separate from Name table)
                   4: Palette Memory
                   5: Palette Colors
                   6: OAM: Object Attribute Memory: for sprites
    modulename  : string with the entity name
    origname    : string with the original memory dump file name
    mem_length  : number of memory positions
    mem_width   : number of bits of each memory position
    halfnametable: only for Name Tables Memories: if true only takes the first
                  KiB, thus, only the first nametable
    clk         : If false creates a combinatorial memory without clock

    """

    vrlfile.write('//- Autcmatically generated verilog ROM from a NES memory file----\n')
    if nesmemtype == 0:  # Name Table
        vrlfile.write('//-   NAME TABLE\n')
        vrlfile.write('// https://wiki.nesdev.com/w/index.php/PPU_nametables\n')
        if halfnametable == True:
            vrlfile.write('//- Only the first Name Table: 1KiB\n')
            mem_length = 1024
    elif nesmemtype == 1:  # Pattern Table (normal)
        vrlfile.write('//-   PATTERN TABLE\n')
        vrlfile.write('// https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
    elif nesmemtype == 2:  # Pattern Table (separated plane colors)
        vrlfile.write('//-   PATTERN TABLE WITH ONLY ONE COLOR PLANE\n')
        vrlfile.write('// https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
    elif nesmemtype == 3:  # Atribute Table (separated from Name Table)
        vrlfile.write('//-   ATTRIBUTE TABLE SEPARATED FROM NAME TABLE\n')
        vrlfile.write('// https://wiki.nesdev.com/w/index.php/PPU_attribute_tables\n')
    elif nesmemtype == 4:  # Palette Memory
        vrlfile.write('//-   PALETTE MEMORY\n')
        vrlfile.write('// https://wiki.nesdev.com/w/index.php/PPU_palettes\n')
    # palette colores is not done here
    elif nesmemtype == 6:  # OAM: sprite memory
        vrlfile.write('//-   SPRITEs MEMORY (OAM)\n')
        vrlfile.write('// https://wiki.nesdev.com/w/index.php/PPU_OAM\n')
    # there are other types (background and sprites pattern tables separated)
    # but in these cases this header will be written on the calling function

    numbits_addr = math.ceil(math.log(mem_length,2))
    vrlfile.write('\n')
    vrlfile.write('\n')
    vrlfile.write('//-  Original memory dump file name: ' + orig_name + ' --\n')
    vrlfile.write('//---- Felipe Machado -----------------------------------\n')
    vrlfile.write('//---- Area de Tecnologia Electronica -----------\n')
    vrlfile.write('//---- Universidad Rey Juan Carlos ----------------------\n')
    vrlfile.write('//---- https://github.com/felipe-m ----------------------\n')
    vrlfile.write('//-------------------------------------------------------\n')

    if clk==True:
        vrlfile.write('//--- Memory with clock ------\n')
        # empty text, so no comment
        clkcmt =''
    else:
        vrlfile.write('//--- Memory without clock -----\n')
        # commented clk sentence
        clkcmt ='//'
    
    vrlfile.write('\n')
    vrlfile.write('//--- Ports ---------------------------------------------\n')
    vrlfile.write('// Inputs   ---------------------------------------------\n')
    vrlfile.write('//   ' + clkcmt + ' clk  :  clock signal\n')
    vrlfile.write('//    addr :  memory address\n')
    vrlfile.write('// Outputs  ---------------------------------------------\n')
    vrlfile.write('//    dout :  memory data out ')
    if clk==True:
        vrlfile.write(' (a clock cycle later)\n')
    else:
        vrlfile.write(' (no clock: in the same clock cycle)\n')
    vrlfile.write('\n\n')
    vrlfile.write('\n\n')
    vrlfile.write('module ' + modulename + '\n')
    vrlfile.write('  (\n')
    vrlfile.write('     ' + clkcmt + 'input     clk,   // clock\n')
    vrlfile.write('     input      [' + str(numbits_addr) + '-1:0] addr,')
    vrlfile.write('  //' + str(mem_length) + ' memory positions\n')
    if clk==True:
        vrlfile.write('     output reg  [' + str(mem_width) + '-1:0] dout')
    else:
        vrlfile.write('     output reg  [' + str(mem_width) + '-1:0] dout')
        #vrlfile.write('     output      [' + str(mem_width) + '-1:0] dout')
    vrlfile.write('  // memory data width\n')
    vrlfile.write('  );\n')
    vrlfile.write('\n\n')
    if clk==True:
        vrlfile.write('  always @(posedge clk)\n')
    else:
        vrlfile.write('  always @*\n')
    vrlfile.write('  begin\n')
    vrlfile.write('    case (addr)\n')


def nesmem2vrl (dumpfilename,
                  nesmemtype = 0,
                  mem_width=8,
                  rom_name = "ROM_NESTABLE",
                  dest_path = './',
                  universal_bgcolor = True,
                  halfnametable = False,
                  clk = True):
    """
    Takes a binary memory dump file of a NES memory,
      https://wiki.nesdev.com/w/index.php/PPU_nametables
      https://wiki.nesdev.com/w/index.php/PPU_pattern_tables
        Both Sprites and Background
      https://wiki.nesdev.com/w/index.php/PPU_palettes
      https://wiki.nesdev.com/w/index.php/PPU_OAM

    dumpfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .dmp
                   2KiB
    nesmemtype   : memory type
                   0: Name Table: 2KiB (or 1KiB)
                   1: Pattern Table
                   2: Attribute Table (separated from name table)
                      not used here but in nesmem2vrlattr
                   3: Attribute Table (separate from Name table)
                   4: Palette Memory
                   5: Palette Colors -- Not used here but in palcolor2vrl
                   6: OAM: Object Attribute Memory: for sprites
    mem_width    : NES memory width is 8 bits
    rom_name     : string: verilog module name to be created
    dest_path    : path of the verilog file to be created
    universal_bgcolor: only for Palette Memories: puts color 0 in all
                   backgrounds, every 4 memory positions 
    halfnametable: only for nametables, if True only takes the first nametable
                  thus 1KiB
    clk         : If false creates a combinatorial memory without clock
    """


    filemem_length = os.stat(dumpfilename).st_size # number of memory positions
    mem_length_half = 0
    if nesmemtype == 0 or nesmemtype == 3: # Name Table: 2048 memory positions
        # Attribute table (3) uses a Name Table
        mem_length = 2048   
        if halfnametable == True:
            mem_length = int(mem_length/2)
    elif nesmemtype == 1:  # Pattern Table
        # it has the background and the sprites pattern table, 4KiB each
        # 8192 positions 2**13 -> 0x2000
        mem_length = 2**13 # 8192
    elif nesmemtype == 4:  # Palette Memory
        # it has the background 4 palettes of 4 colors (16) for the background
        # and the sprites: 32
        # 5 positions 2**5 -> 0x20
        mem_length = 2**5 # 32
    #elif nesmemtype == 5:  # Palette Colors # NOT USED HERE
        # it has the background 64 colors in different RGB configurations
        #mem_length = 2**6 # 64 (if RGB in each memory address)
    elif nesmemtype == 6:  # OAM: Sprites (Object Attribute Memory)
        # it has a list of up to 64 sprites, each sprite occupies 4 bytes
        # Byte 0: Y position of top of sprite
        # Byte 1: Index number -> pointer to sprite pattern table
        # Byte 2: Attributes:
        #    bits 1:0: pointer to sprite palete (4 to 7)
        #    bits 4:2: Unimplemented
        #    bit    5: Priority (0: in front of background, 1: behind background
        #    bit    6: Flip sprite horizontally
        #    bit    7: Flip sprite vertically
        # 256 bytes (FF)
        mem_length = 2**8 # 256

    if clk==True:
        assign = ': dout <= '
    else:
        assign = ': dout  = '

    numbits_addr = math.ceil(math.log(mem_length,2))
    hexdig_addr = math.ceil(numbits_addr/4) # how manyhex digits has the address

    if (os.path.isfile(dumpfilename) and 
                                         # *2 in case of half table
        ((mem_length == filemem_length) or (2*mem_length == filemem_length))):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        if nesmemtype == 0 and halfnametable == True:
            vrlfilename = dest_path + basefilename + "_nt0.v"
        else:
            vrlfilename = dest_path + basefilename + ".v"
        vrlfile = open(vrlfilename, 'w')
        # write the header
        write_vrl_header (vrlfile, nesmemtype, rom_name,
                          filename,mem_length,mem_width,halfnametable, clk)

        vrlfile.write('                               //  address:   value \n' )
        vrlfile.write('                               //    dec  : dec - hex\n')

        with open(dumpfilename,"rb") as nametablefile:
            mem_addr = 0;
            while (byte_str := nametablefile.read(1)): 
                byte = ord(byte_str) #gets the unicode character
                # to have the same background color when making the palette mem
                if nesmemtype == 4 and universal_bgcolor:
                    if mem_addr == 0 :
                      byte_bg = byte
                    elif (mem_addr % 4) == 0:
                      byte = byte_bg
                # to indicate when we are in Table 0 and 1
                elif nesmemtype == 0: # Name Table
                    if (mem_addr % 1024 == 0): # just 0 and 1024
                        vrlfile.write('     //----- Name Table ')
                        vrlfile.write(str(int(mem_addr/1024))+'---------\n')
                    elif ((mem_addr == 960) or (mem_addr == 960+1024)):
                        # to indicate when the attribute table starts
                        vrlfile.write('        //-- Attribute Table ')
                        vrlfile.write(str(int(mem_addr/1024))+'----\n')
                # to indicate when we are in Sprites 0 and Background
                elif nesmemtype == 1: # Pattern Table
                    if (mem_addr % 4096 == 0 ): # just 0 and 4096
                        vrlfile.write('          // Pattern Table ')
                        vrlfile.write(str(int(mem_addr/4096))+'---------\n')

                byte_bin_str = (format(byte,'b')).zfill(mem_width)

                vrlfile.write("      " + str(numbits_addr))
                #vrlfile.write("'h"+hex(mem_addr).rjust(hexdig_addr))
                vrlfile.write("'h"+format(mem_addr,'X'))
                vrlfile.write(assign + str(mem_width) + "'b" +byte_bin_str)

                # to have the address in dec and hex, and the values
                vrlfile.write('; //' + str(mem_addr).rjust(5) + ' : ' )
                vrlfile.write(str(byte).rjust(3)+' - ')
                vrlfile.write(hex(byte).rjust(3))
                # to indicate the line number
                if nesmemtype == 0: # Name Table
                    if mem_addr < 960:
                        if (mem_addr % 32 == 0 ): # each 32 there is a new line
                            vrlfile.write(' -- line ')
                            vrlfile.write(hex(int(mem_addr/32)))
                    elif mem_addr>=1024 and mem_addr < (960+1024):
                        if (mem_addr-1024) % 32 == 0: # new line
                            vrlfile.write(' -- line ')
                            vrlfile.write(hex(int((mem_addr-1024)/32)))
                # to indicate the pattern number
                elif nesmemtype == 1: # Pattern Table
                    if (mem_addr % 16 == 0 ): # each 16 there is a pattern 
                        if (mem_addr < 4096):
                            vrlfile.write(' -- Sprite ')
                            vrlfile.write(hex(int(mem_addr/16)))
                        else: # background patterns
                            vrlfile.write(' -- Background ')
                            vrlfile.write(hex(int((mem_addr-4096)/16)))
                # to indicate the sprite number
                elif nesmemtype == 6:
                    if (mem_addr % 4 == 0 ): # each 16 there is a pattern 
                        vrlfile.write(' -- Sprite ')
                        vrlfile.write(hex(int(mem_addr/4)))
                vrlfile.write('\n')
                mem_addr += 1
                if mem_addr >= mem_length:
                   break; # the case of one name table
            vrlfile.write('    endcase\n')
            vrlfile.write('  end\n\n')
            vrlfile.write('endmodule\n')

        vrlfile.close()
        nametablefile.close()
            


def nesmem2vrlattr (dumpfilename,
                    mem_width=8,
                    rom_name = "ROM_NESTABLE",
                    dest_path = './',
                    clk = True):
    """
    Takes a binary memory dump file of a NES memory,
    takes a Name Tables but only converts the attribute table

    dumpfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .dmp
                   2KiB
    mem_width    : NES memory width is 8 bits
    rom_name     : string: verilog module name to be created
    dest_path    : path of the verilog file to be created
    clk          : If false creates a combinatorial memory without clock
    """

    if clk==True: # if it has a clock the assignment is <=
        assign = ': dout <= '
    else:
        assign = ': dout  = '


    filemem_length = os.stat(dumpfilename).st_size # number of memory positions
    mem_length = 2048   
    attrmem_length = 128 # 2x64

    numbits_addr = math.ceil(math.log(attrmem_length,2))
    hexdig_addr = math.ceil(numbits_addr/4) # how manyhex digits has the address

    if os.path.isfile(dumpfilename) and (mem_length == filemem_length):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vrlfilename = dest_path + basefilename + "_attr.v"
        vrlfile = open(vrlfilename, 'w')
        # write the header
        write_vrl_header (vrlfile, 3, rom_name, # 3 Attribute table
                          filename,attrmem_length,mem_width, clk=clk)
        vrlfile.write('                               //  address:   value \n' )
        vrlfile.write('                               //    dec  : dec - hex\n')
        with open(dumpfilename,"rb") as nametablefile:
            mem_addr = 0;
            attrmem_addr = 0;
            while (byte_str := nametablefile.read(1)): 
                if ((mem_addr >= 960 and mem_addr < 1024) or
                    (mem_addr >= 960 + 1024)) :
                    byte = ord(byte_str) #gets the unicode character

                    byte_bin_str = (format(byte,'b')).zfill(mem_width)

                    vrlfile.write("      " + str(numbits_addr))
                    vrlfile.write("'h"+format(attrmem_addr,'X'))
                    vrlfile.write(assign + str(mem_width) + "'b" +byte_bin_str)

                    # to have the address in dec and hex, and the values
                    vrlfile.write('; //' + str(attrmem_addr).rjust(5) + ' : ' )
                    vrlfile.write(str(byte).rjust(3)+' - ')
                    vrlfile.write(hex(byte).rjust(3))
                    vrlfile.write('\n')

                    attrmem_addr += 1;
                mem_addr += 1

            vrlfile.write('    endcase\n')
            vrlfile.write('  end\n\n')
            vrlfile.write('endmodule\n')

        vrlfile.close()
        nametablefile.close()
            



def patterntable2vrlsplit (dumpfilename,
                           mem_width=8,
                           rom_name = "ROM_PTABLE",
                           dest_path = './',
                           clk = True):
              
    """
    Takes a binary memory dump file of a NES Patter Tables
      https://wiki.nesdev.com/w/index.php/PPU_pattern_tables
      Both Sprites and Background
      Separates into 2 tables for each plane

        2 Tables (sprites and background):  1 bit
      256 patterns                       :  8 bits
        2 color planes                   :  1 bit
        8 rows                           :  3 bit
     -----------------------------------------------
     8192 total memory                   : 13 bits

     Divided into 2 memories of 4096 addresses -> 12 bits


    dumpfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .dmp
                   8KiB
    mem_width    : NES memory width is 8 bits
    rom_name     : string: verilog module name to be created
    dest_path    : path of the verilog file to be created
    clk          : If false creates a combinatorial memory without clock
    """

    if clk==True:
        assign = ': dout <= '
    else:
        assign = ': dout  = '



    mem_length = os.stat(dumpfilename).st_size # number of memory positions
    # mem_length divided by 2, because planes are divided
    numbits_addr = math.ceil(math.log(mem_length/2,2))
    hexdig_addr = math.ceil(numbits_addr/4) # how manyhex digits has the address
    # it has the background and the sprites pattern table, 4KiB each
    # 8192 positions 2**13 -> 0x2000
    if os.path.isfile(dumpfilename) and (mem_length == 2**13):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        # 2 color maps (memories)
        vrlfilename0 = dest_path + basefilename + "_0.v"
        vrlfilename1 = dest_path + basefilename + "_1.v"
        vrlfile0 = open(vrlfilename0, 'w')
        vrlfile1 = open(vrlfilename1, 'w')
        # write the header
        # nesmemtype = 1 #pattern table
        rom_name0 = rom_name + '_color0'
        rom_name1 = rom_name + '_color1'
        # divide into 2 memories: mem_length/2
        write_vrl_header (vrlfile    = vrlfile0,
                          nesmemtype = 2, 
                          modulename = rom_name0,
                          orig_name  = filename,
                          mem_length = int(mem_length/2),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vrl_header (vrlfile    = vrlfile1,
                          nesmemtype = 2,
                          modulename = rom_name1,
                          orig_name  = filename,
                          mem_length = int(mem_length/2),
                          mem_width  = mem_width,
                          clk        = clk)

        vrlfile0.write('                              //  address:   value \n' )
        vrlfile1.write('                              //  address:   value \n' )
        vrlfile0.write('                              //    dec  : dec - hex\n')
        vrlfile1.write('                              //    dec  : dec - hex\n')

        with open(dumpfilename,"rb") as pttablefile:
            # the 8192 memory positions divided by 16
            #    8 rows with 2 planes
            for table, pkind in zip([0,1],['Sprite','Background']):
                 # 0,2: 2 tables: sprites + background
                vrlfile0.write('          // ' + pkind + ' pattern Table\n')
                vrlfile1.write('          // ' + pkind + ' pattern Table\n')
                # for range doesnt take the last one: 0 to 255
                for pat in range(0, 256): # 256 patterns (in python the last one
                    # is not taken
                    # 2 color planes
                    for pi, vrlfile in zip([0,1],[vrlfile0, vrlfile1]):
                        for row in range(0, 8):  # 0 to 7: 8 rows, range 
                            addr = table*2048 + pat*8 + row
                            byte_str = pttablefile.read(1)
                            byte = ord(byte_str) #gets the unicode character
                            byte_bin_str = (format(byte,'b')).zfill(8)

                            vrlfile.write("      " + str(numbits_addr))
                            vrlfile.write("'h"+format(addr,'X'))
                            vrlfile.write(assign + str(mem_width) + "'b" +byte_bin_str)

                            # to have the address in dec and hex, and the values
                            vrlfile.write('; //' + str(addr).rjust(5) + ' : ' )
                            vrlfile.write(str(byte).rjust(3)+' - ')
                            vrlfile.write(hex(byte).rjust(3))
                            if row == 0:
                                vrlfile.write(' -- ' + pkind + ' ' + hex(pat))
                            vrlfile.write('\n')
            for vrlfile in [vrlfile0, vrlfile1]:
                vrlfile.write('    endcase\n')
                vrlfile.write('  end\n\n')
                vrlfile.write('endmodule\n')

        vrlfile0.close()
        vrlfile1.close()
        pttablefile.close()




def patterntable2vrlsplit_spr_bg (dumpfilename,
                            mem_width=8,
                            rom_name = "ROM_PTABLE",
                            dest_path = './',
                            clk = True):
              
    """
    Takes a binary memory dump file of a NES Patter Tables
      https://wiki.nesdev.com/w/index.php/PPU_pattern_tables
      Both Sprites and Background
      Separates Sprites and background into 2 tables 
      color planes are kept in the same table

        2 Tables (sprites and background):  1 bit
      256 patterns                       :  8 bits
        2 color planes                   :  1 bit
        8 rows                           :  3 bit
     -----------------------------------------------
     8192 total memory                   : 13 bits

     Divided into 2 memories of 4096 addresses -> 12 bits


    dumpfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .dmp
                   8KiB
    mem_width    : NES memory width is 8 bits
    rom_name     : string: verilog module name to be created
    dest_path    : path of the verilog file to be created
    clk          : If false creates a combinatorial memory without clock
    """

    if clk==True:
        assign = ': dout <= '
    else:
        assign = ': dout  = '


    mem_length = os.stat(dumpfilename).st_size # number of memory positions
    # divided by 2
    numbits_addr = math.ceil(math.log(mem_length/2,2))
    hexdig_addr = math.ceil(numbits_addr/4) # how manyhex digits has the address
    # it has the background and the sprites pattern table, 4KiB each
    # 8192 positions 2**13 -> 0x2000
    if os.path.isfile(dumpfilename) and (mem_length == 2**13):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vrlfilename_spr = dest_path + basefilename + "spr.v"
        vrlfilename_bg = dest_path + basefilename + "bg.v"
        vrlfile_spr = open(vrlfilename_spr, 'w')
        vrlfile_bg = open(vrlfilename_bg, 'w')
        # write the header
        # nesmemtype = 1 #pattern table
        rom_name_spr = rom_name + '_SPR'
        rom_name_bg = rom_name + '_BG'
        vrlfile_spr.write('//-   Sprites Pattern table BOTH COLOR PLANES\n')
        vrlfile_spr.write('// https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        vrlfile_bg.write('//-   Background Pattern table BOTH COLOR PLANES\n')
        vrlfile_bg.write('// https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        # divide into 2 memories: mem_length/2
        write_vrl_header (vrlfile    = vrlfile_spr,
                          nesmemtype = -1, # not defined
                          modulename = rom_name_spr,
                          orig_name  = filename,
                          mem_length = int(mem_length/2),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vrl_header (vrlfile    = vrlfile_bg,
                          nesmemtype = -1, 
                          modulename = rom_name_bg,
                          orig_name  = filename,
                          mem_length = int(mem_length/2),
                          mem_width  = mem_width,
                          clk        = clk)

        vrlfile_spr.write('                               //  address:   value \n' )
        vrlfile_spr.write('                               //    dec  : dec - hex\n')
        vrlfile_bg.write('                               //  address:   value \n' )
        vrlfile_bg.write('                               //    dec  : dec - hex\n')

        with open(dumpfilename,"rb") as pttablefile:
            # the 8192 memory positions divided by 16
            #    8 rows with 2 planes and Sprites and Background
            # this first for is for dividing into Sprites and Background
            for table, pkind, vrlfile in zip(
                  [0,1],
                  ['Sprite','Background'],
                  [vrlfile_spr, vrlfile_bg]):
                 # 0,2: 2 tables: sprites + background
                vrlfile.write('          // ')
                vrlfile.write(pkind + ' pattern Table both color planes\n')
                # for range doesnt take the last one: 0 to 255
                for pat in range(0, 256): # 256 patterns (in python the last one
                    # is not taken
                    # 2 color planes
                    for pi in [0,1]:
                        for row in range(0, 8):  # 0 to 7: 8 rows, range 
                            addr = pat*16 + pi*8 + row
                            byte_str = pttablefile.read(1)
                            byte = ord(byte_str) #gets the unicode character
                            byte_bin_str = (format(byte,'b')).zfill(8)

                            vrlfile.write("      " + str(numbits_addr))
                            vrlfile.write("'h"+format(addr,'X'))
                            vrlfile.write(assign + str(mem_width) + "'b" +byte_bin_str)

                            # to have the address in dec and hex, and the values
                            vrlfile.write('; //' + str(addr).rjust(5) + ' : ' )
                            vrlfile.write(str(byte).rjust(3)+' - ')
                            vrlfile.write(hex(byte).rjust(3))


                            if row == 0:
                                if pi == 0:
                                    vrlfile.write(' -- ' +pkind+ ' ' + hex(pat))
                                else:
                                    vrlfile.write(' -- plane 1')
                            vrlfile.write('\n')
            for vrlfile in [vrlfile_spr, vrlfile_bg]:

                vrlfile.write('    endcase\n')
                vrlfile.write('  end\n\n')
                vrlfile.write('endmodule\n')
                vrlfile.close()
        pttablefile.close()




def patterntable2vrlsplit2 (dumpfilename,
                            mem_width=8,
                            rom_name = "ROM_PTABLE",
                            dest_path = './',
                            clk = True):
              
    """
    Takes a binary memory dump file of a NES Patter Tables
      https://wiki.nesdev.com/w/index.php/PPU_pattern_tables
      Both Sprites and Background
      Separates into 4 tables for each plane and for sprites and background
      and also separates the table for sprites and 

        2 Tables (sprites and background):  1 bit
      256 patterns                       :  8 bits
        2 color planes                   :  1 bit
        8 rows                           :  3 bit
     -----------------------------------------------
     8192 total memory                   : 13 bits

     Divided into 4 memories of 2048 addresses -> 11 bits


    dumpfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .dmp
                   8KiB
    mem_width    : NES memory width is 8 bits
    rom_name     : string: verilog module name to be created
    dest_path    : path of the verilog file to be created
    clk          : If false creates a combinatorial memory without clock
    """

    if clk==True:
        assign = ': dout <= '
    else:
        assign = ': dout  = '


    mem_length = os.stat(dumpfilename).st_size # number of memory positions
    # divided by 4
    numbits_addr = math.ceil(math.log(mem_length/4,2))
    hexdig_addr = math.ceil(numbits_addr/4) # how manyhex digits has the 
    # it has the background and the sprites pattern table, 4KiB each
    # 8192 positions 2**13 -> 0x2000
    if os.path.isfile(dumpfilename) and (mem_length == 2**13):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        # 2 color maps (memories) and for sprites (spr) and background (bg)
        vrlfilename_spr0 = dest_path + basefilename + "spr_0.v"
        vrlfilename_spr1 = dest_path + basefilename + "spr_1.v"
        vrlfilename_bg0 = dest_path + basefilename + "bg_0.v"
        vrlfilename_bg1 = dest_path + basefilename + "bg_1.v"
        vrlfile_spr0 = open(vrlfilename_spr0, 'w')
        vrlfile_spr1 = open(vrlfilename_spr1, 'w')
        vrlfile_bg0 = open(vrlfilename_bg0, 'w')
        vrlfile_bg1 = open(vrlfilename_bg1, 'w')
        # write the header
        # nesmemtype = 1 #pattern table
        rom_name_spr0 = rom_name + '_SPR_PLN0'
        rom_name_spr1 = rom_name + '_SPR_PLN1'
        rom_name_bg0 = rom_name + '_BG_PLN0'
        rom_name_bg1 = rom_name + '_BG_PLN1'
        vrlfile_spr0.write('//-   Sprites Pattern table COLOR PLANE 0\n')
        vrlfile_spr0.write('// https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        vrlfile_spr1.write('//-   Sprites Pattern table COLOR PLANE 1\n')
        vrlfile_spr1.write('// https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        vrlfile_bg0.write('//-   Background Pattern table COLOR PLANE 0\n')
        vrlfile_bg0.write('// https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        vrlfile_bg1.write('//-   Background Pattern table COLOR PLANE 1\n')
        vrlfile_bg1.write('// https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        # divide into 4 memories: mem_length/4
        write_vrl_header (vrlfile    = vrlfile_spr0,
                          nesmemtype = -1, 
                          modulename = rom_name_spr0,
                          orig_name  = filename,
                          mem_length = int(mem_length/4),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vrl_header (vrlfile    = vrlfile_spr1,
                          nesmemtype = -1,
                          modulename = rom_name_spr1,
                          orig_name  = filename,
                          mem_length = int(mem_length/4),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vrl_header (vrlfile    = vrlfile_bg0,
                          nesmemtype = -1, 
                          modulename = rom_name_bg0,
                          orig_name  = filename,
                          mem_length = int(mem_length/4),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vrl_header (vrlfile    = vrlfile_bg1,
                          nesmemtype = -1,
                          modulename = rom_name_bg1,
                          orig_name  = filename,
                          mem_length = int(mem_length/4),
                          mem_width  = mem_width,
                          clk        = clk)

        vrlfile_spr0.write('                               //  address:   value \n' )
        vrlfile_spr0.write('                               //    dec  : dec - hex\n')
        vrlfile_spr1.write('                               //  address:   value \n' )
        vrlfile_spr1.write('                               //    dec  : dec - hex\n')
        vrlfile_bg0.write('                               //  address:   value \n' )
        vrlfile_bg0.write('                               //    dec  : dec - hex\n')
        vrlfile_bg1.write('                               //  address:   value \n' )
        vrlfile_bg1.write('                               //    dec  : dec - hex\n')


        with open(dumpfilename,"rb") as pttablefile:
            # the 8192 memory positions divided by 16
            #    8 rows with 2 planes and Sprites and Background
            # this first for is for dividing into Sprites and Background
            for table, pkind, (vrlfile0,vrlfile1) in zip(
                  [0,1],
                  ['Sprite','Background'],
                  [[vrlfile_spr0,vrlfile_spr1],[vrlfile_bg0, vrlfile_bg1]]):
                 # 0,2: 2 tables: sprites + background
                vrlfile0.write('          // ')
                vrlfile0.write(pkind + ' pattern Table COLOR PLANE 0\n')
                vrlfile1.write('          // ')
                vrlfile1.write(pkind + ' pattern Table COLOR PLANE 1\n')
                # for range doesnt take the last one: 0 to 255
                for pat in range(0, 256): # 256 patterns (in python the last one
                    # is not taken
                    # 2 color planes
                    for pi, vrlfile in zip([0,1],[vrlfile0, vrlfile1]):
                        for row in range(0, 8):  # 0 to 7: 8 rows, range 
                            addr = pat*8 + row
                            byte_str = pttablefile.read(1)
                            byte = ord(byte_str) #gets the unicode character
                            byte_bin_str = (format(byte,'b')).zfill(8)

                            vrlfile.write("      " + str(numbits_addr))
                            vrlfile.write("'h"+format(addr,'X'))
                            vrlfile.write(assign + str(mem_width) + "'b" +byte_bin_str)

                            # to have the address in dec and hex, and the values
                            vrlfile.write('; //' + str(addr).rjust(5) + ' : ' )
                            vrlfile.write(str(byte).rjust(3)+' - ')
                            vrlfile.write(hex(byte).rjust(3))

                            if row == 0:
                                vrlfile.write(' -- ' + pkind + ' ' + hex(pat))
                            vrlfile.write('\n')
            for vrlfile in [vrlfile_spr0, vrlfile_spr1,
                            vrlfile_bg0,  vrlfile_bg1]:
                vrlfile.write('    endcase\n')
                vrlfile.write('  end\n\n')
                vrlfile.write('endmodule\n')

                vrlfile.close()
        pttablefile.close()



def palcolor2vrl (palfilename,
                  mem_width=12,
                  rom_name = "ROM_COLORS",
                  dest_path = './',
                  clk = True):
    """
    Takes a binary palette file and converts to verilog ROM

    palfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .pal
                   64 colors x 3 (RGB)
                   192 bytes
    mem_width    : memory width is 12 bits (4x3) can be different
    rom_name     : string: verilog module name to be created
    dest_path    : path of the verilog file to be created
    clk          : If false creates a combinatorial memory without clock
    """


    filemem_length = os.stat(palfilename).st_size # number of memory positions
    mem_length = 192   

    if clk==True:
        assign = ': dout <= '
    else:
        assign = ': dout  = '

    numbits_addr = math.ceil(math.log(mem_length,2))
    hexdig_addr = math.ceil(numbits_addr/4) # how manyhex digits has the address

    if os.path.isfile(palfilename) and (mem_length == filemem_length):
        filename = os.path.split(palfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vrlfilename = dest_path + basefilename + "_colors.v"
        vrlfile = open(vrlfilename, 'w')
        # write the header
        write_vrl_header (vrlfile, 5, rom_name, # 3 ROM COLORS
                          filename,64,mem_width, clk=clk)
        vrlfile.write('                                     //  address:   value \n' )
        vrlfile.write('                                     //    dec  : dec - hex(RGB)\n')

        with open(palfilename,"rb") as palfile:
            pal_filebyte = 0;
            color = 0;
            mem_addr = 0;
            while (byte_str := palfile.read(1)): 
                if color == 0:  # First byte: RED
                    byte = ord(byte_str) #gets the unicode character
                    nibble_red = int(byte/16); #get only four bits
                    color = 1 #next will be green
                elif color == 1: # Second byte: GREEN
                    byte = ord(byte_str) #gets the unicode character
                    nibble_green = int(byte/16); #get only four bits
                    color = 2 #next will be blue
                elif color == 2: # Third byte: BLUE
                    byte = ord(byte_str) #gets the unicode character
                    nibble_blue = int(byte/16); #get only four bits
                    color = 0 #next back to green

                    color12bits = nibble_red*256 + nibble_green*16 + nibble_blue

                    color_bin_str = (format(color12bits,'b')).zfill(12)

                    vrlfile.write("      " + str(numbits_addr))
                    vrlfile.write("'h"+format(mem_addr,'X'))
                    vrlfile.write(assign + str(mem_width) + "'b" +color_bin_str)

                    # to have the address in dec and hex, and the values
                    vrlfile.write('; //' + str(mem_addr).rjust(5) + ' : ' )
                    vrlfile.write(str(color12bits).rjust(4)+' - ')
                    #vrlfile.write(hex(color12bits).rjust(5))
                    vrlfile.write('0x{0:0{1}X}'.format(color12bits,3))


                    vrlfile.write('\n')
                    mem_addr += 1;
                pal_filebyte += 1
            vrlfile.write('    endcase\n')
            vrlfile.write('  end\n\n')
            vrlfile.write('endmodule\n')

        vrlfile.close()
        palfile.close()

