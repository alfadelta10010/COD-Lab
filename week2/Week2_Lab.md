# Program 1: 
### Statement: Write an Assembly Program for the C code

### Name of file:
week2_program1.s

### Observation - Single Cycle
- Loads the base address of the array a into register x1 and initializes register x3 to the first element of the array
- Sums the first ten elements of the array by loading each value into a register and adding it to x3
- Stores the final sum into the last element of the array a at offset 22 bytes from the base address
 
### Register Mapping
- **x1:** 0x10000000
- **x2:** 0x00001234
- **x3:** 0x00001234
- **x4:** 0x00005678
- **x5:** 0xffff9abc
- **x6:** 0xffffdef0
- **x7:** 0x00001111
- **x8:** 0x00002222
- **x9:** 0x00003333
- **x10:** 0x00004444
- **x11:** 0x00005555
- **x12:** 0x00006666

### Data Mapping
- **0x10000018:** 0x00000000 
- **0x10000014:** 0x48bd0000
- **0x10000010:** 0x66665555
- **0x1000000c:** 0x44443333
- **0x10000008:** 0x22221111
- **0x10000004:** 0xdef09abc
- **0x10000000:** 0x56781234

# Program 2: 
### Statement: <Enter the program statement>

### Name of file:
week2_program2.s

### Observation - Single Cycle
- Loads the base addresses of two 64 bit numbers and a result location into registers and then extracts the lower 32bit parts of these numbers
- Adds the lower 32 bit parts and stores the result then processes the upper 32 bit parts, handling any carry from the lower part addition
- Stores the final 64 bit sum into the result location
 
### Register Mapping
- **x5:** 0x10000000
- **x6:** 0x10000008
- **x7:** 0x10000010
- **x8:** 0x11223344
- **x9:** 0x99aabbcc
- **x10:** 0xaaccef11
- **x11:** 0x00000001
- **x12:** 0x00000000
- **x13:** 0x00000059

### Data Mapping
- **0x10000014:** 0xaaccef11 
- **0x10000010:** 0x00224465
- **0x1000000c:** 0x99aabbcc
- **0x10000008:** 0x55667788
- **0x10000004:** 0x11223344
- **0x10000000:** 0xaabbccdd


