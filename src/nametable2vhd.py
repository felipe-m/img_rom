import os
import math
import struct

# exec(open("./nametable2vhd.py").read())


def write_vhd_header (vhdfile, entityname, orig_name, mem_length, mem_width):
    """
    Writes the header of the VHDL file

    vhdfile     : text file to be written
    entityname  : string with the entity name
    origname    : string with the original memory dump file name
    mem_length  : number of memory positions
    mem_width   : number of bits of each memory position

    """
    numbits_addr = math.ceil(math.log(mem_length))

    vhdfile.write('--- Autcmatically generated VHDL ROM from a NES memory file----\n')
    vhdfile.write('--- Originial memory dump file name: ' + orig_name + ' --\n')
    vhdfile.write('------ Felipe Machado -----------------------------------\n')
    vhdfile.write('------ Area de Tecnologia Electronica -----------\n')
    vhdfile.write('------ Universidad Rey Juan Carlos ----------------------\n')
    vhdfile.write('------ https://github.com/felipe-m ----------------------\n')
    vhdfile.write('---------------------------------------------------------\n')
    vhdfile.write('\n\n\n')
    vhdfile.write('----- Ports ---------------------------------------------\n')
    vhdfile.write('-- Inputs   ---------------------------------------------\n')
    vhdfile.write('--    clk  :  clock signal\n')
    vhdfile.write('--    addr :  memory address\n')
    vhdfile.write('-- Salidas  ---------------------------------------------\n')
    vhdfile.write('--    dout :  memory data out (a clock cycle later)\n')
    vhdfile.write('\n\n')
    vhdfile.write('library IEEE;\n')
    vhdfile.write('  use IEEE.STD_LOGIC_1164.ALL;\n')
    vhdfile.write('  use IEEE.NUMERIC_STD.ALL;\n')
    vhdfile.write('\n\n')
    vhdfile.write('entity ' + entityname + ' is\n')
    vhdfile.write('  port (\n')
    vhdfile.write('    clk  : in  std_logic;   -- clock\n')
    vhdfile.write('    addr : in  std_logic_vector(' + str(numbits_addr) +
                  '-1 downto 0);  --' + str(mem_length) + ' memory positions\n')
    vhdfile.write('    dout : out std_logic_vector(' + str(mem_width) + '-1 downto 0) -- memory data width\n')
    vhdfile.write('  );\n')
    vhdfile.write('end ' + entityname +';')
    vhdfile.write('\n\n')
    vhdfile.write('architecture BEHAVIORAL of ' + entityname +' is\n')
    vhdfile.write('  signal addr_int  : natural range 0 to 2**' + str(numbits_addr) + '-1;\n')
    vhdfile.write('  type memostruct is array (natural range<>) of std_logic_vector('+ str(mem_width) +'-1 downto 0);\n');
    vhdfile.write('  constant nametable_mem : memostruct := (\n');


"""
   dumpfilename : name of the Name Table memory file dump .dmp
              example: smb_ram_nametable_init.dmp supermario bros initial table
"""


def nametable2vhd (dumpfilename,
                   mem_width=8,
                   rom_name = "ROM_NAMETABLE",
                   dest_path = './'):
    """
    Takes a binary memory dump file of a NES Name Table
      https://wiki.nesdev.com/w/index.php/PPU_nametables

    dumpfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .dmp
                   2KiB
    mem_width    : NES memory width is 8 bits
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
    """

              

    mem_length = os.stat(dumpfilename).st_size # number of memory positions
    if os.path.isfile(dumpfilename) and (mem_length == 2048):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vhdfilename = dest_path + basefilename + ".vhd"
        vhdfile = open(vhdfilename, 'w')
        # write the header
        write_vhd_header (vhdfile, rom_name,filename,mem_length, mem_width)
        vhdfile.write('                --    address   :    value \n' )
        vhdfile.write('                --  dec -  hex  :  dec - hex\n')
        with open(dumpfilename,"rb") as nametablefile:
            mem_addr = 0;
            while (byte_str := nametablefile.read(1)): 
                byte = ord(byte_str) #gets the unicode character
                #byte_num = int.from_bytes(byte_str)
                byte_bin_str = (format(byte,'b')).zfill(8)
                vhdfile.write('    "' + byte_bin_str + '"')
                if mem_addr < mem_length-1 :
                    vhdfile.write(',')  # the last one dont have comma

                #vhdfile.write(' --' + str(mem_addr) + ' : ' + str(byte)+'\n')
                vhdfile.write(' --' + str(mem_addr).rjust(5) + ' - ' )
                vhdfile.write(hex(mem_addr).rjust(4) + '  :  ')
                vhdfile.write(str(byte).rjust(3)+' - ')
                vhdfile.write(hex(byte).rjust(3)+'\n')
                mem_addr += 1
            vhdfile.write('    );\n')
            vhdfile.write('begin\n')
            vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')
            vhdfile.write('  P_ROM: process(clk)\n')
            vhdfile.write('  begin\n')
            vhdfile.write("    if clk'event and clk='1' then\n")
            vhdfile.write('      dout <= nametable_mem(addr_int);\n')
            vhdfile.write('    end if;\n')
            vhdfile.write('  end process;\n')
            vhdfile.write('end BEHAVIORAL;\n')
        vhdfile.close()
            
            



def patterntable2vhd (dumpfilename,
                      mem_width=8,
                      rom_name = "ROM_PTABLE",
                      dest_path = './'):
              
    """
    Takes a binary memory dump file of a NES Patter Tables
      https://wiki.nesdev.com/w/index.php/PPU_pattern_tables
      Both Sprites and Background

    dumpfilename : name of the memory dump file (includes path and extension)
                   binary file. File extension usually is .dmp
                   2KiB
    mem_width    : NES memory width is 8 bits
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
    """

    mem_length = os.stat(dumpfilename).st_size # number of memory positions
    # it has the background and the sprites pattern table, 4KiB each
    # 8192 positions 2**13 -> 0x2000
    if os.path.isfile(dumpfilename) and (mem_length == 2**13):
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vhdfilename = dest_path + basefilename + ".vhd"
        vhdfile = open(vhdfilename, 'w')
        # write the header
        write_vhd_header (vhdfile, rom_name,filename,mem_length, mem_width)
        vhdfile.write('                --    address   :    value \n' )
        vhdfile.write('                --  dec -  hex  :  dec - hex\n')
        with open(dumpfilename,"rb") as pttablefile:
            mem_addr = 0;
            while (byte_str := pttablefile.read(1)): 
                byte = ord(byte_str) #gets the unicode character
                #byte_num = int.from_bytes(byte_str)
                byte_bin_str = (format(byte,'b')).zfill(8)
                vhdfile.write('    "' + byte_bin_str + '"')
                if mem_addr < mem_length-1 :
                    vhdfile.write(',')  # the last one dont have comma

                #vhdfile.write(' --' + str(mem_addr) + ' : ' + str(byte)+'\n')
                vhdfile.write(' --' + str(mem_addr).rjust(5) + ' - ' )
                vhdfile.write(hex(mem_addr).rjust(4) + '  :  ')
                vhdfile.write(str(byte).rjust(3)+' - ')
                vhdfile.write(hex(byte).rjust(3)+'\n')
                mem_addr += 1
            vhdfile.write('    );\n')
            vhdfile.write('begin\n')
            vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')
            vhdfile.write('  P_ROM: process(clk)\n')
            vhdfile.write('  begin\n')
            vhdfile.write("    if clk'event and clk='1' then\n")
            vhdfile.write('      dout <= nametable_mem(addr_int);\n')
            vhdfile.write('    end if;\n')
            vhdfile.write('  end process;\n')
            vhdfile.write('end BEHAVIORAL;\n')
        vhdfile.close()


nametable2vhd(dumpfilename = "../examples/dmp/smario_ntable01.dmp",
              rom_name = "ROM_NTABLE_SMARIO_01",
              dest_path = "../examples/vhd/nametables/")

patterntable2vhd(dumpfilename = "../examples/dmp/smario_ptable.dmp",
              rom_name = "ROM_PTABLE_SMARIO",
              dest_path = "../examples/vhd/patterntables/")

