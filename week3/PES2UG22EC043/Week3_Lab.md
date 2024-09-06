# Program 1: 
### Statement: write a program to perform conversion from little endian to big endian

### Name of file:
endian_conversion.s

### Observation - Single Cycle
- The stored word is loaded from memory
- A copy of the word is stored in x5
- AND operation is performed on the two least significant bit
- Right shift by two bits is performed on the contents of x5, before AND operation is performed again
- The results of AND operation are bytes of the word
- These results are then stored back into memory in big endian format
 
### Register Mapping
- **x5:** 0x00000012  # after shifting 3 times by 2 bits
- **x6:** 0x00000078  # bytes of the word
- **x7:** 0x00000056
- **x8:** 0x00000034
- **x9:** 0x00000012
- **x10:** 0x10000000 # address of a
- **x11:** 0x12345678 # word that is being converted from little endian to big endian

### Data Mapping
- **0x10000000:** 0x12345678
- **0x10000004:** 0x78563412
