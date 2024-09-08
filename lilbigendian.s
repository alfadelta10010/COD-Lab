.data
a:.word 0x12345678         # Store the 32-bit word 0x12345678 in memory

.text
la x10,a                   # Load the address of 'a' into register x10
lw x5,0(x10)               # Load the 32-bit word from memory (0x12345678) into register x5

andi x6,x5,0xFF            # Extract the least significant byte (0x78) from x5 and store it in x6
slli x6,x6,24              # Shift the byte left by 24 bits, moving it to the most significant byte position

srli x7,x5,8               # Shift x5 right by 8 bits to bring the second byte to the least significant position
andi x7,x7,0xFF            # Extract the second byte (0x56) from the result
slli x7,x7,16              # Shift it left by 16 bits to move it to the second-most significant byte position
add x6,x6,x7               # Add the second byte (now in the correct position) to x6

srli x8,x5,16              # Shift x5 right by 16 bits to bring the third byte to the least significant position
andi x8,x8,0xFF            # Extract the third byte (0x34) from the result
slli x8,x8,8               # Shift it left by 8 bits to move it to the third-most significant byte position
add x6,x6,x8               # Add the third byte (now in the correct position) to x6

srli x9,x5,24              # Shift x5 right by 24 bits to bring the most significant byte to the least significant position
add x6,x6,x9               # Add the most significant byte (no shift needed) to x6
