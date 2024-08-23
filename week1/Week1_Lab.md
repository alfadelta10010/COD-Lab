# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
add_words.s
- We are laoding two words from the memory
- Stroing the result in the register
- Stores the result back to memory


### Observation - Single Cycle
- We are laoding two words from the memory
- Stroing the result in the register
- Stores the result back to memory
 
### Register Mapping
- x10 : used to load the address of  a
- x11 : Stores the 1st number
- x12 : Stores the 2nd number
- x13 : Stores the result obtained by adding the 2 words

### Data Mapping
- x10 : 0x10000000
- x11 : 0x00000001
- x12 : 0x12345678
- x13 : 0x12345679

 ----------------------------------------------------------------

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
add_half.s

### Observation - Single Cycle
- We are laoding two half words from the memory
- Stroing the result in the register
- Stores the result back to memory
 
### Register Mapping
- x1 : loading the address of a
- x2 : loading the 1st half word
- x3 : loading the 2nd half word
- x4 : adding the 2 half words and storing in the same register

### Data Mapping
- x1 : 0x10000000
- x2 : 0x10000000
- x3 : 0x0000456a
- x4 : 0x0000456c


-----------------------------------------------------------------------

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
add_bytes.s

### Observation - Single Cycle
- We are laoding two half bytes from the memory
- Stroing the result in the register
- Stores the result back to memory

 
### Register Mapping
- x10 : used to load the address of  a
- x11 : Stores the 1st number
- x12 : Stores the 2nd number
- x13 : Stores the result obtained by adding the 2 words


### Data Mapping
- x10 : 0x10000000
- x11 : 0xfffffffd
- x12 : 0x00000001
- x13 : 0xfffffffe


----------------------------------------------------------------------------

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
analysis.s

### Observation - Single Cycle
- Loads signed words, half-words, and bytes from memory.
- Adds them and stores the results in memory.
 
### Register Mapping
Signed Word
- x10 : To load a word from array/memory
- x2  : To load signed word
- x3  : To load signed word 
- x4  : To add and store the 2 signed words

Signed Half Word
- x11 : To load half words from array
- x12 : To load 1st half word
- x13 : To load 2nd half word
- x14 : To add and store the 2 signed half words

Signed Bit
- x11 : To load bits from array
- x12 : To load 1st bit
- x13 : To load 2nd bit
- x14 : To add and store 2 signed bits

Unsigned Half Word
- x10 : To load half words from array
- x12 : To laod 1st unsigned half word 
- x13 : To load 2nd unsigned half word
- x14 : To add and store 

Unsigned Bit
- x11 : To load bits from arary
- x12 : To laod 1st unsigned bit
- x13 : To load 2nd unsigned bit
- x14 : To add and store

### Data Mapping
Signed Word
- x10 : 0x10000000 
- x2 : 0x80000112
- x3 : 0x9123456c
- x4 : 0x1123467e

Signed Half Word
- x11 : 0x10000008
- x12 : 0x0000467e
- x13 : 0x00001123
- x14 : 0x000057a1

Signed Bit
- x11 : 0x1000000c
- x12 : 0xffffff82
- x13 : 0x0000006a
- x14 : 0xffffffec

Unsigned Half Word
- x10 : 0x10000008
- x12 : 0x0000467e
- x13 : 0x00001123
- x14 : 0x000057a1

Unsigned Bit
- x11 : 0x1000000c
- x12 : 0x000000a1
- x13 : 0x00000057
- x14 : 0x000000f8
