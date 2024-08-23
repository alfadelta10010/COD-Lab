# Program 1: 
### Statement: Write an Assembly Program for the following C code
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
COD-Lab/week2/prog1.s

### Observation - Single Cycle
- In this program, we are converting the above given c code to assembly.
- We use several load, add and store statements.
- This program is finding the sum of all the elements in the "array" of elements
 
### Register Mapping
- x1:0x10000000
- x2:0x0000002d
- x3:0x00000010
- x4:0x0000003d

### Data Mapping
- 0x10000014:0x0000003d
- 0x10000010:0x00100009
- 0x1000000c:0x00080007
- 0x10000008:0x00060005
- 0x10000004:0x00040003
- 0x10000000:0x00020001


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
COD-Lab/week2/prog2.s

### Observation - Single Cycle
- Two double words(64 bits) are added in this program.The numbers are stored by extracting the lsb and msb of each number
and storing it in seperate registers.
- Then the lsbs of the words are added and the msbs are added.
- This program also checks if there is a carry over that is generated.
 
### Register Mapping
- x8:0x10000008
- x9:0x10000000
- x10:0xffffffff
- x11:0xffffffff
- x12:0xffffffff
- x13:0xffffffff
- x14:0xffffffff
- x15:0x00000001
- x16:0xfffffffe
- x17:0x00000001
- x18:0x00000001

### Data Mapping
- 0x00000034:0x00000000
- 0x00000030:0x00f80933
- 0x00000020:0x00c50733
- 0x00000018:0x00042603
- 0x00000008:0x10000417
- 0x00000004:0x00048493
- 0x00000000:0x10000497


