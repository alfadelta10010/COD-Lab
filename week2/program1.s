.data
a: .word 0x12345678,0x23456789,0x17efa3c2,0x34687546,0x10000456   #creating a variable a of size word for 5 elements
b: .word 0x12323235,0x0eface12,0x25647357,0x4267845e,0x456783ef   #creating a variable b of size word for 5 elements
c: .word 0,0,0,0,0   #creating a variable c of size word for 5 elements

.text
la x10,a      # loading base address of a in x10          
la x11,b      # loading base address of b in x11
la x12,c      # loading base address of c in x12

lw x13,0(x10)    # loading the data present in the memory to the register
lw x14,0(x11)    # loading the data present in the memory to the register
add x15,x13,x14  # adding the data's present in the memory and storing it in x15 register 
sw x15,0(x12)    # storing back the value present in x15 register to the memory

# register reuse 
lw x13,4(x10)    # loading the data present in the memory to the register
lw x14,4(x11)    # loading the data present in the memory to the register
add x15,x13,x14  # adding the data's present in the memory and storing it in x15 register
sw x15,4(x12)    # storing back the value present in x15 register to the memory

# register reuse 
lw x13,8(x10)    # loading the data present in the memory to the register
lw x14,8(x11)    # loading the data present in the memory to the register
add x15,x13,x14  # adding the data's present in the memory and storing it in x15 register
sw x15,8(x12)    # storing back the value present in x15 register to the memory

# register reuse 
lw x13,12(x10)    # loading the data present in the memory to the register
lw x14,12(x11)    # loading the data present in the memory to the register
add x15,x13,x14   # adding the data's present in the memory and storing it in x15 register
sw x15,12(x12)    # storing back the value present in x15 register to the memory

# register reuse 
lw x13,16(x10)    # loading the data present in the memory to the register
lw x14,16(x11)    # loading the data present in the memory to the register
add x15,x13,x14   # adding the data's present in the memory and storing it in x15 register
sw x15,16(x12)    # storing back the value present in x15 register to the memory