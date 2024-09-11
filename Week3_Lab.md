# Program 1: 
##statment:#write an assembly code to convert - Little endian to Big endian

### Name of file:
Week3.s


### Observation - Single Cycle
- The code loads the Little Endian value from memory into register x8.
- It then isolates each byte of the value using the andi instruction and the mask 0xFF.
- Each byte is then shifted to its appropriate position in the Big Endian format using the slli instruction.
- The shifted bytes are combined using the add instruction.
- Finally, the converted Big Endian value is stored back into memory at the address a +4

### Register Mapping
- x8:0x00000012
- x9:0x78000000
- x11:0x00560000
- x12:0x78560000
- x13:0x00003400
- x14:0x78563400
- x15:0x00000012
- x16:0x78563412


### Data Mapping

- 0x10000004:0x78563412
- 0x10000000:0x12345678

