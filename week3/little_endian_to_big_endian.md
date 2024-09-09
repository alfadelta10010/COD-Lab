# Program 1: 
### Statement: <Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly>

### Name of file:
<little_endian_to_big_endian.s>

### Observation - Single Cycle
1. the below code converts the little endian type of storing into data memory into big endian
2. first the word stored in memory is shifted to a register 
3. then using bit masking technique we extract each byte from the word and store it in the reverse order in the same memory location where the word was stored before
4. in little endian , ex: 0x12345678 is stored as byte0: 78 , byte1: 56 and so on , once the following program is executed the memory values get reversed. ex: byte0: 12, byte1: 34
 
### Register Mapping
- **<Register Number Used x5,x6,x7,x8 >:** <Value 0x10000000, 0x12345678,0x000000FF,this value changes in each iteration>

### Data Mapping
- **<Memory Address 0x10000000>:** <Value stored 0x12345678 before excecution , 0x78563412>

...
