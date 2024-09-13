# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words 

### Name of file:
add_word.s

### Observation - Single Cycle
- We are loading two words from the memory
- Storing the result in the register
- Stores the result back to memory
 
### Register Mapping
- x10 : used to load the address of  a
- x11 : Stores the 1st number
- x12 : Stores the 2nd number
- x13 : Stores the result obtained by adding the 2 words
- x14 : stores the carry

### Data Mapping
- x10 : 0x10000000
- x11 : 0x80000002
- x12 : 0x9123456a
- x13 : 0x1123456c
- x14 : 0x00000001


# Program 2: 
### Statement:  Write an Assembly Program for addition of 2 half words

### Name of file:
add_hword.s

### Observation - Single Cycle
- We are loading two half words from the memory
- Storing the result in the register
- Stores the result back to memory
 
### Register Mapping
- x1 : loading the address of a
- x2 : loading the 1st half word
- x3 : loading the 2nd half word
- x4 : adding the 2 half words and storing in the same register

### Data Mapping
- x1 : 0x10000000
- x2 : 0x00000002
- x3 : 0x0000456a
- x4 : 0x0000456c



# Program 3: 
### Statement:  Write an Assembly Program for addition of 2 bytes

### Name of file:
add_bytes.s

### Observation - Single Cycle
- We are loading two half bytes from the memory
- Storing the result in the register
- Stores the result back to memory

 
### Register Mapping
- x10 : used to load the address of  a
- x11 : Stores the 1st number
- x12 : Stores the 2nd number
- x13 : Stores the result obtained by adding the 2 words

### Data Mapping
- x10 : 0x10000000
- x11 : 0x00000001
- x12 : 0x0000005a
- x13 : 0x0000005b



# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
analyse.s

### Observation - Single Cycle
- Loads signed words, half-words, and bytes from memory.
- Adds them and stores the results in memory.
 
### Register Mapping
- x10 : Holds the address of a,b,c 
- x12 : Holds the first loaded value
- x13 : Holds the second loaded value
- x14 : Holds the result of the addition

### Data Mapping
- Signed Word at a+8: Stores the result of adding the two signed words located at a and a+4
- Signed Half-Word at a+12: Stores the result of adding the two signed half-words located at b and b+2.

- Signed Byte at a+14: Stores the result of adding the two signed bytes located at c and c+1

- Unsigned Half-Word at a+16: Stores the result of adding the two unsigned half-words located at b and b+2.

- Unsigned Byte at a+18: Stores the result of adding the two unsigned bytes located at c and c+1.



