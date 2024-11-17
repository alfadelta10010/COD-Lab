# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
q1pes153.s

### Observation - Single Cycle
To perform the addition of two words, we store their values in registers x11 and x12.
The lw instructions are used to load these words into the registers. We then use the ADD instruction to compute the sum of the two numbers.
The result is stored in register x13 using the sw instruction. 

### Register Mapping
- **x11:** 0x11112231
- **x12:** 0x12345678
- **x13:** 0x23546245

### Data Mapping
- **<Memory Address>:** <Value stored>
