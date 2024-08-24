# Program 1: 
### Statement: main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}
### Name of file:
2lab1.s
### Observation - Single Cycle
initializing array of data and assigning values for array elements and performing addition operation as given in above c code for each elements of array  using assembly instructions and then store it


-### Register Mapping
 x1-0x00002000
 x2-0x00246800
- ### Data Mapping
- 0x10000014-0x00006800
- 0x10000010-0x20003451
- 0x1000000c-0x2341b000
- 0x10000008-0x01002562
- 0x10000004-0x15002345
- 0x10000000-0x45671234

# Program 2: 
### Statement:2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 
### Name of file:
week2.2.s
### Observation - Single Cycle
here 1st LSB part is added and check for carry generated 
do the same for MSB part and then add result of MSB 
and carry of LSB and then store the results


-### Register Mapping
 x6-0xffffffff
x7-0xffffffff
x8-0xffffffff
x9-0xffffffff

- ### Data Mapping
0x10000018 - 0x00000001
0x10000014 - 0xffffffff
0x10000010 - 0xfffffffe
0x1000000c - 0xffffffff
0x10000008 - 0xffffffff
0x10000004 - 0xffffffff
0x10000000 - 0xffffffff