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
x5 : Loading the word from array/memory
x6 : loading 1st word
x7 : loading 2nd word
x8 : storing the added results of 2 words

x9 : loading the half words from memory
x10 : loading 1st half word
x11 : loading 2nd half word
x12 : storing the added results of 2 half words

x13 : loading the bytes from memory
x14 : loading 1st byte
x15 : loading 2nd byte
x16 : storing the added results of 2 bytes

Unsigned Operations
x17 : loading the half words from memory
x18 : loading 1st half word
x19 : loading 2nd half word
x20 : storing the added results of 2 unsigned half words

x21 : loading the bytes from memory
x22 : loading 1st byte
x23 : loading 2nd byte
x24 : storing the added results of 2 unsigned bytes

### Data Mapping

x5 : 0x10000000
x6 : 0x80000112
x7 : 0x9123456c
x8 : 0x1123467e
x9 : 0x10000008
x10 : 0x0000467e
x11 : 0x00001123
x12 : 0x000057a1
x13 : 0x1000000c
x14 : 0xffffffa1
x15 : 0x00000057
x16 : 0xfffffff8
x17 : 0x10000008
x18 : 0x0000467e
x19 : 0x00001123
x20 : 0x000057a1
x21 : 0x1000000c
x22 : 0x000000a1
x23 : 0x00000057
x24 : 0x000000f8


----------------------------------------------------------------------------------------
