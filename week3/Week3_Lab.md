# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly 

### Name of file:
week-3
### Observation - Single Cycle
**Load the Word**  
Begin by loading the word that needs transformation into a register.

**Shift Operations**  
- Perform a left shift by 8 bytes to position the most significant byte (MSB) at the leftmost part.
- Perform a right shift by 8 bytes to move the least significant byte (LSB) to the rightmost position.

**Repeat the Process**  
Continue performing the left and right shifts until each byte of the word is isolated into separate registers.

**Add the Results**  
Sum the values from all the registers to obtain the final converted result.
 
### Register Mapping
- **x2:** 0x7ffffff0
- **x3:** 0x10000000
- **x10:** 0x10000000
- **x11:** 0x00000012
- **x13:** 0x00000034
- **x14:** 0x78563400
- **x15:** 0x78563412

### Data Mapping
- **0x100000001** - 0x12345678