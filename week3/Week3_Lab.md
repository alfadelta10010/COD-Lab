# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
Week3_Lab.md

### Observation - Single Cycle
- The program loads the 32-bit value 0x12345678 from memory into register x11, and initializes a loop counter (x3) to 3.
- In each loop iteration, a byte from x11 is extracted, added to x14, and x14 is shifted left to make space for the next byte. The next byte is prepared by shifting x11 right. This repeats 3 times.
- After the loop, the last byte is processed and added to x14, and the final result is written back into memory at an address 8 bytes after a.
 
### Register Mapping
- **x11:** 0x00000012
- **x12:** 0x00000034
- **x14:** 0x78563400
- **x15:** 0x78563412

### Data Mapping
- **0x10000000:** 0x12345678
- **0x10000008:** 0x78563412
...
