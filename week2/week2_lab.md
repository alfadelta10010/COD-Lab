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
week2_lab.s

### Observation - Single Cycle
The program loads an array of 11 `unsigned short` values from memory.
It manually adds the first 10 values together, updating the sum in each step.
The accumulated sum is stored in the 11th element of the array.

### Register Mapping

 x3=0xffffffff 
x10=0x10000000 
x11=0x10000000 
x12=0x00000001 
x2=0xfffffffe 
x5=0xfffffffe 
x6=0xffffffff 

#Data mapping Address word 
0x10000018 0x10000018 
0x10000014 0xffffffff 
0x10000010 0xfffffffe 
0x1000000c 0xffffffff 
0x10000008 0xffffffff 
0x10000004 0xffffffff 
0x10000000 0xffffffff

# Program 2: 
### Statement:
2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
week2_lab.s

### Observation - Single Cycle
 The code loads two 64-bit numbers from memory, splitting each into lower(least significant 32 bits) and upper(most significant 32 bits) 32-bit parts.
 It adds the lower 32 bits and checks for a carry, then adds the upper 32 bits including the carry.
 The result, combining the lower and upper 32 bits, is stored back into memory.

### Register Mapping
x1 0x10000000
x11 0x90abcdef
x12 0x12345678
x13 0x76543210
x14 0xfedcba98
x15 0x06ffffff
x16 0x00000001
x17 0x11111110
x18 0x11111111

### Data Mapping
0x10000014 0x11111111
0x10000010 0x06ffffff
0x1000000c 0xfedcba98
0x10000008 0x76543210
0x10000004 0x12345678
0x10000000 0x90abcdef
