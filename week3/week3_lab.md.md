# Program1:
### Statement : <Convert a 32-bit value from Little Endian to big endian format using RISC-V assembly>

### Name of the file:
<lab3_prog1.s>

### Observation - Single cycle
 < We are extracting least significant byte from the given number by using the andi and storing it in a register then we shift the result by 24 bits then we shift the original number by 6 bits towards right then again repeat the process from begining by anding and shifting bits accordingly , by doing this we successfully convert a 32-bit little Endian to Big-Endian > 

### Register Mapping 
<x10> - <0x10000000>
<x11> - <0x00000012>
<x12> - <0x00000034>
<x13> - <0x78000000>
<x14> - <0x00560000>
<x15> - <0x78563400>

### Data Mapping

<0x10000000> - <0x78563412>


