# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
week3_program.s

### Observation - Single Cycle
- Extracts individual bytes from a 32-bit little-endian value.
- Reverses the byte order using a loop.
- Combines bytes to form the big-endian equivalent.
 
### Register Mapping
- **x5:** 0x10000000
- **x6:** 0x000000ab
- **x7:** 0x01efcdab
- **x8:** 0x00000000
- **x9:** 0x000000ab

### Data Mapping
- **0x0000001c:** 0x0ff37493 
- **0x00000018:** 0x00835313
- **0x00000014:** 0x00839393
- **0x00000010:** 0x00300413
- **0x0000000c:** 0x0ff37393
- **0x00000008:** 0x0002a303
- **0x00000004:** 0x00028293
- **0x00000000:** 0x10000297
 
