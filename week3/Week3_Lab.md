# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
Week3_Lab.s

### Observation - Single Cycle
- Extraction of each byte using andi operation
- Initially shifting the least significant to the most significant  bit
- Repeating the same with srli with each bit until its reversed from little endian to big endian
 
### Register Mapping
- **x10:** 12345678
- **x11:** 78563412
- **x12:** 00000012

### Data Mapping
- **0x10000000:** 0x12345678

