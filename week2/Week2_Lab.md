# Program 1: 
### Statement: Write a program c[i]=a[i]+b[i] assume length of array 5

### Name of file:prog1.s

### Observation - Single Cycle
- the 5 elements of array a and b are added in this program. the 1st element of a and b are added and stored as the first element of c array. Similarly all the elements of array a and b are added and are stored in the array c element respectively.

### Register Mapping
- x10:0x10000000
- x11:0x10000014
- x12:0x10000028
- x13:0x33242231
- x14:0x11111111
- x15:0x00120002
- x16:0x12020306
- x17:0x33412003
- x18:0x12333422
- x19:0x44353342

### Data Mapping
- 0x100000000:0x00120001
- 0x100000004:0x12020304
- 0x100000008:0x33412000
- 0x10000000c:0x11323321
- 0x100000010:0x33242231
- 0x100000014:0x00000001
- 0x100000018:0x00000002
- 0x10000001c:0x00000003
- 0x100000020:0x01010101
- 0x100000024:0x11111111
- 0x100000028:0x00120002
- 0x10000002c:0x12020306
- 0x100000030:0x33412003
- 0x100000034:0x12333422
- 0x100000038:0x44353342


# Program 2:
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:prog2.s

### Observation - Single Cycle
- loading address of two double words in registers x8  and x9
- loading each double word into 2  registers each of word size
- It adds the lower 32 bits of two 64-bit numbers, checks for a carry, and then adds the upper 32 bits along with any carry from the lower 32-bit addition.

### Register Mapping
- x8:0x10000000
- x9:0x10000008
- x11:0xffffffff
- x12:0xffffffff
- x13:0xffffffff
- x14:0xffffffff
- x15:0xfffffffe
- x16:0x00000001
- x17:0xfffffffe
- x18:0xffffffff
- x19:0x00000000
### Data Mapping
- 0x1000000c: 0xffffffff
- 0x10000008: 0xffffffff
- 0x10000004: 0xffffffff
- 0x10000000: 0xffffffff
