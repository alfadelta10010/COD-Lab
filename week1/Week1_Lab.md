# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
add_word.s

### Observation - Single Cycle
- loading words from the memory into the register and adding them.
 
### Register Mapping
- x1:laoding the array of words
  x2: loading the first word from array
  x3:loading the second word from the array
  x4: storing the added result of the two words

### Data Mapping
- x1: 0x00000000
  x2:0x80000002
  x3:0x0000ffff
  x4:0x80010001


# Program 2: 
### Statement:Write an Assembly Program for addition of 2 half words

### Name of file:add_half.s

### Observation - Single Cycle
- loading the data which is present in the address into the register, offset is 0 for first number, offset is 2 for loading the second
number, and storing the added result into the register first and then into the memory by giving offset as 4
 
### Register Mapping
- x1:loading the array of two half words
  x2:loading the first half word
  x3:loading the second half word
  x4:storing the result
  x1: storing the added result back into the memory
### Data Mapping
- x1:0x10000000
  x2:0x00000002
  x3:0xffffffff
  x4:0x00000001


# Program 3:
### Statement:Write an Assembly Program for addition of 2 bytes

### Name of file:add_bytes.s

### Observation - Single Cycle
- loading the data which is present in the address into the register, offset is 0 for first number, offset is 1 for loading the second
number, and storing the added result into the register first and then into the memory by giving offset as 2

### Register Mapping
- x1:loading the array of two bytes
  x2:loading the first byte
  x3:loading the second byte
  x4:storing the result
  x1: storing the added result back into the memory
### Data Mapping
- x1:0x10000000
  x2:0x00000004
  x3:0x0000006a
  x4:0x0000006e


# Program 4:
### Statement:
 Write an Assembly Program and analyse the format of storing signed and unsigned words,
   half words and byte data types

### Name of file:
format_analysis.s

### Observation - Single Cycle
- when we store an unsigned word or half word or byte into the register, zeros are appended to the 
  to the remaining bits
- when we store a signed number into the register the MSB is extended
- as a result, the range of numbers decreases since MSB is used to indicate the sign
 
### Register Mapping
- x2:loading the address of the word
  x3:loading the address of the half word
  x4:loading the address of the byte
  x5: loading the signed word 
  x6:loading the signed half word
  x7:loading the unsigned half word
  x8: loading signed byte
  x9: loading unsigned byte
### Data Mapping
- x2:0x00000000
  x3:0x10000004
  x4:0x10000006
  x5:0xffffffff
  x6:0xffffffd3
  x7:0x0000ffd3
  x8:0xfffffffd
  x9:0x000000fd
