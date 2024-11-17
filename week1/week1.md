# Program 1: 
### Statement: #litiile endian to big endian >

### Name of file:
<prog_1.s>

### Observation - 
- <The program extracts each byte from the little-endian 32-bit number 0x12345678.
It rearranges the bytes to form the equivalent big-endian representation.
The result, 0x78563412, is stored back in memory

### Observation - Single Cycle
- **Cycles:** <17> 
- **Frequency:** 10.31 Hz
- **CPI:** <1>
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 22
- **Frequency:** 10.42Hz
- **CPI:** 1.29
- **IPC:** 0.773

### Memory Mapping
- **<0x10000000>:** <0x78563412>

### Register Mapping
- **<x2>:** <0x7ffffff0>
    x3      <0x10000000>
    x10      0x10000000
    x12      0x00000012
   x13       0x78000000
   x16       0x00560000
  x17        0x00003400
x 18        0x00000012
x20         0x78560000
x21		0x00003412
x22 		0x78563412


### Snapshot
https://ibb.co/Kq2C1DQ

===============================================================================


### Statement: <Write an Assembly Program for addition of 2 64-bit numbers on RV32I>

### Name of file:
 prg_2.s

### Observation-
 - <We are computing the sum of two 64-bit numbers on an RV32I processor, which has 32-bit registers. The 64-bit numbers are split into two 32-bit parts: the (lsb)lower 32 bits and the upper 32 bits(msb). We load these parts using `lw`, add the lower 32 bits first, and handle any carry using `sltu`. The upper 32 bits are then added along with the carry, and the final result is stored in memory.>

### Observation - 5 stage
- **Cycles:** <17> 
- **Frequency:** 10.99 Hz
- **CPI:** <1.31>
- **IPC:** 0.765

### Observation - single cycle
- **Cycles:** 13
- **Frequency:** 9.52Hz
- **CPI:** 1
- **IPC:** 1


### Register Mapping 
- *<x10>:* <0x10000000>
- *<x11>:* <0x87654321>
- *<x12>:* <0x12345678>
- *<x13>:* <0x87654321>
- *<x14>:* <0x12345678>
- *<x15>:* <0x00000001>
- *<x16>:* <0x2468acf0>
- *<x18>:* <0x2468acf0>
- *<x19>:* <0x0eca8642>

### Data mapping
- *<0x10000014>:* <0x2468acf0>
- *<0x10000010>:* <0x12345678>
- *<0x1000000c>:* <0x12345678>
- *<0x10000008>:* <0x87654321>
- *<0x10000004>:* <0x12345678>
- *<0x10000000>:* <0x87654321>

spanshot: https://ibb.co/Gt2q4xd

===========================================================================
