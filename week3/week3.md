# Program 1: 
### Statement:
 Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
 week3.s

### Observation - Single Cycle
- 1) loading the data of array a,b,c to the respective registers x10,x11,x17
- 2) Creating a loop that performs the little edian to big endian conversion
- 3) storing the values back into the memory 

### Register Mapping
- x10: 0x10000000
- x11: 0x10000004
- x12: 0x00000000
- x13: 0x000000ff
- x14: 0x00000012
- x15: 0xfffffff8
- x17: 0x10000008
- x18: 0x10000007
- x19: 0xfffffff8

### Data Mapping
- 0x10000000: 0x78 
- 0x10000001: 0x56
- 0x10000002: 0x34 
- 0x10000003: 0x12 
- 0x10000004: 0xff
- 0x10000005: 0x00
- 0x10000006: 0x00
- 0x10000007: 0x00
- 0x10000008: 0x12
- 0x10000009: 0x34
- 0x1000000a: 0x56
- 0x1000000b: 0x78
