# Program 1: 
### Statement: write a program to add two words, 0x80000002 and 0x9123456A

### Name of file:
word_addition.s

### Observation - Single Cycle
- .data block is used to store the required values in memory
- "la" is used to load the address a to register x10
- lw is used to load the array elements, and add is used to perform the operation
- sw is used to store the result (stored in x7) back into memory
 
### Register Mapping
- **x10:** 0x10000000
- **x5:** 0x80000002
- **x6:** 0x9123456a
- **x7:** 0x1123456c

### Data Mapping
- **0x10000000:** 0x80000002
- **0x10000004:** 0x9123456a
- **0x10000008:** 0x1123456c


# Program 2: 
### Statement: write a program to add two half words

### Name of file:
half_addition.s

### Observation - Single Cycle
- .data block is used to store the required values in memory
- "la" is used to load the address a to register x10
- lh is used to load the array elements, and add is used to perform the operation
- sh is used to store the result (stored in x7) back into memory
 
#### Register Mapping
- **x10:** 0x10000000
- **x5:** 0x0000000f
- **x6:** 0x00000005
- **x7:** 0x00000014

### Data Mapping
- **0x10000000:** 0x0005000f (Two half words stored in one location)
- **0x10000004:** 0x00000014


# Program 3: 
### Statement: write a program to add 1 and -3, assume they are 8 bit signed numbers

### Name of file:
signed_byte_addition.s

### Observation - Single Cycle
- .data block is used to store the required values in memory
- "la" is used to load the address a to register x10
- lb is used to load the array elements, and add is used to perform the operation
- sw is used to store the result (stored in x7) back into memory
 
#### Register Mapping
- **x10:** 0x10000000
- **x5:** 0xfffffffd
- **x6:** 0x00000001
- **x7:** 0xfffffffe

### Data Mapping
- **0x10000000:** 0xfe0001fd (operands and result stored in the same location)

# Program 4: 
### Statement: write a program to analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
unsigned_byte_addition.s

### Observation - Single Cycle
- .data block is used to store the required values in memory
- "la" is used to load the address a to register x10
- lh is used to load the array elements, and add is used to perform the operation
- when we load a signed word, sign extension is automatically performed
- when lhu is used instead, sign extension is not performed
- the same logic extends to byte-sized data
- sw is used to store the result (stored in x7) back into memory
 
#### Register Mapping
- **x10:** 0x10000000

# lh
- **x5:** 0xffff80fd
- **x6:** 0xffff8001
- **x7:** 0xffff00fe

# lhu
- **x5:** 0x000080fd
- **x6:** 0x00008001
- **x7:** 0x000100fe

### Data Mapping
- **0x10000000:** 0x800180fd (two half words stored in one location)
- **0x10000004:** 0x000100fe
