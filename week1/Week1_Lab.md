# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:COD-Lab/week1/program1.s

### Observation - Single Cycle
- 1)loading the data to the memory and storing that address in x10 register
  2)loading the data to the register x11 & x12 
  3)adding the data and storing that result in x13 ans storing back to memory
 
### Register Mapping
- x10 : 0x10000000
- x11 : 0x12345678
- x12 : 0X23456789
- x13 : 0x3579be01

### Data Mapping
- 0x10000000 : 0x12345678
- 0x10000004 : 0x23456789
- 0x10000008 : 0x3579be01

# Program 2:
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:COD-Lab/week1/program2.s

### Observation - Single Cycle
- 1)loading the data to the memory and storing that address in x10 register
  2)loading the data to the register x11 & x12
  3)adding the data and storing that result in x13 ans storing back to memory

### Register Mapping
- x10 : 0x10000000
- x11 : 0x00001234
- x12 : 0X00002345
- x13 : 0x00003579

### Data Mapping
- 0x10000000 : 0x23451234
- 0x10000004 : 0x00003579

# Program 3:
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:COD-Lab/week1/program3.s

### Observation - Single Cycle
- 1)loading the data to the memory and storing that address in x10 register
  2)loading the data to the register x11 & x12
  3)adding the data and storing that result in x13 ans storing back to memory

### Register Mapping
- x10 : 0x10000000
- x11 : 0x00000002
- x12 : 0X0000000a
- x13 : 0x0000000c

### Data Mapping
- 0x10000000 : 0x000c0a02

# Program 4:
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:COD-Lab/week1/program4.s

### Observation - Single Cycle
- 1)# loading base address of a and b to x10 and x11
  2)loading the unsigned data to the register x12 & x13
  3)loading the signed data to the register x14 & x15

### Register Mapping
- x10 : 0x10000000
- x11 : 0x10000002
- x12 : 0X0000ffff
- x13 : 0x00000005
- x14 : 0xffffffff
- x15 : 0x00000005

### Data Mapping
- 0x10000000 : 0x0005ffff
