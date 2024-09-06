# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:littletobigendian.s


### Observation - Single Cycle
- The program loads the 32-bit word stored at memory address a (which is 0x12345678) into register x11. It also initializes register x12 with the value 3 as it needs to be shifted 3 times.

- In a loop, the program extracts the least significant byte of the value in x11 using andi x13, x11, 0xFF, adds this byte to x14, and then shifts x14 to the left by 8 bits. The value in x11 is shifted right by 8 bits to process the next byte on the subsequent iteration. 

- After the loop, the program adds the remaining LSB of x11 (now in x15) to the result in x14. The result in x15 represents the final computed value from processing the original 32-bit integer 

### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00000012
- **x12:** 0x00000000
- **x13:** 0x00000034
- **x14:** 0x78563400
- **x15:** 0x78563412

### Data Mapping
- **0x10000000:** 0x12345678

