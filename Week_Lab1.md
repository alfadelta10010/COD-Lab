# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
addword.s

### Observation - Single Cycle
-load address of a into x10 register
-load words into x10 register with a offset of 4
-adding words in x11 and x12 and storing in x13
 
### Register Mapping
-x11: 0x00000001
-x12: 0x12345678
-x13: 0x12345679

### Data Mapping
- x10: 0x10000000

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
addhalfword.s

### Observation - Single Cycle
-load address of a into x10 register
-load half word in x11 and x12 registers with offset 2
-add and store x11 and x12 into x13 register 
 
### Register Mapping
-x11: 0x00000001
-x12: 0x00001234
-x13: 0x00001235

### Data Mapping
-x10: 0x10000000

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
addbyte.s

### Observation - Single Cycle
-load address of a into x10 register
-load byte  in x11 and x12 registers with offset 1
-add and store x11 and x12 into x13 register
 
### Register Mapping
-x11:0xFD
-x12:0x01
-x13:0xFE

### Data Mapping
-x10:0x10000000

# Program 4: 
### Statement:Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
signedunsigned.s

### Observation - Single Cycle
-loading address of byte,half word and word in registers x10,x11,x12
-loading and storing unsigned byte,half word and word
-loading and storing signed byte,half word and word 
 
### Register Mapping
-x2: 0x00000001
-x3: 0x00001101
-x4: 0x00000003
-x5: 0x00000034
-x6: 0x00000011

### Data Mapping
-x10: 0x10000000
-x11: 0x10000004
-x12: 0x10000008
 
