.data
a: .word 0x12345678      # loading the word size of data
b: .word 0xff            # loading the word size of data
c: .word 0               # Initialising the value of the array to be zero
.text
la x10,a                 # Loading the address of the array a in x10
la x11,b                 # Loading the address of the array b in x11
la x17,c                 # Loading the address of the array c in x17
lw x12,0(x10)            # Loading the data of array a to register x12
lw x13,0(x11)            # Loading the data of array b to register x13
addi x15,x15,24          # Initialising the value of the register as 24
addi x19,x0,-8           # Initialising the value of the register as -8
addi x18,x17,3           # Incrementing the address of array c to +3 

loop:                    # Masking operation
and x14,x12,x13          # Anding the data present in register x12 and x13
sb x14,0(x18)            # Storing byte data present in the incremented address
sll x14,x14,x15          # Left shifting the data present in x14 to 24 times
addi x15,x15,-8          # Decrementing the value by 8
srli x12,x12,8           # Right shifting the data present in x12 by 8
addi x18,x18,-1          # Decrementing the data presnt in x18 by 1
bne x15,x19,loop         # if value in x15=-8 then the loop breaks