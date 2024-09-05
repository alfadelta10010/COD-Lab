# program 1:
### statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of the file: COD-Lab/week3/littlebigendianconverter.s

### Observation - Single Cycle
- This code converts a word stored in little endian to big endian
- It does this by byte masking and shifting by according values to appear as big endian
- A for loop is executing to add all the shifted values to get the final result.

### Register Mapping
- x10 : 0x10000000
- x11 : 0x10000004
- x12 : 0x00000000
- x13 : 0x00000004
- x14 : 0x00000004
- x17 : 0x00000089
- x18 : 0x78563412
- x23 : 0x00000008
- x24 : 0xfffffff8
- x25 : 0xfffffff8

### Data Mapping
- 0x10000000 : 0x12345678
- 0x10000004 : 0x78563412


