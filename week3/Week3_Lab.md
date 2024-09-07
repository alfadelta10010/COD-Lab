# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
- littletobig endian.s

### Observation - Single Cycle
- Declare variable 'a' and initialize it with 0x12345678
- Load the address of 'a' into register x4
- Load the value of 'a' into register x5
- Extract the LSB of x5 and store it in x6
- Shift the extracted byte to the MSB in x6
- Shift x5 right by 8 bits to move the second byte to the LSB, store in x7
- Extract the second byte from x7 and store it in x8
- Shift the extracted second byte to the second MSB in x8
- Add the first and second bytes (in x6 and x8) and store the result in x9
- Shift x5 right by 16 bits to move the third byte to the LSB, store in x10
- Extract the third byte from x10 and store it in x11
- Shift the extracted third byte to the third MSB in x11
- Add the result of the first two bytes (in x9) and the third byte (in x11), store in x12
- Shift x5 right by 24 bits to move the fourth byte (most significant) to the LSB, store in x13
- Extract the fourth byte from x13 and store it in x14
- Add the fourth byte (in x14) to the result of the first three bytes (in x12), store in x15
- Store the final result (sum of the bytes) at the address 4 bytes after 'a'
 
### Register Mapping
- x4: 0x10000000
- x5: 0x12345678
- x6: 0x78000000
- x7: 0x00123456
- x8: 0x00560000
- x9: 0x78560000
- x10:0x00001234
- x11:0x00003400
- x12:0x78563400
- x13:0x00000012
- x14:0x00000012
- x15:0x78563412

### Data Mapping
- 0x10000000 : 0x12345678
- 0x10000004 : 0x78563412
