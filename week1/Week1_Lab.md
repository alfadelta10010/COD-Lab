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
- x1: Address of 'a', 'b', 'c'
- x2: Signed/Unsigned Word Value
- x3: Signed/Unsigned Half-Word Value
- x4: Signed/Unsigned Byte Value

### Data Mapping
- Signed Word at a+8 : Result of adding the two words.
- Signed Half-Word at b+4 : Result of adding the two half-words.
- Signed Byte at c+2 : Result of adding the two bytes.
