# Program 1:
### Statement : Write an Assembly Program for addition of 2 words

### Name of the file : COD-Lab/week1/prog1.s

### Observation - Single Cycle
- We are loading 2 words into 2 different registers
- After loading these 2 words into the registers, they are added and stored in a new register
- This result is now stored back into the memory. All these values are stored in cells that are 4 bytes apart.

### Register Mapping
- x10 : 0x10000000
- x11 : 0x12341234
- x12 : 0x34560001
- x13 : 0x468a1235

### Data Mapping
- 0x10000000 : 0x12341234
- 0x10000004 : 0x34560001
- 0x10000008 : 0x468a1235

# Program 2:
### Statement : Write an Assembly Program for addition of 2 half words

### Name of the file : COD-Lab/week1/prog2.s

### Observation - Single Cycle
- We are loading 2 half words into 2 different registers to be added.
- The offset value in this case differs from the first program, as half words are smaller than words.
- As a result, lesser memory is being used.

### Register Mapping
- x10 : 0x10000000
- x11 : 0x00001234
- x12 : 0x00003456
- x13 : 0x0000468a

### Data Mapping
- 0x10000000 : 0x34561234
- 0x10000004 : 0x0000468a

# Program 3:
### Statement : Write an Assembly Program for addition of 2 bytes

### Name of the file : COD-Lab/week1/prog3.s

###Observation - Single Cycle
- In this program we are loading 2 bytes onto a register.
- After adding the 2 values, the result can be stored in the memory.
- It is observed that all values can be fit into one memory register.


### Register Mapping
- x10 : 0x10000000
- x11 : 0x00000012
- x12 : 0x00000034
- x13 : 0x00000046

### Data Mapping
- 0x10000000 : 0x00463412
- 0x10000004 : 0x00000000

# Program 4:
### Statement : Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types.

### Name of the file : COD-Lab/week1/prog4.s

### Observation - Single Cycle
- we observe that the RV32I processor stores unsigned and signed halfwords, bits differently.
- we also notice that there are no unsigned words, as the RV32I is a 32 bit processor, and 1 bit is inherently reserved for sign in word type variables.
- Sign extension is done for both bytes and half words, in the case of unsigned, it is all 0s, but in the case of signed, it is extended to the MSB value.

### Register Mapping
- x10 : 0x10000000
- x11 : 0x10000008
- x12 : 0x1000000c
- x13 : 0x12345678
- x14 : 0xffffffff
- x15 : 0x0000ffff
- x16 : 0xffffffcf
- x17 : 0x000000cf

### Data Mapping 
- 0x10000000 : 0x12345678
- 0x10000004 : 0x12345678
- 0x10000008 : 0xffffffff
- 0x1000000c : 0x00cfcfff
- 0x10000010 : 0x00000000 
