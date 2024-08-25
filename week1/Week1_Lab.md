# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1q1.s

### Observation - Single Cycle
writing data(word) in data memory and then loading address
loading word in registers x11,x12 and performing add operation on these registers, result is stored in x13 destination register.
x16-register meant for checking carry. Later store the results with store instructions.
-  
### Register Mapping
- x11-0xffffffff
- x12-0xffffffff
- x13-0xfffffffe
- x16-0x00000001


### Data Mapping
-0x1000000c- 0x00000001
-0x10000008-0xfffffffe
-0x10000004-0xffffffff
-0x10000000-0xffffffff

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1q2.s

### Observation - Single Cycle
writing data(half word) in data memory and then loading address
loading half words in registers x11,x12 and performing add operation on these registers, result is stored in x13 destination register.
x16-register meant for checking carry. Later store the results with store instructions.
-  
### Register Mapping
- x11-0x00000135
- x12-0x00005674
- x13-0x000057a9
- x16-0x00000000

### Data Mapping

0x10000008-0x00000000
0x10000004-0x000057a9
0x10000000-0x56740135

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1q3.s

### Observation - Single Cycle
writing data(bytes) in data memory and then loading address
loading bytes in registers x11,x12 and performing add operation on these registers, result is stored in x13 destination register.
x16-register meant for checking carry. Later store the results with store instructions.
-  
### Register Mapping
- x11-0x00000034
- x12-0x00000045
- x13-0x00000079
- x16-0x00000000

### Data Mapping

0x10000008-0x79004534
0x10000004-0x10000000

 Program 4: 
### Statement:Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
week1q4.s

### Observation - Single Cycle
writing data(word, half words, bytes) in data memory and then loading address
format for loading words is 'lw' for both signed and unsigned(signed bytes),lbu(unsigned bytes),lh(signed halfword),lhu(unsigned half word).sw(stores word),sh(stores half word),sb(stores byte)

### Register Mapping
- x11-0x00012345
- x12-0x00001234
- x13-0x00000012
- x14-0x00000012
- x15-0x00000000

### Data Mapping

0x10000008-0x00001212
0x10000004-0x00012345
0x10000000-0x00012345


















