# Use this assembler program to convert the .asm files into .hack files, 
# just run the program, you will be prompted with "input filepath"
# then just copy and paste the filepath into the terminal. 
# After making new hack file, go into your default assembler program
# It is saved in the nand2tetris tools folder. 
# Input the the asm files and compare them with your newly created hack files.
# The results should be identical.
from Parser import Parser
parser = Parser()
print('Input filepath name')
parser.assemble(file_name = input())
print('New hack file created')