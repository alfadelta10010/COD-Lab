# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
Little_Big_Endian.s
week3/MYFILES/Little_Big_Endian.s

### Observation - Single Cycle
- First data is loaded from memory to x2
- x5 has Value FF which is left shifted by 8 times for every set
- result is stored in x8, right shifted or left shifted based on position and added to x7
 
### Register Mapping
- x1 0x1000 0000
  x2 0x12345678
  x5 0xff000000
  x7 0x78563412
  x8 0x00000012

### Data Mapping
- 0x1000 0000 0x12345678
  0x1000 0004 0x78563412
...
