# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
- week1_q1.s

### Observation - Single Cycle
- The code is take two 32-bit inputs and adding them and storing them in the registers. the carry is also stored in a register.
 
### Register Mapping
- x10 : 0x10000000
- x11 : 0x10000000
- x12 : 0x20000000
- x13 : 0x30000000
- x14 : 0x00000000


### Data Mapping
- 0x10000000 : 0x10000000
- 0x10000004 : 0x20000000
- 0x10000008 : 0x30000000


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1_q2.s

### Observation - Single Cycle
- Code take two 16-bit inputs and adds them. stores the result in a register and also stores the carry if any.
 
### Register Mapping
- x10 : 0x10000000
- x11 : 0x00001000
- x12 : 0x00002000
- x13 : 0x00003000
- x14 : 0x00000000

### Data Mapping
- 0x10000000 : 0x20001000 
- 0x10000004 : 0x00003000


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1_q3.s

### Observation - Single Cycle
- Code takes two 8-bit numbers as input and adds them. Stores the result in a register and also stores the carry if any.
 
### Register Mapping
- x10 : 0x10000000
- x11 : 0x00000010
- x12 : 0x00000020
- x13 : 0x00000030
- x14 : 0x00000000

### Data Mapping
- 0x10000000 : 0x00302010
- 0x10000004 : 0x00000000


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
week1_q4.s

### Observation - Single Cycle
- comparing the codes of half and byte type inputs for signed and unsigned words
 
### Register Mapping
#byte 
- x10 : 0x10000000 
- x11 : 0x00000010
- x12 : 0x00000020
- x13 : 0x00000030
- x14 : 0x00000000

#half
- x10 : 0x10000000
- x11 : 0x00001000
- x12 : 0x00002000
- x13 : 0x00003000
- x14 : 0x00004000

### Data Mapping
#byte
- 0x10000000 : 0x00302010 
- 0x10000004 : 0x00000000

#half
- 0x10000000 : 0x20001000
- 0x10000004 : 0x00003000

...
