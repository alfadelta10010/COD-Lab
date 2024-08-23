#1 Write an Assembly Program for addition of 2 words

.data 
a: .word 0x12345648,0x18112222  # Define a word array 'a' with two 32-bit values

.text
la x10, a            # Load the address of 'a' into register x10
lw x11, 0(x10)       # Load the first word (0x12345648) from address 'a' into register x11
lw x12, 4(x10)       # Load the second word (0x18112222) from address 'a+4' into register x12
add x13, x11, x12    # Add the values in x11 and x12, store the result in x13
sw x13, 8(x10)       # Store the result in x13 at address 'a+8'

 
 

#2 Write an Assembly Program for addition of 2 half words

 .data 
a: .half 0x1234, 0x1811    # Define a halfword array 'a' with two 16-bit values

.text
la x10, a            # Load the address of 'a' into register x10
lh x11, 0(x10)       # Load the first halfword (0x1234) from address 'a' into register x11
lh x12, 2(x10)       # Load the second halfword (0x1811) from address 'a+2' into register x12
add x13, x11, x12    # Add the values in x11 and x12, store the result in x13
sh x13, 4(x10)       # Store the result in x13 at address 'a+4' as a halfword


 
#3 Write an Assembly Program for addition of 2 bytes

.data 
a: .byte 0x34, 0x00       # Define a byte array 'a' with two 8-bit values

.text
la x10, a            # Load the address of 'a' into register x10
lb x11, 0(x10)       # Load the first byte (0x34) from address 'a' into register x11
lb x12, 2(x10)       # Load the byte from address 'a+2' into register x12 
add x13, x11, x12    # Add the values in x11 and x12, store the result in x13
sb x13, 4(x10)       # Store the result in x13 at address 'a+4' as a byte

 


#4 Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

 .data 
a: .byte 0x13, 0x11, 0         # Define a byte array 'a' with three 8-bit values
b: .half 0x1234, 0x5678, 0     # Define a halfword array 'b' with three 16-bit values
c: .word 0x12345648, 0x18112222 # Define a word array 'c' with two 32-bit values

.text
la x12, c           # Load the address of 'c' into register x12
lw x1, 0(x12)       # Load the first word (0x12345648) from address 'c' into register x1
sw x1, 4(x12)       # Store the value in x1 (0x12345648) at address 'c+4', overwriting the second word

la x13, b           # Load the address of 'b' into register x13
lh x2, 0(x13)       # Load the first halfword (0x1234) from address 'b' into register x2
sh x2, 2(x13)       # Store the value in x2 (0x1234) at address 'b+2', overwriting the second halfword

la x14, c           # Load the address of 'c' into register x14
lb x3, 0(x14)       # Load the first byte (0x48) from the least significant byte of the first word in 'c' into register x3
sb x3, 1(x14)       # Store the value in x3 (0x48) at address 'c+1', modifying the second byte of the first word in 'c'

