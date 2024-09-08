# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
week3q.s

### Observation - Single Cycle:
- 0x12345678 in little-endian is manually rearranged by extracting each byte then shifting it to its appropriate position, and then combining them into a big-endian representation. 
- We extract the least significant byte, shift it to the most significant byte position, and repeat this process for the remaining bytes. 
- Finally, the converted value is stored in memory at the address offset by 4 from the original location.
 
### Register Mapping:
- (before conversion)
- **x10:** address of a
- **x11:** 0x12345678
- (during conversion)
- **x12:** intermediate values and the shifted bytes
- **x13:** added result
- (after conversion)
- **x13:** big endian value = 0x78563412 
- **x13:** finally stored at 0x10000004 (base address + offset)

### Data Mapping:
- **x10: 0x10000000:** 0x12345678
- **x13: 0x10000004:** 0x78563412