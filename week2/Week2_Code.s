week 2 

1. Write an Assembly Program for the following C code:

main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}


ans.

.data
a: .dword 0xffffffffffffffff,0xffffffffffffffff		##The .data section initializes an array a with two 64-bit values (0xffffffffffffffff), which are 							##the maximum possible values for a 64-bit integer (all bits set to 1).
.text
la x10, a						## Loads the address of the array a into x10.
lw x11,0(x10) 						## Loads the lower 32 bits (first half-word) of the first 64-bit number into x11.
lw x12,4(x10) 						## Loads the upper 32 bits (second half-word) of the first 64-bit number into x12.
lw x13,8(x10) 						## Loads the lower 32 bits (first half-word) of the second 64-bit number into x13.
lw x14,12(x10) 						## Loads the upper 32 bits (second half-word) of the second 64-bit number into x14.

add x15,x11,x13 					## Adds the lower 32 bits (x11 and x13) and stores the result in x15.
sltu x16,x15,x13 					## Sets x16 to 1 if the addition in the previous step resulted in an overflow (carry) from the lower 							## bits.

add x17,x12,x14 					## Adds the upper 32 bits (x12 and x14) and stores the result in x17.
sltu x18,x17,x14 					## Sets x18 to 1 if the addition in the previous step resulted in an overflow (carry) from the upper 							## bits.

add x19,x16,x17 					## Adds the carry from the lower bits (x16) to the result of the upper bits addition (x17). This 							## gives the correct upper 32-bit result, considering the carry from the lower bits.

sw x15,16(x10) 						## Stores the lower 32 bits of the result in memory at the address a[4].
sw x19,20(x10) 						## Stores the upper 32 bits of the result in memory at the address a[5].
sw x18,24(x10) 						## Stores the final carry in memory at the address a[6].



2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I

ans.

.data
a:.word 0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF,0xFFFFFFFF	## This array is initialized with four 32-bit words, all set to 0xFFFFFFFF. 
							## This means that each 64-bit integer represented by two of these 32-bit words is at its maximum 							## value (0xFFFFFFFFFFFFFFFF).

.text
la x10,a						## Load the base address of the array a into register x10.
lw x9,0(x10)						## Load the first 32-bit word (a[0]) into x9.
lw x8,4(x10)						## Load the second 32-bit word (a[1]) into x8.
lw x7,8(x10)						## Load the third 32-bit word (a[2]) into x7.
lw x6,12(x10)						## Load the fourth 32-bit word (a[3]) into x6.
add x5,x8,x6  #lsb					## Adds the lower 32 bits (a[1] and a[3], stored in x8 and x6) and stores the result in x5.
sltu x11,x5,x8  #carry lsb				## Sets x11 to 1 if there was an unsigned overflow (carry) from the previous addition. 									## This indicates if the result (x5) is less than one of the operands (x8).
add x2,x9,x7   #msb					## Adds the upper 32 bits (a[0] and a[2], stored in x9 and x7) and stores the result in x2.
sltu x12,x2,x7  #carry msb				## Sets x12 to 1 if there was an unsigned overflow (carry) from the addition of the upper 32 bits.
add x3,x2,x11						## Adds carry from the lower 32-bit addition(x11) to the result of the upper 32-bit addition(x2).							## This ensures that any overflow from the lower 32-bit addition is propagated to the upper 32-bit 							## addition result.

sw x5,16(x10)						## Stores the result of the lower 32-bit addition (x5) into the next available memory location a[4].
sw x3,20(x10)						## Stores the result of the upper 32-bit addition (including any carry from the lower addition) into 							## a[5]
sw x12,24(x10) 						## Stores the carry from the upper 32-bit addition into a[6]
