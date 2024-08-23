# Program 1: 
### Statement:
Write an Assembly Program for addition of 2 words

### Name of file:
add2words.s
### Observation - Single Cycle
1. take the starting address of variable defined and is loaded into x10 register 
2. loading offset values into each register 
3. the 2 loaded registers are then added and stored in another register

 
### Register Mapping
 **<Register Number Used>:** <Value stored>
          x10      a0         0x10000000
          x11      a1         0x80000002
          x12      a2         0x9123456a
          x13      a3         0x1123456c
          x14      a4         0x00000001


### Data Mapping
- **<Memory Address>:** <Value stored>
      0x10000008         0x1123456c
      0x10000004         0x9123456a          
      0x10000000         0x80000002
# Program 2:

### Statement:
Write an Assembly Program for addition of 2 half words

### Name of file:
2halfwords.s

### Observation - Single Cycle
1. take the starting address of variable defined and load into x10 register 
2. load offset values as 2 into each register 
3. the 2 loaded registers are then stored in another register 
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
         x10    a0                0x10000000
         x11    a1                0x00001234
         x12    a2                0x00001111
         x13    a3                0x00002345
         x13    a3                

### Data Mapping
- **<Memory Address>:** <Value store
        0x10000004        0x00002345
        0x10000000        0x11111234


# Program 3: 
### Statement:
Write an Assembly Program for addition of 2 bytes

### Name of file:
add2bytes.s.s

### Observation - Single Cycle
1. take the starting address of variable defined and load into x10 register 
2. load offset values as 1 into each register 
3. the 2 loaded registers are then stored in another register 
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
       x10    a0                0x10000000
       x11    a1                0x00000001
       x12    a2                0xfffffffd
       x13    a3                0xfffffffe 

### Data Mapping
- **<Memory Address>:** <Value stored>
      0x00000014            0x0050123
      0x00000010            0x00c586b3
      0x0000000c            0x00150603
      0x00000008            0x00050583
      0x00000004            0x00050513
      0x00000000            0x10000517

# Program 4:

### Statement: 
Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte
data types 

### Name of file:
halfwordcompare.s

### Observation - Single Cycle
1. assembly code for half signed is first written 
2. the offset values for unsigned is 2
3. the resulted value is stored in another register 
4. assembly code is then written for unsigned 
5. the offset value for unsigned byte is 1 
6. the resukted value is then stored in another register 

### Register Mapping
- **<Register Number Used>:** <Value stored>
  for half signed 
      x10        a0              0x10000000
      x11        a1              0x00000001
      x12        a2              0x00000000
      x13        a3              0x00000001

for byte unsigned 
       x10      a0               0x10000000 
       x11      a1               0x00000001
       x12      a2               0x00000034
       x13      a3               0x00000035
### Data Mapping
- **<Memory Address>:** <Value stored>
for half signed 
       0x10000004            0x00000001
       0x10000000            0x00003401
for byte unsigned 
       0x10000004            0x00000000
       0x10000000            0x00353401
