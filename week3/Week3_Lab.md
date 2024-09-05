# Program 1: 
### Statement:
Convert a 32-bit input from Little endian to Big endian format in RISC V assembly.

### Name of file:
#week3_little_to_big.s

### Observation - Single Cycle
The input is a 32-bit number. It has to be stored in the reverse order. two bits are extracted from the input(MSB) left shifted and then the same is done for the
remaining 6 bits(3 pairs of bits)
 
### Register Mapping
x10 : 0x10000000
x11 : 0x00000000
x13 : 0xfffffff8
x14 : 0x00000012
x16 : 0x00000012
x17 : 0x78563412
x20 : 0x00000000

### Data Mapping
0x10000000 : 0x12345678
0x10000004 : 0x78563412

