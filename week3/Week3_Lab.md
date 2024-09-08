# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
little_big.s

### Observation - Single Cycle
- converting 0x12345678  which is little endian to big endian
- load address of the number into x10
- used anding, oring and shift lift immediate operations to perform the above program
 
### Register Mapping
- x10: 0x10000000
- x11: 0x10000004
- x12: 0x12345678
- x13: 0x78563412
- x15: 0x00005600
- x17: 0x10000008
- x18: 0x0000ff00
- x19: 0x00560000
- x20: 0x1000000c
- x21: 0x00ff0000
- x22: 0x00003400
- x23: 0x10000010
- x24: 0xff000000
- x25: 0x00000012

### Data Mapping
- 0x10000010:0xff000000
- 0x1000000c:0x00ff0000
- 0x10000008:0x0000ff00
- 0x10000004:0x00000000
- 0x10000000:0x12345678
