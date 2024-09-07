# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
big_endian_loop.s

### Observation - Single Cycle
- A word is first declared under the data segment. The word is loaded into a register.
- The last 8 bits from the word is extracted every time when the loop runs. The 2 bytes are then stored into a register and shifted left to the msb. The main word is shifted right during every iteration removing the last 8 bits.
- 'bnez' is the branch instruction used(executed till the loop variable becomes 0).
 
### Register Mapping
- **x10:** 0x10000000
- **x12:** 0x00000012
- **x13:** 0x00000012
- **x14:** 0x78563412
- **x28:** 0x00000000

### Data Mapping
- **0x10000000:** 0x12345678
- **0x10000004:** 0x78563412

