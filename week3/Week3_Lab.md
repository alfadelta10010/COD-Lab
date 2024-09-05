# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
littletobig.s

### Observation - Single Cycle
- Byte Extraction: The program reads a 32-bit value from memory and extracts each byte from least to most significant.
- Endian Processing: It processes bytes in little-endian order, shifting the value to handle each byte.
- Loop Control: It continues this extraction and accumulation until the loop counter decrements to zero.
 
### Register Mapping
- x10: 0x10000000
- x11: 0x00000012
- x12: 0x00000000
- x13: 0x00000034
- x14: 0x78563400
- x15: 0x78563412

### Data Mapping
- 0x10000000: 0x12345678