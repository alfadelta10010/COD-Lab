Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file: pg1.s

### Observation - Single Cycle
The program loads the 32-bit value (0x1234ABCD) and isolates each byte.
It shifts and reorders the bytes to convert the little-endian format to big-endian (0x3412CDAB).
The resulting big-endian value is then stored back in memory.

### Register Mapping
- ** x1=0x00000000
     x12=0x000000cd
     x13=0x34000000
     x15=0x0000cd00
     x11=0x000000ab
     x14=0x00120000
     x10=0x10000000

### Data Mapping

   0x10000000 :0x7856341
