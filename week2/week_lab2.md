# Program 1: 
### Statement: <#adding two double word and generate a carry>

### Name of file:
<adding_doubleword.s>

### Observation - Single Cycle
- <# loading base address of a in x10
   # loading lsb of n1
   # loading msb of n1
   # loading lsb of n2
   # loading msb of n2
   # adding lsb's of n1 and n2 and storing the result in x15 reg
   # checking if the carry is generated during addition 
   # adding msb's of n1 and n2 and storing the result in x17
   # checking if the carry is generated during addition
   # addition of the added vale of msb and the carry geberated by addition of lsb
   # storing the msb of the 64bit result in the memory
   # storing the lsb of the 64 bit result in the memory
>
 
### Register Mapping
- **<x10>:** <0x10000000>
- **<x11>:** <0x14571346>
- **<x12>:** <0x93417124>
- **<x13>:** <0x96554573>
- **<x14>:** <0x75937248>
- **<x15>:** <0xaaac58b9>
- **<x16>:** <0x00000000>
- **<x17>:** <0x08d4e36c>
- **<x18>:** <0x08d4e36c>
- **<x19>:** <>0x0000001

### Data Mapping
- **<0x10000000>:** <0x14571346>
- **<0x10000004>:** <0x93417124>
- **<0x10000008>:** <0x96554573>
- **<0x1000000c>:** <0x75937248>
...
_____________________________________________________________________________________________________________________________________________________________________________________________

# Program 1: 
### Statement: <#write a program c[i]=a[i]+b[i] assume length of array 5>

### Name of file:
<addingarrayele.s>

### Observation - Single Cycle
- <the 5 elements of array a and b are added in this program. the 1st element of a and b are added and stored as the first element of c array. Similarly all the elements of array a and b are added and are stored in the array c element respectively.>
 
### Register Mapping
- **<x10>:** <0x10000000>
- **<x11>:** <0x10000014>
- **<x12>:** <0x10000028>
- **<x13>:** <respective value/data of that element of array a>
- **<x14>:** <respective value/data of that element of array b>
- **<x15>:** <added value of 1st element of a and b 0x00120002>
- **<x16>:** <added value of 2nd element of a and b 0x12020306>
- **<x17>:** <added value of 3rd element of a and b 0x33412003>
- **<x18>:** <added value of 4th element of a and b 0x12333422>
- **<x19>:** <added value of 5th element of a and b 0x44353342>

### Data Mapping
- **<0x100000000>:** <0x00120001>
- **<0x100000004>:** <0x12020304>
- **<0x100000008>:** <0x33412000>
- **<0x10000000c>:** <0x11323321>
- **<0x100000010>:** <0x33242231>
- **<0x100000014>:** <0x00000001>
- **<0x100000018>:** <0x00000002>
- **<0x10000001c>:** <0x00000003>
- **<0x100000020>:** <0x01010101>
- **<0x100000024>:** <0x11111111>
- **<0x100000028>:** <0x00120002>
- **<0x10000002c>:** < 0x12020306>
- **<0x100000030>:** <0x33412003>
- **<0x100000034>:** <0x12333422>
- **<0x100000038>:** <0x44353342>


...