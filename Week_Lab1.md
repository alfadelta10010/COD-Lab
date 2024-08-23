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
-0x00000018:0x00000000
-0x00000014:0x00d52423
-0x00000010:0x00c586b3
-0x0000000c:0x00452603
-0x00000008:0x00052583
-0x00000004:0x00050513
-0x00000000:0x10000517

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
-0x00000018:0x00000000
-0x00000014:0x00d51223
-0x00000010:0x00c586b3
-0x0000000c:0x00251603
-0x00000008:0x00051583
-0x00000004:0x00050513
-0x00000000:0x10000517

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
-0x00000018:0x00000000
-0x00000014:0x00d00123
-0x00000010:0x00c586b3
-0x0000000c:0x00150603
-0x00000008:0x00050583
-0x00000004:0x00050513
-0x00000000:0x10fe0517

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
-0x0000003c:0x006601a3
-0x00000038:0x00560123
-0x00000034:0x00459323
-0x00000030:0x00359223
-0x0000002c:0x00252223
-0x00000028:0x00164303
-0x00000024:0x00060283
-0x00000020:0x0025d203
-0x0000001c:0x00059183
-0x00000018:0x00052103
-0x00000014:0xff860613
-0x00000010:0x10000617
-0x0000000c:0xffc58593
-0x00000008:0x10000597
-0x00000004:0x00050513
-0x00000000:0x10000517 
