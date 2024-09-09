# Program 1: 
### Statement: Converting little endian to big endian

### Name of file:
week3.s

### Observation - Single Cycle
- mask the lsb bits and shift right to msb
  shift the original bit to right then mask thelsb bit again and shift that to 
  left by amount 2 less than previous
  add those two shifted values
  iterate this same thing again for the rest 2 values
### Register Mapping
- **x12** 0x00000078
  **x13** 0x00123456
  **x14** 0x78560000
### Data Mapping
- **0x10000000:** 0x12345678

...
