# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
lab3i.s

### Observation - Single Cycle
-This RISC-V assembly code loads a 32-bit little-endian value from memory, extracts each byte, and rearranges them to create the corresponding big-endian format.
- It uses bitwise operations and shifts to properly position each byte. 
-The final big-endian result is stored in register x11.
 
### Register Mapping
- x10 : 0x12345678   
- x11 : 0x78563412


### Data Mapping
- x5 : 0x10000000
