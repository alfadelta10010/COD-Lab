.data
a: .word 0x12345678 
.text
la x10,a  # the memory location of the word 0x12345678 into register x10.
lw x11,0(x10)   # loads the 32-bit value from memory i.e., 0x12345678 into register x11.
andi x12,x11,0xFF  # Extract the least significant byte (LSB) from x11 by performing a bitwise AND with 0xFF.
slli x12,x12,24   #Shift the extracted byte (0x78) left by 24 bits. This moves the byte to the most significant position in the 32-bit word.

srli x13,x11,8   # Shift x11 right by 8 bits to move the second byte (0x56) to the least significant position.
andi x13,x13,0xFF  #  Mask the result to keep only the least significant byte (0x56).
slli x13,x13,16  #Shift the extracted byte (0x56) left by 16 bits, positioning it in the second-most significant byte location.
add x12,x12,x13  # Add x13 (0x00560000) to x12 (0x78000000), which combines the first and second bytes.

srli x13,x11,16  #Shift x11 right by 16 bits to move the third byte (0x34) to the least significant byte position.
andi x13,x13,0xFF  #Mask the result to isolate the least significant byte (0x34)
slli x13,x13,8  # Shift the extracted byte (0x34) left by 8 bits, placing it in the third byte position.
add x12,x12,x13  #Add x13 (0x00003400) to x12 (0x78560000), combining the first three bytes.

srli x13,x11,24  #Shift x11 right by 24 bits to move the most significant byte (0x12) to the least significant position.
add x12,x12,x13  #Add x13 (0x00000012) to x12 (0x78563400), completing the reversed byte arrangement.
sw x12,0(x10)   #Store the final value in x12 (0x78563412) back into memory at the address stored in x10 (location of a). The value at a is now 0x78563412.