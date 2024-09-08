WEEK3:

# Program 1: 
### Statement: An Assembly Program to convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly.

### Name of file:
Program1

### Observation - Single Cycle
- The “a” label stores a 32-bit word. The “m1”, “m2”, “m3”, and “m4” labels store masks for isolating each byte of a 32-bit word. The “la” instructions load the addresses of the data into registers x10 to x14.
- The “lw” instructions load the values from the addresses into registers x15 to x19. Then operations extract and shift each byte of the 32-bit value.
 -The “add” instructions add the shifted values back together to form the final value.

### Register Mapping:
- x10: 0x10000000
- x11: 0x10000004
- x12: 0x10000008
- x13: 0x1000000c
- x14: 0x10000010
- x15: 0x12345678
- x16: 0x000000FF
- x17: 0x0000FF00
- x18: 0x00FF0000
- x19: 0xFF000000
- x20: 0x78000000
- x21: 0x78560000
- x22: 0x78563400
- x23: 0x78563412

### Data Mapping
- 0x10000020: 0x00000000
- 0x10000018: 0x00000000
- 0x10000010: 0xFF000000
- 0x1000000c: 0x00FF0000
- 0x10000008: 0x0000FF00
- 0x10000004: 0x000000FF
- 0x10000000: 0x12345678
