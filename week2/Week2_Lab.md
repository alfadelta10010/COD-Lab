Program 1: 
### Statement:Write an Assembly Program for the following C code:
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
week2q1.s

### Observation - Single Cycle
initializing array of data and assigning values for array elements and
 performing addition operationas given in above c code for each elements of array  using assembly instructions and then store it


### Register Mapping
-x1-0x00001234
-x2-0x04602200

### Data Mapping

0x100000014-0x00002200
0x100000010-0x12343456
0x10000000c-0x9876a000
0x100000008-0x00102332
0x100000004-0x15000001
0x100000000-0x10023011

Program 1: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
week2q2.s

### Observation - Single Cycle
here 1st LSB part is added and check for carry generated 
do the same for MSB part and then add result of MSB 
and carry of LSB and then store the results

### Register Mapping
-x2-0xfffffffe
x3-0xffffffff
x5-0xfffffffe
x6-0xffffffff
x7-0xffffffff
x8-0xffffffff
x9-0xffffffff
x11-0x00000001
x12-0x00000001


### Data Mapping

0x100000018-0x00000001
0x100000014-0xffffffff
0x000000010-0xfffffffe
0x10000000c-0xffffffff
0x100000008-0xffffffff
0x100000004-0xffffffff
0x100000000-0xffffffff



