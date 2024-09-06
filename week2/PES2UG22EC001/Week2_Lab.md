# Program 1: 
### Statement: <Write an Assembly Program for the following C code:
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}>

### Name of file:
<CODLAB_W2_1.s>

### Observation - Single Cycle
- <We have 3 arrays such as a[],b[],c[]. Array a&b have 5 elements. Array c has 5 null elements so that the resultant values are stored.>
- <We are adding the each elements of arrays a&b  having  same index numbers>
- <Next storing the added values in the array c[i], as we add each element.> 
### Register Mapping
- **<x1>:** <address of array a>
- **<x2>:** <address of array b>
- **<x3>:** <address of array c>
- **<x4>:** <0x06,0x07,0x08,0x09,0x0A>
- **<x5>:** <0x01,0x02,0x03,0x04,0x05>
- **<x6>:** <0x07,0x09,0x0B,0x0D,0x0F

### Data Mapping
- **<0x10000038>:** <0x0F>
- **<0x10000034>:** <0x0D>
- **<0x10000030>:** <0x0B>
- **<0x1000002C>:** <0x09>
- **<0x10000028>:** <0x07>
- **<0x10000024>:** <0x05>
- **<0x10000020>:** <0x04>
- **<0x1000001C>:** <0x03>
- **<0x10000018>:** <0x02>
- **<0x10000014>:** <0x01>
- **<0x10000010>:** <0x0A>
- **<0x1000000C>:** <0x09>
- **<0x10000008>:** <0x08>
- **<0x10000004>:** <0x07>
- **<0x10000000>:** <0x06>
________________________________________________________________________________________________________________________________

# Program 2:
### Statement: <Write an Assembly Program for addition of 2 64-bit numbers on RV32I>

### Name of file:
<CODLAB_W2_2>

### Observation - Single Cycle
- <First we are storing double word sized values in an array a >
- <Splitting each 64-bit number into 2 32-bit numbers and storing it in 4 different registers.>
- <then adding 2 lsb 32bit numbers and checking for carry?
- <Again adding the 2 32bit msb numbers and checking for carry>
- <if there is a carry its finally added the msb of 2 32bit numbers>
- <Finally storing the added 32bit lsb first and next 32bit msb  of final 64bit number in 2 different registers>

### Register Mapping
- **<x1>:** <address of array a>
- **<x2>:** <0xFFFFFFFF>
- **<x3>:** <0xFFFFFFFF>
- **<x4>:** <0xFFFFFFFF>
- **<x5>:** <0xFFFFFFFF>
- **<x6>:** <0xFFFFFFFE>
- **<x7>:** <0x00000001>
- **<x8>:** <0xFFFFFFFE>
- **<x9>:** <0x00000001>
- **<x10>:** <0xFFFFFFFF>
### Data Mapping
- **<0x10000018>:** <0x00000000>
- **<0x10000014>:** <0xFFFFFFFF>
- **<0x10000010>:** <0xFFFFFFFE>
- **<0x1000000C>:** <0xFFFFFFFF>
- **<0x10000008>:** <0xFFFFFFFF>
- **<0x10000004>:** <0xFFFFFFFF>
- **<0x10000000>:** <0xFFFFFFFF>

