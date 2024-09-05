# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
<COD-Lab/Week3/littleendiantobigendian.s>

### Observation - Single Cycle
- First we load the word to be changed into a register 
- Shift Left by 8 bytes each time so that we can get the MSB to the left most part
- Shift Right by 8 bytes so that we can get the LSB to the right the  most side and we repeat this loop until the numbers are stored in separate registers
- Then we add all the registers in which the results of the shift right and shift left the values are stored and get the final conversion
 
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
