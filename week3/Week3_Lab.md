# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
lab_3~littletobig.s

### Observation - Single Cycle
- The program uses the concept of branch by which the repetition of code is conserved.
The branch is executed until the origin register x11 is equal to zero after right shifting and getting its values copied in a reverse order to the new register x12.
As risc-v uses little endian format by default the values of each byte is reverse indexed to make it look like big endian. 
 
### Register Mapping
x10:0x10000000
x11:0x00000000
x12:0x78563412
x13:0x00000012


### Data Mapping
0x10000004:0x78563412
0x10000000:0x12345678

...
