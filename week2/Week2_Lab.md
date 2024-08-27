# Program 1:
### Statement: 
Write an Assembly Program for the following C code:

main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}

### Name of file:
-lab2_Q1.txt

### Observation - Single Cycle
The la instruction loads the address of the array a into register x10. 
The sum variable h is initialized to 0 by loading the immediate value 0 into
register t0. 
The address for each element is calculated by adding the offset (0, 2, 4, ..., 18) to the base address in x10.
Finally, the sum variable h stored in 
t0 is stored in the 11th element of the array a using the sh instruction

### Register Mapping
x10 : 0x10000000
x11 : 0xffffffff
x12 : 0xffffffff
x13 : 0xffffffff
x14 : 0xffffffff
x15 : 0xfffffffe
x16 : 0x00000001
x17 : 0xfffffffe
x18 : 0x00000001
x19 : 0xffffffff

### Data Mapping
0x10000018 : 0x00000001
0x10000014 : 0xffffffff
0x10000010 : 0xfffffffe
0x1000000c : 0xffffffff
0x10000008 : 0xffffffff
0x10000004 : 0xffffffff
0x10000000 : 0xffffffff


# Program 2:
### Statement: 
Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file: 
-lab2_Q2.txt

### Observation - Single Cycle
The code loads two 64 bit numbers from the memory, 
splitting each number into lower(least significant 32 bits) and upper(most significant 32 bits).
It adds lower 32 bits and checks for a carry,then adds the upper 32 bits including the carry.
The result combining the lower and upper 32 bits ,is stored back into the memory.

### Register mapping
x2 : 0xfffffffe
x3 : 0xffffffff
x5 : 0xfffffffe
x6 : 0xffffffff
x7 : 0xffffffff
x8 : 0xffffffff
x9 : 0xffffffff
x10 : 0x10000000
x11 : 0x00000001
x12 : 0x00000001

### Data Mapping
0x10000018 : 0x00000001
0x10000014 : 0xffffffff
0x10000010 : 0xfffffffe
0x1000000c : 0xffffffff
0x10000008 : 0xffffffff
0x10000004 : 0xffffffff
0x10000000 : 0xffffffff
