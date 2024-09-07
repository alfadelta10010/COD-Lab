
# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
little_to_big.s

### Observation - Single Cycle
-this program is converting a 32-bit value from little endian to big endian format using RISC-V assembly
 
### Register Mapping
- x10 : 0x10000000
  x11 : 0x00000000
  x13 : 0xfffffff8
  x20 : 0x00000000
  x14 : 0x00000012
  x16 : 0x0x000012
  x17 : 0x78563412

### Data Mapping
- 0x10000004 : 0x78563412
  0x10000000 : 0x12345678
