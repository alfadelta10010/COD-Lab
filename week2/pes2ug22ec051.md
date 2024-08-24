#program 1
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}

 
### Statement: 

### Name of file:agn2ai.s

### Observation - Single Cycle:here the half bit data is loaded into register one by one and added to new register and store into back into memrory 
### Register Mapping
- x10 0x10000000
x11- 0x00001234
x12 0x00005678
x13 0x00001234
x14 0x00005678
x15 0x00001234
x16 0x00005678
x17 0x00001234
x18 0x00005678
x19 0x00001234

x20 ox00037770
x21 0x00005678
x22 0x00000000

### Data Mapping
0x10000018 -0x100005678
0x10000014- 0x00001234
0x10000010-x00005678
0x1000000c- 0x00001234
0x10000008-x00005678
0x10000004- 0x00001234
0x00000000-0x10000000
...
# Program 2 2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I: 

### Name of file:asg2b.s

### Observation - Single Cycle
- here we take double word and load one by one word data into register and then adding into other register and performing sltu to check whether carry is generated or not and then doing addition and storing into register
 
### Register Mapping
- x2-0x10000000
x3-0xffffacde
x4-0xffffffff
x5-0xffffffff
x6-0x0fffffff
x11-0xffffacdd
x12-0x0ffffffe
x9-0x00000001
x16-0x0fffffff

### Data Mapping
- 0x00000034-0x0000000
0x00000030-0x00f80933
0x0000002c-0x00d838b3
0x00000028-0x000000797
0x00000024-0x00000848
0x00000020-0x0000048
0x0000001c-0x00000678
0x00000018-0x00000478
0x00000014-0x00004006
0x00000010-0x0004057
0x0000000c-0x0000706
0x00000008-0x0000703
0x00000004-0x0000627
0x00000000-0x0000623
