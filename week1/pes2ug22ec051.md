# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
asg1a.s

### Observation - Single Cycle
- first we load the word data into register and then take the address one by one into two  different register and then adding the data into another register and then storing back the data into memory

### Register Mapping
- **<Register Number Used : 03 that are x10,x11and x12 and the Value stored are follow 0x00000001,0x00000002,0x00000003

### Data Mapping
- **0x10000000and 0x10000004and 0x00000001 and 0x00000003


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
asg1b.s

### Observation - Single Cycle
- first we load the half  data into register and then take the address one by one into two  different register and then adding the data into another  register and then storing back the data into memory
 
### Register Mapping
- **<x10,x11,x12 and values are 0x10000000,0x00000002,0x000000004

### Data Mapping
- **<Memory Address:0x1000000 and 0x10000004 Value stored are 0x10000000 and 0x00000004

# Program3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:asg1c.s


### Observation - Single Cycle
- first we load the byte  data into register and then take the address one by one into two  different register and then adding the data into  another  register and then storing back the data into memory 
### Register Mapping
- x10,x11,x12 and values are 0x10000000,0x00000004,0x000000006
### Data Mapping
- **:0x1000000 and 0x10000004 Value stored are 0x10000000 and 0x00000004
# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
asg1d.s
### Observation - Single Cycle
-  first we load the signed and unsigned byte,half,word  data respectively into register and then take the address one by one into two  different register and then adding the data into another  register and then storing back the data into memory
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
 x1,x2,x3,x4,x5,x6x,x7,x8,x9,x10,x11 values are 0x00000000,0x7ffffff0,0x10000000,0x0001001,0x0001001,0x00000001,0x0000001,0x000001001,0x00001001,0x00000001,0x00000001,0x00001001
### Data Mapping
- **<Memory Address:08>:** <Value stored:0x00000001,0x00001001,0x00000001,0x00001001,0x00000001,0x00001001,0x00000001,0x00001001,0x00000001,0x00001001>
