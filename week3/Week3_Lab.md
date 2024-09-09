# Program 1: 
### Statement: 
Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
masking_bigendian.s

### Observation - Single Cycle
1. to convert little endian to big endian we use the concept of masking 
2. we shift the required number to the msb 
3. then add the values to a register 
4. and the counter then gets updated 
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
      x9                         0x00000000
      x10                        0x10000000
      x11                        0x10000004
      x12                        0x00000004
      x13                        0x00100000
      x14                        0x00000000
      x15                        0x00001000
      x16                        0x00000000
      x17                        0x00000010
      x20                        0x40000000
      x22                        0x00000000
      x23                        0x00000010

### Data Mapping
- **<Memory Address>:** <Value stored>
        0x10000008         0x00000000
        0x10000004         0x00000000
        0x10000000         0x12345678
