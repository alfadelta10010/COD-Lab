# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
program1.s

### Observation - Single Cycle
- - Loads two words from memory.
- Adds the two words and stores the result in a register.
- Stores the result back in memory
 
### Register Mapping
- x11:0x00000001
  x12:0x12345678
  x13:0x12345679

### Data Mapping
- 0x10000008:0x12345679
- 0x10000004:0x12345678
- 0x10000000:0x00000001;
