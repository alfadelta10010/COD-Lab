# Program 1: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly
### Name of file:week3.s
### Observation - Single Cycle:--
Consider a word(32 bit value) Load the word  into a register
Perform 'and' operation on loaded value(word) with 0xFF
 Inside the loop, the least significant byte (LSB) of x11 is extracted using andi x14,x11,0xff. 
This byte is then shifted left by x13 bits (sll x16,x14,x13) to place it in its correct big endian position and added to x17, which accumulates the result.

The original number in x11 is right-shifted by 8 bits (srli x11,x11,8) to process the next byte. 
The shift amount x13 is decremented by 8, and the counter x20 is also decremented to keep track of the number of bytes left to process.

After the loop finishes reordering all 4 bytes, the final big endian result is stored back in memory at 4(x10) using the sw x17,4(x10) instruction.


### Register Mapping
x10--0x00000000
x11--0x00000000
x13--0xfffffff8
x14--0x00000012
x16--0x00000012
x17--0x78563412
x20--0x00000000

### Data Mapping
 0x10000004 : 0x78563412
 0x10000000 : 0x12345678


