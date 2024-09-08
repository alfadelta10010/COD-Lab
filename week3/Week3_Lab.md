# Program 1: 
Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
littletobig.s

### Observation - Single Cycle
Collecting the right shifting and collecting the lsb of the data and trying to store in big endian form 

### Register Mapping
- x10 - 0x10000000
  x11 - 0x00000012
  x12 - 0x00003400
  x13 - 0x78563412

### Data Mapping
-  0x10000000 - 0x12345678
   0x10000004 - 0x78563412

...