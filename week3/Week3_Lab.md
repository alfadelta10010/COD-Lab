# Program 1: 
### Statement: <Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly>

### Name of file:
<lab4_littleendian_bigendian.s>

### Observation - Single Cycle
- <Write 3 statements explaining what the assembly program is doing>
- we load the word stored in the memory to a register x12 and perform the andi operation with 0xff to isolate the last 2 bytes in another register x13

- x12 is shifted to the right to remove the value that was just taken out and the process is repeated until there exists only 0's in the register

- the value stored in x13 is shifted left by a factor of x15, whose value decreases by 2 bytes every iteration

### Register Mapping
- **<Register Number Used>:** <Value stored>
-    x10  0x10000000
     x12  0x00000000
     x13  0x00000012
     x14  0x00000012
     x15  0xfffffff8
     x16  0x78563412
     x20  0x00000004
     x21  0x00000004
### Data Mapping
- **<Memory Address>:** <Value stored>
    0x10000000  0x12345678
    0x10000004  0x78563412
...