# Program 1: 
### Statement:Write an Assembly Program for addition of 2 words

### Name of file:
/COD-Lab/week1_1/addtwowords

### Observation - Single Cycle
- This program adds two words(32bits) and stores the result in the memory
- The program first loads 2 32bit values from a ,a+4 into register x10 and then performs addition
- The result(0x12345678+0x00000001=0x12345679) is then stored in memory.
 
### Register Mapping
- x10:0x10000000
- x11:0x00000001
- x12:0x12345678
- x13:0x12345679

### Data Mapping
- 
