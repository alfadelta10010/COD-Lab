# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
labweek3

### Observation - Single Cycle
-taking 32 bit number from the memory into register and loopcounter .in each iteration bytes are shifted left and soon on.and final result stored back into memory
 
### Register Mapping
- x10 -0x10000000
x11 - 0x00000012
x12 -0x78563412
x13 - 0x00003400


### Data Mapping
- 0x10000004 - 0x78563412
   0x10000000 - 0x12345678

...