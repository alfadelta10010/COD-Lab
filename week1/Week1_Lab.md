# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1_program1.s

### Observation - Single Cycle
- Loads the base address in the register x6
- Loads the 2 words into the registers x7 and x8 using the base address and corresponding offset values
- The values in registers x7 and x8 are added and the sum is stored in register x9 which is then stored in memory
 
### Register Mapping
- **x6:** 0x10000000
- **x7:** 0x40002222
- **x8:** 0x20000000
- **x9:** 0x60002222

### Data Mapping
- **0x10000008:** 0x60002222
- **0x10000004:** 0x20000000
- **0x10000000:** 0x40002222

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1_program2.s

### Observation - Single Cycle
- Loads the base address in the register x6
- Loads the 2 half words into the registers x7 and x8 using the base address and corresponding offset values
- The values in registers x7 and x8 are added and the sum is stored in register x9 which is then stored in memory
 
### Register Mapping
- **x6:** 0x10000000
- **x7:** 0x00002222
- **x8:** 0x00001234
- **x9:** 0x00003456

### Data Mapping
- **0x10000004:** 0x00003456
- **0x10000000:** 0x12342222

# Program 3:
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1_program3.s

### Observation - Single Cycle
- Loads the base address in the register x6
- Loads the 2 bytes into the registers x7 and x8 using the base address and corresponding offset values
- The values in registers x7 and x8 are added and the sum is stored in register x9 which is then stored in memory

### Register Mapping
- **x6:** 0x10000000
- **x7:** 0x00000034
- **x8:** 0x00000012
- **x9:** 0x00000046

### Data Mapping
- **0x10000004:** 0x00000000
- **0x10000000:** 0x00461234

# Program 4:
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
week1_program4.s

### Observation - Single Cycle
- Sign extension for byte and half word is done (while loading) by replicating the MSB (1s) when they are negative
- Sign extension for byte and half word is done (while loading) by replicating the MSB (0s) when they are positive
- Sign extension is not required for a word, as it is already 32 bits, matching the register size

### Register Mapping
- **x20:** 0x10000000
- **x21:** 0xffffffa0
- **x22:** 0x000000a0
- **x23:** 0xfffff000
- **x24:** 0x0000f000
- **x25:** 0xc0000000

### Data Mapping
- **0x10000004:** 0x00c00000
- **0x10000000:** 0x00f000a0
