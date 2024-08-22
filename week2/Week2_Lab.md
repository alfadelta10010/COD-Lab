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
- week2_q1.s

### Observation - Single Cycle
- The first element of the first array(a) is being added to the first element of the second array(b) and is
  getting stored in the first element of the third array(c) and this is repeated for all the ten elements of
  each array(a and b)
 
### Register Mapping
- x10 : 0x10000000(base address of first array)
- x11 : 0x10000014(base address of second array)
- x12 : 0x10000028(base address of third array)
- x13 : 0x00001009
- x14 : 0x00002009
- x15 : 0x00003009
- x13, x14, x15 are re-used registers and their value keep chaning for each iteration

### Data Mapping
- 0x10000000 : 0x10011111
- 0x10000004 : 0x10031002
- 0x10000008 : 0x10051004
- 0x1000000c : 0x10071006
- 0x10000010 : 0x10091008
- 0x10000014 : 0x20012222
- 0x10000018 : 0x20032002
- 0x1000001c : 0x20052004
- 0x10000020 : 0x20072006
- 0x10000024 : 0x20092008
- 0x10000028 : 0x30023333
- 0x1000002c : 0x30063004
- 0x10000030 : 0x300a3008
- 0x10000034 : 0x300e300c
- 0x10000038 : 0x30123010
- 0x1000003c : 0x00000000


# Program 2:

### Statement :  Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
- week2_q2.s

### Observation - Single Cycle
- The code takes four 32-bit numbers to add in which 2 or the numbers are LSB of the 64-bit numbers and the 
  other two are MSB of the 64-bit numbers. we add the LSB registers and take the carry and add it to the 
  carry of the sum of the MSB registers to get the final carry. sum of MSB registers and LSB resgisters is 
  the 64-bit result and the carry left is the final carry.
 
### Register Mapping
- x10 : 0x10000000
- x11 : 0xffffffff
- x12 : 0xffffffff
- x13 : 0xffffffff
- x14 : 0xffffffff
- x15 : 0xfffffffe
- x16 : 0x00000001
- x17 : 0xfffffffe
- x18 : 0x00000001
- x19 : 0xffffffff

### Data Mapping
- 0x10000000 : 0xffffffff
- 0x10000004 : 0xffffffff
- 0x10000008 : 0xffffffff
- 0x1000000c : 0xffffffff
- 0x10000010 : 0xfffffffe
- 0x10000014 : 0xffffffff
- 0x10000018 : 0x00000001

...
