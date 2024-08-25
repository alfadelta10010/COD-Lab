
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
lab_2~1.s

### Observation - Single Cycle
- a is a half word array with 11 elements 0x01 to 0x00 and last a[10] as zero and h = 0x00
- address of a is loaded at x1 and h at x2
- a[0] and h are loaded into x3 and x4
- after first iteration on add x4,x4,x3 which is adding h to a and storing in h the base address of a is incremented by 0x02 to access the next element of a. 
-i have chosen to hardcode offset but we can also use addi x1,x1,2 for generating quicker offset values.
-after completing 10 iterations a[10] stores final value of h.

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
lab_2~2.s

### Observation - Single Cycle
- a and b are double words
- base address of a and b is fed into x1 and x2.
- 2 load operations to store 1 64bit into 2 32 bit registers.
- LSB 32bits of a and b are added and stored in x8.
- sltu is used to compare and check for carry. The carry is stored at x9
- Now MSB 32 bits of n1 and n2 are added,stored at x10 and carry is checked,carry stored at x12.
- The LSB Carrys is added to the MSB result at x10.New carry is stored at x11.
- stores MSB 32bits LSB 32bits and 1 carry.

### Register Mapping
- x1 = 0x1000 0000
- x2 = 0x1000 0008
- x3 = 0xffff fbbf
- x4 = 0xffff fffc
- x5 = 0xffff ffff
- x6 = 0x0000 0001
- x7 = 0xffff fbae
- x8 = 0x0000 0001
- x9 = 0x0000 0000
- x10 = 0xffff fffe
- x11 = 0x0000 0000
- x12 = 0x0000 0000
- x13 = 0x0000 0000
### Data Mapping
- 0x1000 001c - 0x0000 ffff
- 0x1000 0014 - 0x0000 0000
- 0x1000 0010 - 0xffff fbae
- 0x1000 000c - 0x0000 0001
- 0x1000 0008 - 0xffff ffef
- 0x1000 0004 - 0xffff fffc
- 0x1000 0000 - 0xffff fbbf
