#little endian to big endian conversion
#moving from LSB to MSB
.data
a: .word 0x12345678
.text
la x10, a #load address of a into x10
lw x11, 0(x10) #loading a into a register

andi x12, x11, 0xFF #extracting LSB (0x78)
srli x11, x11, 8 #moving 78 out by 8 using right shift
slli x12, x12, 24 #moving 78 by 24 (offset = 6x4) using left shift
add x13, x0, x12 #x13 = 0 + 0x78000000

andi x12, x11, 0xFF #extracting 2nd byte (0x56)
srli x11, x11, 8 #moving 56 out by 8 using right shift
slli x12, x12, 16 #moving 56 by 16 using left shift
add x13, x13, x12 #x13 = 0x78000000 + 0x00560000

andi x12, x11, 0xFF #extracting 3rd byte (0x34)
srli x11, x11, 8 #moving 34 out by 8 using right shift
slli x12, x12, 8 #moving 34 by 16 using left shift
add x13, x13, x12 #x13 = 0x78000000 + 0x00560000 + 0x00003400

andi x12, x11, 0xFF #extracting the MSB (0x12)
add x13, x13, x12 #x13 = 0x78000000 + 0x00560000 + 0x00003400 + 0x00000012
sw x13, 4(x10) #Store the result in memory at address (a + 4)