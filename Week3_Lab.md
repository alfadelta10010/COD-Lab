# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
lilbigendian.s

### Observation - Single Cycle
- 1. The program loads a 32-bit Little Endian value from memory into a register.
  2. It extracts each byte, shifts them to their correct positions for Big Endian format and combines them.
  3. The final 32-bit value in Big Endian format is stored in the destination register.
 
### Register Mapping
- x5:0x12345678
  x6:0x78563412

### Data Mapping
- 0x10000000: 0x12345678
  0x10000004: 0x78563412
...
