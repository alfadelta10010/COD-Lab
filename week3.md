# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
lab3.s

### Observation - Single Cycle
--> The main observation is that the byte sequence is reversed. The LSB in Little Endian becomes the MSB in Big Endian and vice versa.
--> The number of bytes remains the same during the conversion, only their positions are swapped.
--> Here it involves bit-level extraction (masking) and shifting to rearrange the bytes,
 but the actual value of individual bytes does not change—only their order does.


### Register Mapping
x10 - 0x10000000
x11 - 0x12345678
x12 - 0x78563412
x13 - 0x00560000
x14 - 0x00003400
x15 - 0x00000012

### Data Mapping
0x10000000 - 0x12345678
