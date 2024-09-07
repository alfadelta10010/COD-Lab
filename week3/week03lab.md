# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
<lill_to_big.s>

### Observation - Single Cycle
- For the above code i have used the simple shift left logical and shift right logical;
- For combining the values of register i have used the 'or' operation;
- I have used the simple logic of shifting the bits accordingly to place the bytes from little endien to big endien; 
 
### Register Mapping
  X4:0X0BCDEF22
- x5:0x22000000
  x6:0x000BCDEF
  x7:0xEF000000
  x8:0x00EF0000
  x9:0x00000BCD
  x10:0xCD000000
  x11:0x0000CD00
  x12:0x0000000B
  x20:0x22EF0000
  x21:0x0000CD0B
  x22:0x22EFCD0B

### Data Mapping
- 0X00000034:0X015A6B33
  0X00000038:0X015A6B33
  0X0000002C:0x01825613
  0X00000028:0X01055593
  0X00000024:0X01849513
  0X00000020:0X01025493
  0X0000001C:0X0082EA33
  0X00000018:0X0083D413
  0X00000014:0X01831393
  0X00000010:0X00825313

...