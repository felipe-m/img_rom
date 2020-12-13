import os
import math

# exec(open("./nesmem2vhd.py").read())


def write_vhd_header (vhdfile, nesmemtype, entityname, orig_name, mem_length, mem_width, halfnametable= False, clk=True):
    """
    Writes the header of the VHDL file

    vhdfile     : text file to be written
    nesmemtype  : memory type
                   0: Name Table
                   1: Pattern Table
                   2: Pattern Table with only one color plane
                   3: Attribute Table (separate from Name table)
                   4: Palette Memory
                   5: Palette Colors
                   6: OAM: Object Attribute Memory: for sprites
    entityname  : string with the entity name
    origname    : string with the original memory dump file name
    mem_length  : number of memory positions
    mem_width   : number of bits of each memory position
    halfnametable: only for Name Tables Memories: if true only takes the first
                  KiB, thus, only the first nametable
    clk         : If false creates a combinatorial memory without clock

    """

    vhdfile.write('--- Autcmatically generated VHDL ROM from a NES memory file----\n')
    if nesmemtype == 0:  # Name Table
        vhdfile.write('---   NAME TABLE\n')
        vhdfile.write('-- https://wiki.nesdev.com/w/index.php/PPU_nametables\n')
        if halfnametable == True:
            vhdfile.write('--- Only the first Name Table: 1KiB\n')
            mem_length = 1024
    elif nesmemtype == 1:  # Pattern Table (normal)
        vhdfile.write('---   PATTERN TABLE\n')
        vhdfile.write('-- https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
    elif nesmemtype == 2:  # Pattern Table (separated plane colors)
        vhdfile.write('---   PATTERN TABLE WITH ONLY ONE COLOR PLANE\n')
        vhdfile.write('-- https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
    elif nesmemtype == 3:  # Atribute Table (separated from Name Table)
        vhdfile.write('---   ATTRIBUTE TABLE SEPARATED FROM NAME TABLE\n')
        vhdfile.write('-- https://wiki.nesdev.com/w/index.php/PPU_attribute_tables\n')
    elif nesmemtype == 4:  # Palette Memory
        vhdfile.write('---   PALETTE MEMORY\n')
        vhdfile.write('-- https://wiki.nesdev.com/w/index.php/PPU_palettes\n')
    # palette colores is not done here
    elif nesmemtype == 6:  # OAM: sprite memory
        vhdfile.write('---   SPRITEs MEMORY (OAM)\n')
        vhdfile.write('-- https://wiki.nesdev.com/w/index.php/PPU_OAM\n')
    # there are other types (background and sprites pattern tables separated)
    # but in these cases this header will be written on the calling function

    numbits_addr = math.ceil(math.log(mem_length,2))
    vhdfile.write('\n')
    vhdfile.write('\n')
    vhdfile.write('---  Original memory dump file name: ' + orig_name + ' --\n')
    vhdfile.write('------ Felipe Machado -----------------------------------\n')
    vhdfile.write('------ Area de Tecnologia Electronica -----------\n')
    vhdfile.write('------ Universidad Rey Juan Carlos ----------------------\n')
    vhdfile.write('------ https://github.com/felipe-m ----------------------\n')
    vhdfile.write('---------------------------------------------------------\n')

    if clk==True:
        vhdfile.write('----- Memory with clock ------\n')
        # empty text, so no comment
        clkcmt =''
    else:
        vhdfile.write('----- Memory without clock -----\n')
        # commented clk sentence
        clkcmt ='--'
    
    vhdfile.write('\n')
    vhdfile.write('----- Ports ---------------------------------------------\n')
    vhdfile.write('-- Inputs   ---------------------------------------------\n')
    vhdfile.write('--   ' + clkcmt + ' clk  :  clock signal\n')
    vhdfile.write('--    addr :  memory address\n')
    vhdfile.write('-- Salidas  ---------------------------------------------\n')
    vhdfile.write('--    dout :  memory data out ')
    if clk==True:
        vhdfile.write(' (a clock cycle later)\n')
    else:
        vhdfile.write(' (no clock: in the same clock cycle)\n')
    vhdfile.write('\n\n')
    vhdfile.write('library IEEE;\n')
    vhdfile.write('  use IEEE.STD_LOGIC_1164.ALL;\n')
    vhdfile.write('  use IEEE.NUMERIC_STD.ALL;\n')
    vhdfile.write('\n\n')
    vhdfile.write('entity ' + entityname + ' is\n')
    vhdfile.write('  port (\n')
    vhdfile.write('    ' + clkcmt + 'clk  : in  std_logic;   -- clock\n')
    vhdfile.write('    addr : in  std_logic_vector(' + str(numbits_addr) +
                  '-1 downto 0);  --' + str(mem_length) + ' memory positions\n')
    vhdfile.write('    dout : out std_logic_vector(' + str(mem_width) +
                  '-1 downto 0) -- memory data width\n')
    vhdfile.write('  );\n')
    vhdfile.write('end ' + entityname +';')
    vhdfile.write('\n\n')
    vhdfile.write('architecture BEHAVIORAL of ' + entityname +' is\n')
    vhdfile.write('  signal addr_int  : natural range 0 to 2**' + str(numbits_addr) + '-1;\n')
    vhdfile.write('  type memostruct is array (natural range<>) of std_logic_vector('+ str(mem_width) +'-1 downto 0);\n');
    vhdfile.write('  constant table_mem : memostruct := (\n');



def nesmem2vhd (dumpfilename,
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
                      not used here but in nesmem2vhdattr
                   3: Attribute Table (separate from Name table)
                   4: Palette Memory
                   5: Palette Colors -- Not used here but in palcolor2vhd
                   6: OAM: Object Attribute Memory: for sprites
    mem_width    : NES memory width is 8 bits
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
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
        # empty text, so no comment
        clkcmt =''
    else:
        # commented clk sentence
        clkcmt ='--'

    if (os.path.isfile(dumpfilename) and 
                                         # *2 in case of half table
        ((mem_length == filemem_length) or (2*mem_length == filemem_length))):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        if nesmemtype == 0 and halfnametable == True:
            vhdfilename = dest_path + basefilename + "_nt0.vhd"
        else:
            vhdfilename = dest_path + basefilename + ".vhd"
        vhdfile = open(vhdfilename, 'w')
        # write the header
        write_vhd_header (vhdfile, nesmemtype, rom_name,
                          filename,mem_length,mem_width,halfnametable, clk)
        vhdfile.write('                --    address   :    value \n' )
        vhdfile.write('                --  dec -  hex  :  dec - hex\n')
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
                        vhdfile.write('     ------- Name Table ')
                        vhdfile.write(str(int(mem_addr/1024))+'---------\n')
                    elif ((mem_addr == 960) or (mem_addr == 960+1024)):
                        # to indicate when the attribute table starts
                        vhdfile.write('        ---- Attribute Table ')
                        vhdfile.write(str(int(mem_addr/1024))+'----\n')
                # to indicate when we are in Sprites 0 and Background
                elif nesmemtype == 1: # Pattern Table
                    if (mem_addr % 4096 == 0 ): # just 0 and 4096
                        vhdfile.write('          -- Pattern Table ')
                        vhdfile.write(str(int(mem_addr/4096))+'---------\n')

                #byte_num = int.from_bytes(byte_str)
                byte_bin_str = (format(byte,'b')).zfill(8)
                vhdfile.write('    "' + byte_bin_str + '"')
                if mem_addr < mem_length-1 :
                    vhdfile.write(',')  # the last one dont have comma
                else:
                    vhdfile.write(' ') #space

                # to have the address in dec and hex, and the values
                #vhdfile.write(' --' + str(mem_addr) + ' : ' + str(byte)+'\n')
                vhdfile.write(' --' + str(mem_addr).rjust(5) + ' - ' )
                vhdfile.write(hex(mem_addr).rjust(4) + '  :  ')
                vhdfile.write(str(byte).rjust(3)+' - ')
                vhdfile.write(hex(byte).rjust(3))
                # to indicate the line number
                if nesmemtype == 0: # Name Table
                    if mem_addr < 960:
                        if (mem_addr % 32 == 0 ): # each 32 there is a new line
                            vhdfile.write(' -- line ')
                            vhdfile.write(hex(int(mem_addr/32)))
                    elif mem_addr>=1024 and mem_addr < (960+1024):
                        if (mem_addr-1024) % 32 == 0: # new line
                            vhdfile.write(' -- line ')
                            vhdfile.write(hex(int((mem_addr-1024)/32)))
                # to indicate the pattern number
                elif nesmemtype == 1: # Pattern Table
                    if (mem_addr % 16 == 0 ): # each 16 there is a pattern 
                        if (mem_addr < 4096):
                            vhdfile.write(' -- Sprite ')
                            vhdfile.write(hex(int(mem_addr/16)))
                        else: # background patterns
                            vhdfile.write(' -- Background ')
                            vhdfile.write(hex(int((mem_addr-4096)/16)))
                # to indicate the sprite number
                elif nesmemtype == 6:
                    if (mem_addr % 4 == 0 ): # each 16 there is a pattern 
                        vhdfile.write(' -- Sprite ')
                        vhdfile.write(hex(int(mem_addr/4)))
                vhdfile.write('\n')
                mem_addr += 1
                if mem_addr >= mem_length:
                   break; # the case of one name table
            vhdfile.write('    );\n')
            vhdfile.write('begin\n')
            vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')

            vhdfile.write('  ' + clkcmt + 'P_ROM: process(clk)\n')
            vhdfile.write('  ' + clkcmt + 'begin\n')
            vhdfile.write("  " + clkcmt + "  if clk'event and clk='1' then\n")
            vhdfile.write('      dout <= table_mem(addr_int);\n')
            vhdfile.write('  ' + clkcmt + '  end if;\n')
            vhdfile.write('  ' + clkcmt + 'end process;\n')

            vhdfile.write('end BEHAVIORAL;\n')
        vhdfile.close()
        nametablefile.close()
            



def nesmem2vhdattr (dumpfilename,
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
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
    clk          : If false creates a combinatorial memory without clock
    """

    if clk==True:
        # empty text, so no comment
        clkcmt =''
    else:
        # commented clk sentence
        clkcmt ='--'

    filemem_length = os.stat(dumpfilename).st_size # number of memory positions
    mem_length = 2048   
    attrmem_length = 128 # 2x64

    if os.path.isfile(dumpfilename) and (mem_length == filemem_length):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vhdfilename = dest_path + basefilename + "_attr.vhd"
        vhdfile = open(vhdfilename, 'w')
        # write the header
        write_vhd_header (vhdfile, 3, rom_name, # 3 Attribute table
                          filename,attrmem_length,mem_width, clk=clk)
        vhdfile.write('                --    address   :    value \n' )
        vhdfile.write('                --  dec -  hex  :  dec - hex\n')
        with open(dumpfilename,"rb") as nametablefile:
            mem_addr = 0;
            attrmem_addr = 0;
            while (byte_str := nametablefile.read(1)): 
                if ((mem_addr >= 960 and mem_addr < 1024) or
                    (mem_addr >= 960 + 1024)) :
                    byte = ord(byte_str) #gets the unicode character
                    #byte_num = int.from_bytes(byte_str)
                    byte_bin_str = (format(byte,'b')).zfill(8)
                    vhdfile.write('    "' + byte_bin_str + '"')
                    if mem_addr < mem_length-1 :
                        vhdfile.write(',')  # the last one dont have comma
                    else:
                        vhdfile.write(' ') #space

                    #vhdfile.write(' --' + str(mem_addr)+' : '+str(byte)+'\n')
                    vhdfile.write(' --' + str(attrmem_addr).rjust(5) + ' - ' )
                    vhdfile.write(hex(attrmem_addr).rjust(4) + '  :  ')
                    vhdfile.write(str(byte).rjust(3)+' - ')
                    vhdfile.write(hex(byte).rjust(3)+'\n')
                    attrmem_addr += 1;
                mem_addr += 1
            vhdfile.write('    );\n')
            vhdfile.write('begin\n')
            vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')

            vhdfile.write('  ' + clkcmt + 'P_ROM: process(clk)\n')
            vhdfile.write('  ' + clkcmt + 'begin\n')
            vhdfile.write("  " + clkcmt + "  if clk'event and clk='1' then\n")
            vhdfile.write('      dout <= table_mem(addr_int);\n')
            vhdfile.write('  ' + clkcmt + '  end if;\n')
            vhdfile.write('  ' + clkcmt + 'end process;\n')

            vhdfile.write('end BEHAVIORAL;\n')
        vhdfile.close()
        nametablefile.close()
            


def patterntable2vhdsplit (dumpfilename,
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
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
    clk          : If false creates a combinatorial memory without clock
    """

    if clk==True:
        # empty text, so no comment
        clkcmt =''
    else:
        # commented clk sentence
        clkcmt ='--'

    mem_length = os.stat(dumpfilename).st_size # number of memory positions
    # it has the background and the sprites pattern table, 4KiB each
    # 8192 positions 2**13 -> 0x2000
    if os.path.isfile(dumpfilename) and (mem_length == 2**13):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        # 2 color maps (memories)
        vhdfilename0 = dest_path + basefilename + "_0.vhd"
        vhdfilename1 = dest_path + basefilename + "_1.vhd"
        vhdfile0 = open(vhdfilename0, 'w')
        vhdfile1 = open(vhdfilename1, 'w')
        # write the header
        # nesmemtype = 1 #pattern table
        rom_name0 = rom_name + '_color0'
        rom_name1 = rom_name + '_color1'
        # divide into 2 memories: mem_length/2
        write_vhd_header (vhdfile    = vhdfile0,
                          nesmemtype = 2, 
                          entityname = rom_name0,
                          orig_name  = filename,
                          mem_length = int(mem_length/2),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vhd_header (vhdfile    = vhdfile1,
                          nesmemtype = 2,
                          entityname = rom_name1,
                          orig_name  = filename,
                          mem_length = int(mem_length/2),
                          mem_width  = mem_width,
                          clk        = clk)
        vhdfile0.write('                --    address   :    value \n' )
        vhdfile1.write('                --    address   :    value \n' )
        vhdfile0.write('                --  dec -  hex  :  dec - hex\n')
        vhdfile1.write('                --  dec -  hex  :  dec - hex\n')
        with open(dumpfilename,"rb") as pttablefile:
            # the 8192 memory positions divided by 16
            #    8 rows with 2 planes
            for table, pkind in zip([0,1],['Sprite','Background']):
                 # 0,2: 2 tables: sprites + background
                vhdfile0.write('          -- ' + pkind + ' pattern Table\n')
                vhdfile1.write('          -- ' + pkind + ' pattern Table\n')
                # for range doesnt take the last one: 0 to 255
                for pat in range(0, 256): # 256 patterns (in python the last one
                    # is not taken
                    # 2 color planes
                    for pi, vhdfile in zip([0,1],[vhdfile0, vhdfile1]):
                        for row in range(0, 8):  # 0 to 7: 8 rows, range 
                            addr = table*2048 + pat*8 + row
                            byte_str = pttablefile.read(1)
                            byte = ord(byte_str) #gets the unicode character
                            byte_bin_str = (format(byte,'b')).zfill(8)
                            vhdfile.write('    "' + byte_bin_str + '"')
                            if not(table == 1 and pat == 255 and row == 7):
                                vhdfile.write(',') #the last one dont have comma
                            else:
                                vhdfile.write(' ') #space

                            vhdfile.write(' --' + str(addr).rjust(5) + ' - ' )
                            vhdfile.write(hex(addr).rjust(4) + '  :  ')
                            vhdfile.write(str(byte).rjust(3)+' - ')
                            vhdfile.write(hex(byte).rjust(3))
                            if row == 0:
                                vhdfile.write(' -- ' + pkind + ' ' + hex(pat))
                            vhdfile.write('\n')
            for vhdfile in [vhdfile0, vhdfile1]:
                vhdfile.write('    );\n')
                vhdfile.write('begin\n')
                vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')

                vhdfile.write('  ' + clkcmt + 'P_ROM: process(clk)\n')
                vhdfile.write('  ' + clkcmt + 'begin\n')
                vhdfile.write("  " +clkcmt+ "  if clk'event and clk='1' then\n")
                vhdfile.write('      dout <= table_mem(addr_int);\n')
                vhdfile.write('  ' + clkcmt + '  end if;\n')
                vhdfile.write('  ' + clkcmt + 'end process;\n')

                vhdfile.write('end BEHAVIORAL;\n')
        vhdfile0.close()
        vhdfile1.close()
        pttablefile.close()

def patterntable2vhdsplit_spr_bg (dumpfilename,
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
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
    clk          : If false creates a combinatorial memory without clock
    """

    if clk==True:
        # empty text, so no comment
        clkcmt =''
    else:
        # commented clk sentence
        clkcmt ='--'

    mem_length = os.stat(dumpfilename).st_size # number of memory positions
    # it has the background and the sprites pattern table, 4KiB each
    # 8192 positions 2**13 -> 0x2000
    if os.path.isfile(dumpfilename) and (mem_length == 2**13):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vhdfilename_spr = dest_path + basefilename + "spr.vhd"
        vhdfilename_bg = dest_path + basefilename + "bg.vhd"
        vhdfile_spr = open(vhdfilename_spr, 'w')
        vhdfile_bg = open(vhdfilename_bg, 'w')
        # write the header
        # nesmemtype = 1 #pattern table
        rom_name_spr = rom_name + '_SPR'
        rom_name_bg = rom_name + '_BG'
        vhdfile_spr.write('---   Sprites Pattern table BOTH COLOR PLANES\n')
        vhdfile_spr.write('-- https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        vhdfile_bg.write('---   Background Pattern table BOTH COLOR PLANES\n')
        vhdfile_bg.write('-- https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        # divide into 2 memories: mem_length/2
        write_vhd_header (vhdfile    = vhdfile_spr,
                          nesmemtype = -1, # not defined
                          entityname = rom_name_spr,
                          orig_name  = filename,
                          mem_length = int(mem_length/2),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vhd_header (vhdfile    = vhdfile_bg,
                          nesmemtype = -1, 
                          entityname = rom_name_bg,
                          orig_name  = filename,
                          mem_length = int(mem_length/2),
                          mem_width  = mem_width,
                          clk        = clk)

        vhdfile_spr.write('                --    address   :    value \n' )
        vhdfile_spr.write('                --  dec -  hex  :  dec - hex\n')
        vhdfile_bg.write('                --    address   :    value \n' )
        vhdfile_bg.write('                --  dec -  hex  :  dec - hex\n')

        with open(dumpfilename,"rb") as pttablefile:
            # the 8192 memory positions divided by 16
            #    8 rows with 2 planes and Sprites and Background
            # this first for is for dividing into Sprites and Background
            for table, pkind, vhdfile in zip(
                  [0,1],
                  ['Sprite','Background'],
                  [vhdfile_spr, vhdfile_bg]):
                 # 0,2: 2 tables: sprites + background
                vhdfile.write('          -- ')
                vhdfile.write(pkind + ' pattern Table both color planes\n')
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
                            vhdfile.write('    "' + byte_bin_str + '"')
                            if not(pat == 255 and row == 7 and pi == 1):
                                vhdfile.write(',') #the last one dont have comma
                            else:
                                vhdfile.write(' ') #space

                            vhdfile.write(' --' + str(addr).rjust(5) + ' - ' )
                            vhdfile.write(hex(addr).rjust(4) + '  :  ')
                            vhdfile.write(str(byte).rjust(3)+' - ')
                            vhdfile.write(hex(byte).rjust(3))
                            if row == 0:
                                if pi == 0:
                                    vhdfile.write(' -- ' +pkind+ ' ' + hex(pat))
                                else:
                                    vhdfile.write(' -- plane 1')
                            vhdfile.write('\n')
            for vhdfile in [vhdfile_spr, vhdfile_bg]:
                vhdfile.write('    );\n')
                vhdfile.write('begin\n')
                vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')

                vhdfile.write('  ' + clkcmt + 'P_ROM: process(clk)\n')
                vhdfile.write('  ' + clkcmt + 'begin\n')
                vhdfile.write("  " +clkcmt+ "  if clk'event and clk='1' then\n")
                vhdfile.write('      dout <= table_mem(addr_int);\n')
                vhdfile.write('  ' + clkcmt + '  end if;\n')
                vhdfile.write('  ' + clkcmt + 'end process;\n')

                vhdfile.write('end BEHAVIORAL;\n')
                vhdfile.close()
        pttablefile.close()



def patterntable2vhdsplit2 (dumpfilename,
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
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
    clk          : If false creates a combinatorial memory without clock
    """

    if clk==True:
        # empty text, so no comment
        clkcmt =''
    else:
        # commented clk sentence
        clkcmt ='--'

    mem_length = os.stat(dumpfilename).st_size # number of memory positions
    # it has the background and the sprites pattern table, 4KiB each
    # 8192 positions 2**13 -> 0x2000
    if os.path.isfile(dumpfilename) and (mem_length == 2**13):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        # 2 color maps (memories) and for sprites (spr) and background (bg)
        vhdfilename_spr0 = dest_path + basefilename + "spr_0.vhd"
        vhdfilename_spr1 = dest_path + basefilename + "spr_1.vhd"
        vhdfilename_bg0 = dest_path + basefilename + "bg_0.vhd"
        vhdfilename_bg1 = dest_path + basefilename + "bg_1.vhd"
        vhdfile_spr0 = open(vhdfilename_spr0, 'w')
        vhdfile_spr1 = open(vhdfilename_spr1, 'w')
        vhdfile_bg0 = open(vhdfilename_bg0, 'w')
        vhdfile_bg1 = open(vhdfilename_bg1, 'w')
        # write the header
        # nesmemtype = 1 #pattern table
        rom_name_spr0 = rom_name + '_SPR_PLN0'
        rom_name_spr1 = rom_name + '_SPR_PLN1'
        rom_name_bg0 = rom_name + '_BG_PLN0'
        rom_name_bg1 = rom_name + '_BG_PLN1'
        vhdfile_spr0.write('---   Sprites Pattern table COLOR PLANE 0\n')
        vhdfile_spr0.write('-- https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        vhdfile_spr1.write('---   Sprites Pattern table COLOR PLANE 1\n')
        vhdfile_spr1.write('-- https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        vhdfile_bg0.write('---   Background Pattern table COLOR PLANE 0\n')
        vhdfile_bg0.write('-- https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        vhdfile_bg1.write('---   Background Pattern table COLOR PLANE 1\n')
        vhdfile_bg1.write('-- https://wiki.nesdev.com/w/index.php/PPU_pattern_tables\n')
        # divide into 4 memories: mem_length/4
        write_vhd_header (vhdfile    = vhdfile_spr0,
                          nesmemtype = -1, 
                          entityname = rom_name_spr0,
                          orig_name  = filename,
                          mem_length = int(mem_length/4),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vhd_header (vhdfile    = vhdfile_spr1,
                          nesmemtype = -1,
                          entityname = rom_name_spr1,
                          orig_name  = filename,
                          mem_length = int(mem_length/4),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vhd_header (vhdfile    = vhdfile_bg0,
                          nesmemtype = -1, 
                          entityname = rom_name_bg0,
                          orig_name  = filename,
                          mem_length = int(mem_length/4),
                          mem_width  = mem_width,
                          clk        = clk)
        write_vhd_header (vhdfile    = vhdfile_bg1,
                          nesmemtype = -1,
                          entityname = rom_name_bg1,
                          orig_name  = filename,
                          mem_length = int(mem_length/4),
                          mem_width  = mem_width,
                          clk        = clk)

        vhdfile_spr0.write('                --    address   :    value \n' )
        vhdfile_spr1.write('                --    address   :    value \n' )
        vhdfile_spr0.write('                --  dec -  hex  :  dec - hex\n')
        vhdfile_spr1.write('                --  dec -  hex  :  dec - hex\n')
        vhdfile_bg0.write('                --    address   :    value \n' )
        vhdfile_bg1.write('                --    address   :    value \n' )
        vhdfile_bg0.write('                --  dec -  hex  :  dec - hex\n')
        vhdfile_bg1.write('                --  dec -  hex  :  dec - hex\n')

        with open(dumpfilename,"rb") as pttablefile:
            # the 8192 memory positions divided by 16
            #    8 rows with 2 planes and Sprites and Background
            # this first for is for dividing into Sprites and Background
            for table, pkind, (vhdfile0,vhdfile1) in zip(
                  [0,1],
                  ['Sprite','Background'],
                  [[vhdfile_spr0,vhdfile_spr1],[vhdfile_bg0, vhdfile_bg1]]):
                 # 0,2: 2 tables: sprites + background
                vhdfile0.write('          -- ')
                vhdfile0.write(pkind + ' pattern Table COLOR PLANE 0\n')
                vhdfile1.write('          -- ')
                vhdfile1.write(pkind + ' pattern Table COLOR PLANE 1\n')
                # for range doesnt take the last one: 0 to 255
                for pat in range(0, 256): # 256 patterns (in python the last one
                    # is not taken
                    # 2 color planes
                    for pi, vhdfile in zip([0,1],[vhdfile0, vhdfile1]):
                        for row in range(0, 8):  # 0 to 7: 8 rows, range 
                            addr = pat*8 + row
                            byte_str = pttablefile.read(1)
                            byte = ord(byte_str) #gets the unicode character
                            byte_bin_str = (format(byte,'b')).zfill(8)
                            vhdfile.write('    "' + byte_bin_str + '"')
                            if not(pat == 255 and row == 7):
                                vhdfile.write(',') #the last one dont have comma
                            else:
                                vhdfile.write(' ') #space

                            vhdfile.write(' --' + str(addr).rjust(5) + ' - ' )
                            vhdfile.write(hex(addr).rjust(4) + '  :  ')
                            vhdfile.write(str(byte).rjust(3)+' - ')
                            vhdfile.write(hex(byte).rjust(3))
                            if row == 0:
                                vhdfile.write(' -- ' + pkind + ' ' + hex(pat))
                            vhdfile.write('\n')
            for vhdfile in [vhdfile_spr0, vhdfile_spr1,
                            vhdfile_bg0,  vhdfile_bg1]:
                vhdfile.write('    );\n')
                vhdfile.write('begin\n')
                vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')

                vhdfile.write('  ' + clkcmt + 'P_ROM: process(clk)\n')
                vhdfile.write('  ' + clkcmt + 'begin\n')
                vhdfile.write("  " +clkcmt+ "  if clk'event and clk='1' then\n")
                vhdfile.write('      dout <= table_mem(addr_int);\n')
                vhdfile.write('  ' + clkcmt + '  end if;\n')
                vhdfile.write('  ' + clkcmt + 'end process;\n')

                vhdfile.write('end BEHAVIORAL;\n')
                vhdfile.close()
        pttablefile.close()


def palcolor2vhd (palfilename,
                  mem_width=12,
                  rom_name = "ROM_COLORS",
                  dest_path = './',
                  clk = True):
    """
    Takes a binary palette file and converts to VHDL ROM

    palfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .pal
                   64 colors x 3 (RGB)
                   192 bytes
    mem_width    : memory width is 12 bits (4x3) can be different
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
    clk          : If false creates a combinatorial memory without clock
    """


    filemem_length = os.stat(palfilename).st_size # number of memory positions
    mem_length = 192   

    if clk==True:
        # empty text, so no comment
        clkcmt =''
    else:
        # commented clk sentence
        clkcmt ='--'

    if os.path.isfile(palfilename) and (mem_length == filemem_length):
        filename = os.path.split(palfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vhdfilename = dest_path + basefilename + "_colors.vhd"
        vhdfile = open(vhdfilename, 'w')
        # write the header
        write_vhd_header (vhdfile, 5, rom_name, # 3 ROM COLORS
                          filename,64,mem_width, clk=clk)
        vhdfile.write('                       --    address   :    value \n' )
        vhdfile.write('                       --  dec -  hex  :  dec - hex(RGB)\n')
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
                    vhdfile.write('    "' + color_bin_str + '"')
                    if pal_filebyte < mem_length-1 :
                        vhdfile.write(',')  # the last one dont have comma
                    else:
                        vhdfile.write(' ') #space

                    #vhdfile.write(' --' + str(pal_filebyte)+' : '+str(byte)+'\n')
                    vhdfile.write(' --' + str(mem_addr).rjust(5) + ' - ' )
                    vhdfile.write(hex(mem_addr).rjust(4) + '  :  ')
                    vhdfile.write(str(color12bits).rjust(4)+' - ')
                    vhdfile.write(hex(color12bits).rjust(5)+'\n')
                    mem_addr += 1;
                pal_filebyte += 1
            vhdfile.write('    );\n')
            vhdfile.write('begin\n')
            vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')

            vhdfile.write('  ' + clkcmt + 'P_ROM: process(clk)\n')
            vhdfile.write('  ' + clkcmt + 'begin\n')
            vhdfile.write("  " + clkcmt + "  if clk'event and clk='1' then\n")
            vhdfile.write('      dout <= table_mem(addr_int);\n')
            vhdfile.write('  ' + clkcmt + '  end if;\n')
            vhdfile.write('  ' + clkcmt + 'end process;\n')

            vhdfile.write('end BEHAVIORAL;\n')
        vhdfile.close()
        palfile.close()

"""
nesmem2vhd(dumpfilename = "../examples/dmp/smario_ntable01.dmp",
              nesmemtype = 0, # Name Table
              rom_name = "ROM_NTABLE_SMARIO_01",
              dest_path = "../examples/vhd/nesrom/smario_start/")

nesmem2vhd(dumpfilename = "../examples/dmp/smario_ptable.dmp",
              nesmemtype = 1, # Pattern Table
              rom_name = "ROM_PTABLE_SMARIO",
              dest_path = "../examples/vhd/nesrom/smario_start/")

nesmem2vhd(dumpfilename = "../examples/dmp/smario_oam_02.dmp",
              nesmemtype = 6, # OAM
              rom_name = "ROM_OAM_SMARIO",
              dest_path = "../examples/vhd/nesrom/smario_start/")

# creates attribute table (separated)
nesmem2vhdattr(dumpfilename = "../examples/dmp/smario_ntable01.dmp",
              rom_name = "ROM_ATABLE_SMARIO_01",
              dest_path = "../examples/vhd/nesrom/smario_start/")

nesmem2vhd(dumpfilename = "../examples/dmp/smario_palette.dmp",
              nesmemtype = 4, # Palette Memory
              rom_name = "ROM_PALETTE_SMARIO",
              dest_path = "../examples/vhd/nesrom/smario_start/",
              universal_bgcolor = True)


patterntable2vhdsplit (dumpfilename = "../examples/dmp/smario_ptable.dmp",
                       rom_name = "ROM_PTABLE_SMARIO",
                       dest_path = '../examples/vhd/nesrom/smario_start/')

palcolor2vhd (palfilename = "../examples/dmp/nespalette.pal",
                  mem_width=12,
                  rom_name = "ROM_COLORS",
                  dest_path = '../examples/vhd/nesrom/smario_start/')

"""
