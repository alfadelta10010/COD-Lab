# Program 1: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
assign2

### Observation - Single Cycle
- The code loads the address of the variable holding the half words.
- It then loads the half words into two registers.
- Then it adds and saves the sum of the two half words.
 
### Register Mapping
- x10 - 0x10000000
- x11 - 0x00000056
- x12 - 0x00002293
- x13 - 0x000022e9

### Data Mapping
- 0x10000004 - 0x000022e9
- 0x10000000 - 0x22930056
