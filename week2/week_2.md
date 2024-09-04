# Program 1: 
### Statement:Write an Assembly Program for the following C code:
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
};
### Name of file:
    program1.s

### Observation - Single Cycle
- The code adds two 64-bit integers stored in an array a. It splits each 64-bit integer into upper and lower 32-bit halves, performs addition on the lower halves, and then on the upper halves, accounting for any carry from the lower half addition. The results are stored back in memory at specified offsets in the array a, with the final carry stored separately. 


### Register Mapping
- x11:0xffffffff
  x12:0xffffffff
  x13:0xffffffff
  x14:0xffffffff
  x15:0xfffffffe
  x16:0x00000001
  x17:0xfffffffe
  x18:0x00000001
  x19:0xffffffff
### Data Mapping
- 0x10000018:0x00000001
  0x10000014:0xffffffff
  0x10000010:0xfffffffe
  0x1000000c:0xffffffff
  0x10000008:0xffffffff
  0x10000004:0xffffffff
  0x10000000:0xffffffff;


# Program 2: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
    program2.s
### Observation - Single Cycle
*) The elements from two arrays `a` and `b` and stores the results in a third array `c`.
*) It iteratively loads elements from `a` and `b`, performs the addition, and stores the result back into `c`. The code processes five elements, using offsets to access each element in the arrays. The final state of array `c` contains the sums of the respective elements from `a` and `b`.

### Register Mapping
   x11:10000014
   x12:10000028
   x13:10000004
   x14:0x200004
   x15:0x300008


### Data Mapping
-0x10000038:0x30000008
 0x10000034:0x30000006
 0x10000030:0x30000004
 0x1000002c:0x30000002
 0x10000028:0x33333333
 0x10000024:0x20000004
 0x10000020:0x20000003
 0x1000001c:0x20000002
 0x10000018:0x20000001
 0x10000014:0x22222222
 0x10000010:0x10000004
 0x1000000c:0x10000003
 0x10000008:0x10000002
 0x10000004:0x10000001
 0x10000000:0x11111111
