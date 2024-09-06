# Week 3 - Assignment

- File name: Week3_Lab.md
# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly
### Name of file: week3b.s


### Observation - Single Cycle
    For conversion srl and sll are used 
    andi operation for masking the bits 
    
### Register Mapping
    x11 = 0x12345678
    x12 = 0x78563412

### Data Mapping
    Address       Word 
    0x10000000  0x12345678



