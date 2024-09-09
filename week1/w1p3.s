.data
a: .byte 0x12, 0x34 # Two 8-bit bytes stored in memory
.text
la x10, a        #Load the address of 'a' into register x10
lb x11, 0(x10)   # Load the first byte from memory (0x12) into x11
lb x12, 1(x10)   # Load the second byte from memory (0x34) into x12
add x13, x11, x12 # Add the values in x11 and x12, store the result in x13
sb x13, 2(x10)   #Store the result from x13 into memory location 2(a)