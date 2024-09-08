# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
<COD-Lab/Week3/week3.s>

### Observation - Single Cycle
- First we load the word to be changed into a register.
- Shift left by 8 bytes each time to move the most significant byte to the leftmost position.
- Shift right by 8 bytes to move the least significant byte to the rightmost position, and repeat this process until each byte is stored in separate registers.
- Next, we add the values from all the registers where the results of the shift right and shift left operations are stored to obtain the final result.

### Register Mapping
- x10 - 0x10000000
- x12 - 0x12345678
- x14 - 0x78000000
- x15 - 0x00123456
- x16 - 0x00560000
- x17 - 0x00001234
- x18 - 0x00003400
- x19 - 0x00000012
- x20 - 0x00563400
- x21 - 0x78000012
- x22 - 0x78563412

### Data Mapping
- 0x10000000 - 0x12345678

...
