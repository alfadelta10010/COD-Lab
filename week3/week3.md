# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly
### Name of file:
Week3Lab.s

### Observation - Single Cycle
Use the operation of AND to seperate out 2 bytes at a time
shift it with the calculated offset and then shift it to the left by that ammount
Finally add the contents in all registers to obtain the converted value

### Register Mapping
- **x11:** 0x12345678
- **x12:** 0x78563412
- **x13:** 0x00560000
- **x14:** 0x00003400
- **x15:** 0x00000012

### Data Mapping
- **0x10000000:** 0x12345678
- **0x10000008:** 0x78563412
...
