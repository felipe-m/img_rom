import os
import math

# exec(open("./rvinstr2vhd.py").read())


def write_vhd_header (vhdfile,    origfiletype, entityname, orig_name,
                      mem_length, mem_width=32, clk=True):
    """
    Writes the header of the VHDL file

    vhdfile     : text file to be written
    origfiletype: It can be binary, or text, in case of text can be with comment
                  Depending on the dump format (only these 3 are used)
                  Best is to use Text/Data Segment window,
                   0: Binary
                   1: Hexadecimal Text
                   2: Text Segment Window
    entityname  : string with the entity name
    origname    : string with the original memory dump file name
    mem_length  : number of memory positions
    mem_width   : number of bits of each memory position (32)
    clk         : If false creates a combinatorial memory without clock

    """

    vhdfile.write('--- Autcmatically generated VHDL ROM from a Instruction Memory Dump file ----\n')
    vhdfile.write('--- using RARS https://github.com/TheThirdOne/rars ----\n')
    if origfiletype == 0 or origfiletype == 1:
        vhdfile.write('---   Source file has no instruction information\n')
    elif origfiletype == 2: 
        vhdfile.write('---   Source file with assembly instruction info\n')

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
    vhdfile.write('architecture behavioural of ' + entityname +' is\n')
    vhdfile.write('  signal addr_int  : natural range 0 to 2**' + str(numbits_addr) + '-1;\n')
    vhdfile.write('  type memostruct is array (natural range<>) of std_logic_vector('+ str(mem_width) +'-1 downto 0);\n');
    vhdfile.write('  constant table_mem : memostruct := (\n');



def rvinstr2vhd_txt ( dumpfilename,
                      #mem_width = 32,
                      rom_name  = "ROM_RVINSTR",
                      dest_path = './',
                      clk = True):
    """
    dumpfilename : name of the memory dump file (includes path and extension)
    textfile   : True, if it is a text file
                 False if it is binary
    #mem_width    : memory width is 32 bits (commented, as always is)
    rom_name     : string: VHDL entity name to be created
    dest_path    : path of the VHDL file to be created
    clk         : If false creates a combinatorial memory without clock
    """

    mem_width = 32

    if (os.path.isfile(dumpfilename)):
        file_instr =  open(dumpfilename,'r')
        line1 = file_instr.readline()
        word1 = line1.split()[0]
        if word1=='Address':
            plainhex = False # it has comments, a header, and the instructions 
            num_addr = len(file_instr.readlines(  ))-2 #take out the header
            origfiletype = 2
        else:
            plainhex = True # it is just plain hexadecimal
            num_addr = len(file_instr.readlines(  ))
            origfiletype = 1

        if clk==True:
            # empty text, so no comment
            clkcmt =''
        else:
            # commented clk sentence
            clkcmt ='--'

        file_instr.seek(0) # restart from the beginning
        filename = os.path.split(dumpfilename)[1]  #take away the path
        basefilename = os.path.splitext(filename)[0] #take away extension
        vhdfilename = dest_path + basefilename + ".vhd"
        vhdfile = open(vhdfilename, 'w')
        # write the header
        write_vhd_header (vhdfile, origfiletype=origfiletype,
                          entityname= rom_name, orig_name = filename,
                          mem_length=num_addr,mem_width=32,clk=clk)
        if origfiletype == 2:
            vhdfile.write('                 --    address   :  assembly \n' )
        else:
            vhdfile.write('                 --    address\n' )
        vhdfile.write('                 --  dec -  hex  \n')
        line_num = 0  # line number of file,not always correspond to instruction
        instr_num = 0 # instruction number
        mem_addr = 0  # memory address: instruction number x 4
        for line in file_instr:
            if origfiletype == 2: # line 0, 1 and last are not used
                if line_num == 0 or line_num == 1 :
                    line_num += 1
                    continue # these lines dont have instructions
                # in this kind of files:
                # the first word is the address: dont need
                # second word is the instruction in hex format 0x001fc..
                # third word is the instruction in assembly
                # the rest we dont need
                words = line.split('  ') # words a separated by 2 spaces
                hex_instr = words[1][2:] # remove 0x
                asm_instr = words[2]
            else:
                hex_instr = line.strip('\n')
                asm_instr = ''

            vhdfile.write('    x"' + hex_instr + '"')
            if instr_num < num_addr :
                vhdfile.write(',')  # the last one dont have comma
            else:
                vhdfile.write(' ')  #space

            vhdfile.write(' --' + str(mem_addr).rjust(5) + ' - ' )
            vhdfile.write(hex(mem_addr).rjust(4))
            if origfiletype == 2:
                vhdfile.write('  :  ')
                vhdfile.write(asm_instr)
            vhdfile.write('\n')
            mem_addr  += 4
            line_num  += 1
            instr_num += 1

        vhdfile.write('    );\n')
        vhdfile.write('begin\n')
        vhdfile.write('  addr_int <= to_integer(unsigned(addr));\n')

        vhdfile.write('  ' + clkcmt + 'P_ROM: process(clk)\n')
        vhdfile.write('  ' + clkcmt + 'begin\n')
        vhdfile.write("  " + clkcmt + "  if clk'event and clk='1' then\n")
        vhdfile.write('      dout <= table_mem(addr_int);\n')
        vhdfile.write('  ' + clkcmt + '  end if;\n')
        vhdfile.write('  ' + clkcmt + 'end process;\n')

        vhdfile.write('end behavioural;\n')
        vhdfile.close()
        file_instr.close()
            




rvinstr2vhd_txt(dumpfilename = "../examples/instr/hex_text.txt",
                #mem_width = 32,
                rom_name  = "ROM_RVINSTR_HEX",
                dest_path = './',
                clk = True)

rvinstr2vhd_txt(dumpfilename = "../examples/instr/text_asm.txt",
                #mem_width = 32,
                rom_name  = "ROM_RVINSTR_ASM",
                dest_path = './',
                clk = True)


