# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
Week3_Lab.s

### Observation - Single Cycle
- The loop processes each byte of the word by masking and shifting (`andi` and `srli`) to reverse the byte order.
- The byte shift operation (`slli x14, x14, 8`) constructs the big-endian result by shifting the previous byte left by 8 bits.
- The last `add x14, x14, x11` handles the final byte directly after exiting the loop, completing the endian conversion.
 
### Register Mapping
- **x11:** 0x00000012
- **x12:** 0x00000034
- **x14:** 0x78563412

### Data Mapping
- **0x00000000:** 10000517
- **0x00000004:** 00050513
- **0x00000008:** 00052583

...
