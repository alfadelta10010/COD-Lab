# Program 1: 
### Statement:Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
COD-Lab/littleendian.s

### Observation - Single Cycle
- This code converts a 32bit value from little endian to big indian
- This code extracts individual bytes from the value 0x12345678 using bitwise AND operations and masks,
 shifts them to rearrange the byte order, and then recombines them.
- Input-0x12345678(stored in variable a)
output-0x785634129(stored in register x26)
 
### Register Mapping
- x10:0x10000000
- x11:0x10000004
- x12:0x10000008
- x13:0x1000000c
- x14:0x10000010
- x15:0x12345678
- x16:0x000000ff
- x17:0x0000ff00
- x18:0x00ff0000
- x19:0xff000000
- x20:0x78000000
- x21:0x00560000
- x22:0x00003400
- x23:0x00000012
- x24:0x78560000
- x25:0x00003412
- x26:0x78563412

### Data Mapping
- 0x10000020:0x00000000
- 0x10000018:0x00000000
- 0x10000010:0xff000000
- 0x1000000c:0x00ff0000
- 0x10000008:0x0000ff00
- 0x10000004:0x000000ff
- 0x10000000:0x12345678
