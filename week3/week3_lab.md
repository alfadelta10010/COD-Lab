# Program 2: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
    week3_lab.s

### Observation - Single Cycle
- we extract each byte using 0xFF for masking it
- then we shift it accordingly to the desired position and combine it together
- result is stored

### Register Mapping
- **<Register Number Used>:** <Value stored>
- **x11:** 0x12345678
- **x12:** 0x78563412
- **x13:** 0x00560000
- **x14:** 0x00034000
- **x15:** 0x00000012
- **x10:** 0x10000000


### Data Mapping
- **<Memory Address>:** <Value stored>
- **0x10000000:**0x78563412