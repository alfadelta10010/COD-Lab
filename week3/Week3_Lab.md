# Program 1: 
###Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
- endian.s

### Observation - Single Cycle
- code is converting little endian to big endian
the code is using byte masking to get the least significant byte from the word being converted
we are using branch statements to make a loop for this process
 
### Register Mapping
- x2:0x7ffffff0
- x3:0x10000000
- x10:0x10000000
- x13:0xfffffff8
- x14:0x00000012
- x16:0x00000012
- x17:0x78563412

### Data Mapping
- 0x00000000:0x10000517
- 0x00000004:0x00050513
- 0x00000008:0x00052583
- 0x0000000c:0x01868693
- 0x00000010:0x004a0a13
- 0x00000014:0x0ff5f713
- 0x00000018:0x00d71833
- 0x0000001c:0x010888b3

...
