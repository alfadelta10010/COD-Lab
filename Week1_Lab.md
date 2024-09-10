
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

### Data Mapping
- x10 : stores the address of a

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
- x10: loads the address of a 

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
- x10: stores the address of a

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
-x10: loads address of a
-x11: loads address of b
-x12:loads address of c
