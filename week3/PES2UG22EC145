###Program 1
Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

###Name of the file
week3a.s

### Observation - Single Cycle
*The main observation is that the byte sequence is reversed. The LSB in Little Endian becomes the MSB in Big Endian and vice versa.
*The number of bytes remains the same during the conversion, only their positions are swapped.
*Here it involves bit-level extraction (masking) and shifting to rearrange the bytes,
but the actual value of individual bytes does not change—only their order does.

### Register Mapping
x2  - 0x7ffffff0
x3  - 0x10000000
x10 - 0x10000000
x11 - 0x25150307
x12 - 0x07031525
x13 - 0x00000025

### Data Mapping
0x10000000 - 0x07031525
