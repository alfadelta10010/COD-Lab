
# Program 1: 
### Statement: assembly program for addition of 2 words

### Name of file:
week1i.s

### Observation - Single Cycle
- loads the address of a in x10
- loads the words with a offset of 0 and 4 into x10 register
- adds the data in x2 and x3, the value of addition is present in x4
 
### Register Mapping
- x2 : 0x00000000
- x3 : 0x22222222
- x10:0x10000000

### Data Mapping
- - 0x00000014 :0x00000000
- 0x00000010 :0x00310233
- 0x0000000c : 0x00452183
- 0x00000008 :0x00052103
- 0x00000004 :0x00050513
- 0x00000000 :0x10000517

# Program 2: 
### Statement: assembly program for addition of 2 halfwords 

### Name of file:
week1ii.s

### Observation - Single Cycle
- loads the address of a into x10
- loads the data into x10 register with a offset of 0 and 2
- adds the two data values and is stored in register x4
 
### Register Mapping
- x2:0x0000
- x3 : 0x3333
-x4 :0x3333


### Data Mapping
-0x00000014: 0x00000000
-0x00000010:0x00218233
-0x0000000c:0x00251183
-0x00000008:0x00051103
-0x00000004:0x00050513
-0x00000000:0x10000517






# Program 3:
### Statement: assembly program for addition of 2 bytes

### Name of file:
week1iii.s

### Observation - Single Cycle
- loads the address of a
- adds the 2 byte size numbers stored in registers x2 and x3
- the sum is present in register x4
 
### Register Mapping
- x2: 0x11
-x3: 0x33
-x4:0x44

### Data Mapping
- 0x00000014:0x00000000
- 0x00000010:0x00218233
- 0x0000000c: 0x00150183
- -0x00000008:0x00050103
- -0x00000004:0x00050513
- 0x00000000:0x10000517


# Program 4:
### Statement: write an assembly program and analyze the format of storing signed and unsigned words,half words and byte data types

### Name of file:
week1iv.s

### Observation - Single Cycle
- the data memory has a word a halfword that is signed and unsigned and a byte that is signed and unsigned
-their address and values are then respectively loaded into x10,x11,x12
- these values are then stored into registers with the syntax depending on the size of the data
### Register Mapping
- x2: 0x00000000
-x3:0x0101
-x4:0x0303
-x5:0x34
-x6:0x11


### Data Mapping
-0x00000038 :  0x00560123
-0x00000034 : 0x00459323
-0x00000030  : 0x00359223
-0x0000002c :0x00252223
-0x00000028 : 0x00164303
-0x00000024 : 0x00060283
-0x00000020 : 0x0025d203
-0x0000001c : 0x00059183
0x00000018  : 0x00052103
0x00000014  : 0xff860613
0x00000010  : 0x10000617
0x0000000c  : 0xffc58593
0x00000008  :  0x10000597
0x00000004  :0x00050513
0x00000000  :0x10000517
 


