# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file: prg2.s

### Observation - Single Cycle
The program loads the 32-bit value (0x12345678) and isolates each byte.
It shifts and reorders the bytes to convert the little-endian format to big-endian (0x78563412).
The resulting big-endian value is then stored back in memory.
 
### Register Mapping
- ** x1=0x00000010
     x12=0x00000012
     x13=0x78000000
     x16=0x00560000
     x17=0x00003400
     x18=0x00000012
     x20=0x78560000
     x22=0x00003412
     
### Data Mapping

   0x10000000 :0x78563412
