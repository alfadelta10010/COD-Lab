
### Statement: Convert a 32-bit value from Little Endian format using RISC-V

### Name of file: Ltbendian.s

### Observation - Single Cycle
- conversion from little-endian to big-endian format.
- The operations mainly use bitwise manipulation (and, srli, slli) to achieve byte extraction and placement.
- Storage of the final result in memory at an offset of 4 bytes from the original address.
 
### Register Mapping
- x2:0x7ffffff0
- x3:0x10000000
- x4:0x10000000
- x5:0x12345678
- x6:0x78000000
- x7:0x00123456
- x8:0x00560000
- x9:0x78560000
- x10:0x00001234
- x11:0x00003400
- x12:0x78563400
- x13:0x00000012
- x14:0x00000012
- x15:0x78563412

### Data Mapping
- 0x10000000-0x10000003
