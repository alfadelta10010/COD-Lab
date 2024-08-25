# Program 1: 
### Statement:Write an Assembly Program for addition of 2 bytes

### Name of file:
assign3

### Observation - Single Cycle
- The code loads the address of the variable holding the bytes.
- It then loads the bytes into two registers.
- Then it adds and saves the sum of the bytes.
 
### Register Mapping
- x10 - 0x100000000
- x11 - 0x00000033
- x12 - 0x00000055
- x13 - 0x00000088

### Data Mapping
- 0x10000004 - 0x00000000
- 0x10000000 - 0x00885533
