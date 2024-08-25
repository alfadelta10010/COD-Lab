# Program 1: 
### Statement: An Assembly Program for the C code.

### Name of file:
Program1

### Observation - Single Cycle
- The Assembly code creates an array in memory, with each element being a 16-bit (half-word) value.
- The assembly code loaded the half-word values from the array into registers “x6” through “x16”.
- All the values stored in registers x6 through x16 are added together.
- The “add” instructions accumulate the sum of all values in x17 and the result in x17 is copied into x16.
 
### Register Mapping:
- x6: 0x00001234
- x7: 0x00004567
- x8: 0x00007898
- x9: 0xffff87654d2
- x10:0x00005432
- x11:0x00002123
- x12:0x00003456
- x13:0x00006789
- x14:0xffff9876
- x15:0x00006543
- x16:0x00019897
- x17:0x00019897

### Data Mapping
- 0x10000014: 0x00003212
- 0x10000010: 0x65439876
- 0x1000000c: 0x67893456
- 0x10000008: 0x21235432
- 0x10000004: 0x87657898
- 0x10000000: 0x45671234



# Program 2: 
### Statement: An Assembly Program for the addition of 2 64-bit numbers on RV32I

### Name of file:
Program2

### Observation - Single Cycle
- These instructions load the addresses of “no1” and “no2” into registers “x10” and “x11”.
 - The instructions load the 32-bit (word) portions of the 64-bit values from “no1” and “no2” into registers.
-It adds the lower 32 bits of two 64-bit numbers, checks for a carry, and then adds the upper 32 bits along with any carry from the lower 32-bit addition.
 
### Register Mapping:
- x5: 0xffffffff
- x6: 0xffffffff
- x7: 0xffffffff
- x8: 0xffffffff
- x9: 0xfffffffe
- x12:0x00000001
- x13:0xfffffffe
- x14:0x00000001
- x15:0xffffffff

### Data Mapping
- 0x1000000c: 0xffffffff
- 0x10000008: 0xffffffff
- 0x10000004: 0xffffffff
- 0x10000000: 0xffffffff

