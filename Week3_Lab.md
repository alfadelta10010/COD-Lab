# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly
### Name of file:
qn1.s

### Observation - Single Cycle
1) Load the word to be changed into a register
2) Shift Left by 8 bytes each time so that we can get the MSB to the left most part
3) Shift Right by 8 bytes so that we can get the LSB to the right the most side
4) Repeat until the numbers are stored in separate registers
5) Then add all the registers in which the results of the shift right and shift left the values are stored 
6) little endian is convete into big endian.

### Register Mapping
- **x11:** 0x12345678
- **x12:** 0x78563412

### Data Mapping
- **0x10000000:** 0x78563412
