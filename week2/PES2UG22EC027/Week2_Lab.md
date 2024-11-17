# Program 1: 
### Statement: Write an Assembly Program for the following C code:
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
/COD-Lab/week2/PES2UG22EC027/LAB2/add_array_h.s

### Observation - Single Cycle
- a is declared as half with 11 elements 0x01 -- 0x0a and last a[10] as zero and h = 0x00
- address of a is loaded at x1 and h at x2
- both a[0] and h are loaded into x3 and x4 respectively
- after first iteration on add x4,x4,x3 which is adding h to a and storing in h the base address of a is incremented by 0x02 to access the next element of a. 
-this is done to insure that am running the same set of code instead of hardcoding offset
-after 10 iterations x4 is stored at a[10]
### Register Mapping
-x1 = 0x1000 0012
-x2 = 0x1000 0016
-x3 = 0x0000 000a
-x4 = 0x0000 0037

### Data Mapping
- 0x1000 0018 = 0x0000 00000
- 0x1000 0014 = 0x0000 00037
- 0x1000 0010 = 0x000a 00009
- 0x1000 000c = 0x0008 00007
- 0x1000 0008 = 0x0006 00005
- 0x1000 0004 = 0x0004 00003
- 0x1000 0000 = 0x0002 00001

...

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
COD-Lab/week2/LAB2/64bitaddition.s

### Observation - Single Cycle
- n1 and n2 are declared as double words
- base address of n1 and n2 is loaded into x1 x2
- 2 load operations to store 1 64bit into 2 32 bit registers. Which is 4 to load 2 doubles
- LSB 32bits of n1 and n2 are added and stored in x8.
- sltu is used to compare and check for carry. The carry is stored at x9
- Now MSB 32 bits of n1 and n2 are added,stored at x10 and carry is checked,carry stored at x12.
- LSBs Carrys is added to the MSB result at x10. Again carry should be verified to check if adding old carry generates a carry at msb.New carry is stored at x11.
- x11 and x12 are 2 possible carries which could be possible to both are or'd and stored at x13 which gives final carry.
-3 store operations to store MSB 32bits LSB 32bits and 1 carry.

### Register Mapping
- x1 = 0x1000 0000
- x2 = 0x1000 0008
- x3 = 0xffff fffc
- x4 = 0xffff ffff
- x5 = 0x0000 0001
- x6 = 0xffff ffff
- x7 = 0x0000 0000
- x8 = 0xffff fffd
- x9 = 0x0000 0000
- x10 = 0xffff fffe
- x11 = 0x0000 0001
- x12 = 0x0000 0001
- x13 = 0x0000 0001
### Data Mapping
- 0x1000 0018 - 0x0000 0001
- 0x1000 0014 - 0xffff fffe
- 0x1000 0010 - 0xffff fffd
- 0x1000 000c - 0x0000 0001
- 0x1000 0008 - 0xffff ffff
- 0x1000 0004 - 0xffff fffc
- 0x1000 0000 - 0xffff ffff

...
