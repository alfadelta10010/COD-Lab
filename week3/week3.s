.data
a: .word 0x12345678       # Define a word in memory at label 'a' with the value 0x12345678

.text
la x10, a                 # Load the address of variable 'a' into register x10
lw x8, 0(x10)             # Load the word at address in x10 into register x8 (x8 now contains 0x12345678)

andi x9, x8, 0xFF         # Extract the least significant byte (0x78) from x8 and store it in x9
slli x9, x9, 24           # Shift the byte in x9 left by 24 bits (0x78 becomes 0x78000000)
srli x8, x8, 8            # Shift x8 right by 8 bits (x8 now contains 0x00123456)

andi x11, x8, 0xFF        # Extract the next byte (0x56) from x8 and store it in x11
slli x11, x11, 16         # Shift the byte in x11 left by 16 bits (0x56 becomes 0x560000)
add x12, x9, x11          # Add the shifted values in x9 and x11 (0x78000000 + 0x560000 = 0x78B60000)
srli x8, x8, 8            # Shift x8 right by another 8 bits (x8 now contains 0x00001234)

andi x13, x8, 0xFF        # Extract the next byte (0x34) from x8 and store it in x13
slli x13, x13, 8          # Shift the byte in x13 left by 8 bits (0x34 becomes 0x003400)
add x14, x13, x12         # Add the shifted values in x13 and x12 (0x78B60000 + 0x003400 = 0x78B63400)
srli x8, x8, 8            # Shift x8 right by 8 bits (x8 now contains 0x00000012)

andi x15, x8, 0xFF        # Extract the most significant byte (0x12) from x8 and store it in x15
add x16, x15, x14         # Add the most significant byte in x15 to the accumulated result in x14
sw x16, 4(x10)            # Store the final result (reversed byte order) back to memory at address (a + 4)

