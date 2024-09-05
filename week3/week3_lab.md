# Program 1: 
### Statement:Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
week3_lab.s

### Observation - Single Cycle
- The code loads the 32-bit value 0x12345678 stored at the address a into register x11.
- Inside the loop (back:), the least significant byte of x11 is extracted using andi, added to x14, then shifted left by 8 bits (slli) to make space for the next byte. The remaining bytes of x11 are shifted right by 8 bits (srli) after each iteration, and this process continues for three bytes.
- After the loop, the last byte of x11 is processed, and its value is added to x14 to get the final result in x15.
 
### Register Mapping
- x10 = 0x10000000
- x11 = 0x00000012
- x12 = 0x00000034
- x14 = 0x78563400
- x15 = 0x78563400

### Data Mapping
- 0x10000000 = 0x12345678
