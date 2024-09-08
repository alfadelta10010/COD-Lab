# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
lil endian to big endian

### Observation -
- The code loads a number and performs AND operation on it with the biggest 8-bit number.
- It then shifts the result to the right.
- It continues to do this untile the number is reversed.
 
### Register Mapping
- x10 - 0x10000000
- x12 - 0x00000000
- x13 - 0x00000012
- x14 - 0x00000012
- x15 - 0xfffffff8
- x16 - 0x78563412
- x20 - 0x00000004
- x21 - 0x00000004
### Data Mapping
- 0x10000004 - 0x78563412
- 0x10000000 - 0x12345678
