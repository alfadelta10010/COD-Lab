# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
week3.s

### Observation - Single Cycle
- The provided RISC-V assembly code reads a 32-bit word from memory (0x12345678), extracts its bytes, and rearranges them in reverse order. It then stores the resulting value (0x78563412) back into memory at an offset of 4 bytes from the original location. This operation is useful for tasks involving byte order manipulation, such as converting between little-endian and big-endian formats.
 
### Register Mapping
- x8:0x00000012
  x9:0x78000000
  x10:0x10000000
  x11:0x00560000
  x12:0x78560000
  x13:0x00003400
  x14:0x78563400
  x15:0x00000012
  x16:0x78563412
  

### Data Mapping
- 0x0000003c:0x00e78833
  0x00000038:0xff477793
  0x00000034:0x00845413
  0x00000030:0x00c68733
  0x0000002c:0x00869693
  0x00000028:0xff476793
  0x00000024:0x00845413
  0x00000020:0x00b48633
  0x0000001c:0x01059593
  0x00000018:0xff475793
  0x00000014:0x00845413
  0x00000010:0x01849493
  0x0000000c:0xff474793
  0x00000008:0x00052493
  0x00000004:0x00050513
  0x00000000:0x10000517


...
