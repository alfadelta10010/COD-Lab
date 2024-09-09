Q1. Write an Assembly Program for addition of 2 words

.data					##This section defines data that will be stored in memory.
a: .word 0x12345678,0x98765432		##A label that represents the starting address of the data. and 
					##defines two 32-bit words. The first word (0x12345678) is stored 
					##at address a, and the second word (0x98765432) is stored at address (a + 4)

.text					##This section contains the executable code.
la x10,a				##Load the address of the label a into register x10.
lw x11,0(x10) 				##Load the first word (0x12345678) from memory (address a) into register x11.
lw x12,4(x10) 				##Load the second word (0x98765432) from memory (address a + 4) into register x12.
add x13,x11,x12 			##Add the values in registers x11 and x12, storing the result in register x13
sw x13 8(x10) 				##Store the result from x13 into memory at the address (a + 8).



Q2. Write an Assembly Program for addition of 2 half words

.data					##This section defines data that will be stored in memory.
a: .half 0x6543,0x0008			##A label that represents the starting address of the data.
					##defines two 16-bit half-words. The first half-word (0x6543) 
					##is stored at (address a), and the second half-word (0x0008) 
					##is stored at (address a + 2).

.text					##This section contains the executable code.
la x10,a 				##Load the address of the label a into register x10
lh x11,0(x10) 				##Load the first 16-bit half-word (0x6543) from memory (address a) into register x11
lh x12,2(x10) 				##Load the second 16-bit half-word (0x0008) from memory (address a + 2) into register x12.
add x13,x11,x12 			##Add the values in registers x11 and x12, storing the result in register x13.
sh x13 4(x10) 				##Store the result from x13 into memory at the address a + 4.



Q3. Write an Assembly Program for addition of 2 bytes

.data				        ##This section defines data that will be stored in memory.
a: .byte 0x55,0x33			##A label that represents the starting address of the data. This defines two 8-bit bytes. 
					##The first byte (0x55) is stored at (address a), and the second byte (0x33) is stored at (address a + 1).

.text					##This section contains the executable code.
la x10,a 				##Load the address of the (label a) into register x10.
lb x11,0(x10) 				##Load the first 8-bit byte (0x55) from memory (address a) into register x11.
lb x12,1(x10) 				##Load the second 8-bit byte (0x33) from memory (address a + 1) into register x12.
add x13,x11,x12 			##Add the values in registers x11 and x12, storing the result in register x13.
sb x13 2(x10) 				##Store the result from x13 into memory at the address a + 2.



Q4. Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

.data 				       ##This section defines data that will be stored in memory.
a: .half 0x8000			       ##A label that represents the starting address of the data.
				       ##This defines a 16-bit half-word (0x8000), which is stored at (address a).

.text				       ##This section contains the executable code.
la x10,a			       ##Load the address of the (label a) into register x10
lh x11,0(x10)			       ##Load the 16-bit half-word (0x8000) from memory (address a) into register x11.
sh x11,2(x10)			       ##Store the 16-bit value in register x11 back into memory at the (address a + 2)

