# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
Week3_Lab.s

### Observation - Single Cycle
- First we load the word data into register x11 using load word (lw). We define an iterating variable in x3 to know when to stop the loop. Using andi instruction to mask the MSB we obtain the least significant byte into register x12. 
- We shift the extracted value to the left by required amount to get it towards MSB position and shift the original nummber to the right by 8 bits to remove the already extracted byte.
- Using branch if not equal to zero we can stop the loop when iterating variable hits 0. Finally we do the final masking and addition to complete the reversal of bytes. We write back this value into another location in data memory to be able to compare little endian with big endian order of storing data.
 
### Register Mapping
- **x11:** 0x00000012  &ensp; Final value (Right Shifted in every iteration of loop)
- **x12:** 0x00000034
- **x14:** 0x78563400
- **x15:** 0x78563412

### Data Mapping
- **0x10000000:** 0x12345678  &ensp; Little Endian
- **0x10000004:** 0x78563412  &ensp; Big Endian

...