# Program 1: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
 64 bit addition.s

### Observation - Single Cycle
- Load lower 32 bits of first number from memory into x10
- Load upper 32 bits of first number from memory into x11
- Load lower 32 bits of second number from memory into x12
- Load upper 32 bits of second number from memory into x13

- Add lower parts of both numbers and store result in x14
- Set x15 to 1 if x14 < x10 (check for carry from lower addition)
- Add upper parts of both numbers and store result in x16
- Set x17 to 1 if x16 < x11 (check for carry from upper addition)
- Add carry from lower addition to upper part sum

- Store lower part of result from x14 to memory
- Store upper part of result from x16 to memory
- Store carry flag (0 or 1) to memory
 
### Register Mapping
- x4  : 0x10000000
- x10 : 0x88748371
- x11 : 0x93793166
- x12 : 0x60282002
- x13 : 0x00000086
- x14 : 0xe89ca373
- x15 : 0x00000000
- x16 : 0x937931ec
- x17 : 0x00000000
- x21 : 0x10000010

### Data Mapping
- 0x1000001c : 0x00000000
- 0x10000018 : 0x00000000
- 0x10000014 : 0x937931ec
- 0x10000010 : 0xe89ca373
- 0x1000000c : 0x00000086
- 0x10000008 : 0x60282002
- 0x10000004 : 0x93793166
- 0x10000000 : 0x88748371
