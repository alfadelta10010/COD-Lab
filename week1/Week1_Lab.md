# Program 1: 
### Statement:Write an Assembly Program for addition of 2 words

### Name of file:
COD_Lab/week1/prog1.s

### Observation - Single Cycle
- This program adds two 32bit numbers(word) (0x00000001 and 0x12345678).
- The numbers are stored in register x11 ad x12 respectively.
- The result(0x12345679) is stored in the register x13 and then moved to memory.
 
### Register Mapping
- x11:0x00000001
- x12:0x12345678
- x13:ox12345679

### Data Mapping
- 0x000000180:0x0000000
- 0x00000014:0x00d52423
- 0x00000010:0x00c586b3
- 0x0000000c:0x00452603
- 0x00000008:0x00052583
- 0x00000004:0x00050513
- 0x00000000:0x10000517


# Program 2: 
### Statement:Write an Assembly Program for addition of 2 half words

### Name of file:
COD_Lab/week1/prog2.s

### Observation - Single Cycle
- The program adds two hald words (0x0001 and 0x1234) stored in register x11 ans x12 respectively.
- the result(0x00001235) is stored in register x13
-  The result is then moved to memory. 
### Register Mapping
- x11:0x00000001
- x12:0x00001234
- x13:0x00001235

### Data Mapping
- 0x00000014:0x00000000
- 0x00000010:0x00d52423
- 0x0000000c:0x00c586b3
- 0x00000008:0x00451603
- 0x00000004:0x00050513
- 0x00000000:0x10000517


# Program 3: 
### Statement:Write an Assembly Program for addition of 2 bytes

### Name of file:
COD_Lab/week1/prog3.s

### Observation - Single Cycle
- This program adds two signed numbers of byte size(0xfd and 0x01).
- The numbers are stored in registers x11 abd x12 respectively using sign extension
- The result(0xfe) is stored in register x13.
 
### Register Mapping
- x11:0xfffffffd
- x12:0x00000001
- x13:0xfffffffe

### Data Mapping
- 0x00000018:0x00000000
- 0x00000014:0x00d00123
- 0x00000010:0x00c586b3
- 0x0000000c:0x00150603
- 0x00000008:0x00050583
- 0x00000004:0x00050513
- 0x00000000:0x10fe0517


# Program 4: 
### Statement:Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
COD-Lab/week1/prog4.s

### Observation - Single Cycle
-This program depecits the different ways in which signed and unsigned numbers are loaded and stored in memory.
-  word is loaded in regitser x13,half word in x14,byte in x15,unsigned byte in x16 and unsiged half word in x17.
- store operation has does not have different intruction for  signed unsigned numbers.
 
### Register Mapping
- x13:0x00002468
- x14:0x00000000
- x15:0xfffffffe
- x16:0x00000001
- x17:0x0000abcd

### Data Mapping
- 0x00000044:0x00000000
- 0x00000040:0x00e59123
- 0x0000003c:0x00d52023
- 0x00000038:0x00f620a3
- 0x00000034:0x010787b3
- 0x00000030:0x00170713
- 0x0000002c:0x00d686b3
- 0x00000028:0x0005d883
- 0x00000020:0x00060783
- 0x0000000c:0x00058593
- 0x00000008:0x10000597
- 0x00000000:0x10000517

