# Program 1: 
### Statement: 1)write an assembly program for the following c code
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
 program1.s

### Observation - Single Cycle
-   The first element of the first array(a) is being added to the first element of the second array(b) and is getting stored in the first element of the third array(c) and this is repeated for all the ten elements of each array(a and b)
 
### Register Mapping
- x10:0x10000000
  x11:0x10000014
  x12:0x10000028
  x13:0x10000004
  x14:0x20000004
  x15:0x30000008

### Data Mapping
- 0x1000002c : 0x30000002
  0x10000028 : 0x33333333
  0x10000024 : 0x20000004
  0x10000020 : 0x20000003
  0x1000001c : 0x20000002
  0x10000018 : 2000000001
  0x10000014 : 0x22222222
  0x10000010 : 0x10000004
  0x1000000c : 0x10000003
  0x10000008 : 0x10000002
  0x10000004 : 0x10000001
  0x10000000 : 0x11111111



# Program 2: 
### Statement:write the program using rv32 single cycle riscV processor to perform addition of two 64 bit unsigned numbers and store the result in the memory


### Name of file:
program2.s


### Observation - Single Cycle
- The code takes four 32-bit numbers to add in which 2 or the numbers are LSB of the 64-bit numbers and the other two are MSB of the 64-bit numbers.
we add the LSB registers and take the carry and add it to the carry of the sum of the MSB registers to get the final carry.sum of the MSB registers and LSB registers is the 64 bit result and the carry left is the final carry.
 
### Register Mapping
- x11:0xeeeeeeee
  x12:0xffffffff
  x13:0xeeeeeeee
  x14:0xffffffff
  x15:0xdddddddc
  x16:0x00000001
  x17:0xfffffffe
  x18:0x00000001
  x19:0xffffffff

### Data Mapping
- 0x10000018:0x00000001
  0x10000014:0xffffffff
  0x10000010:0xdddddddc
  0x1000000c:0xffffffff
  0x10000008:0xeeeeeeee
  0x10000004:0xffffffff
  0x10000000:0xeeeeeeee

...
