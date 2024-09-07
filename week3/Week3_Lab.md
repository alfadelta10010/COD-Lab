# Program 1: 
Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
code3_1.s

### Observation - Single Cycle
-> Little-endian to big-endian conversion involves reversing the byte order of a multi-byte value (here a 32bit or 4 byte value is considered). Variable 'a' is mapped to the 32-bit value (in little Endian format) and I have considered another variable 'b', initialised to 0, to store the big endian format of the value in 'a'. 
-> First copying of the address of the variable 'a' from memory is performed, into register x5. Similarly for variable 'b' as well. Then in variable x6 the value 0x000000ff is stored. Then loading of the 32 bit value is performed, onto register x7. 'and' operation is performed on registers x6 and x7 to obtain the LSB byte. Similarly the value in x7 is shifted right by 1 byte and then again operated with x6 with 'and' operation and stored in another register. This operation is repeated until we get all the individual bytes ,stored in the 'word' of data, into different registers
-> After extracting all the bytes, I stored it into the data memory, pointed by variable 'b', in such a way that the reversing of the byte order is performed.
 
### Register Mapping
x5:0x10000000
x28:0x10000004

x6:0x000000ff
x7:0x12345678
x18:0x00000078
x29:0x00123456
x19:0x00000056
x30:0x00001234
x20:0x00000034
x31:0x00000012
x21:0x00000012

### Data Mapping
0x10000000: 0x12345678
0x10000004: 0x78563412

