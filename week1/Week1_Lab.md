# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
-Load the base address into register x18.
-Load two word(32 bits) from memory into registers x19 and x20.x19 and x20 are at offsets 0 and 4 from the base address respectively.
-Add the two values stored in x19 and x20, store the result in register x21, and write this sum back into memory at offset 8 from the base address.
 
### Register Mapping
- **x18:** 0x12345678
- **x19:** 0x00001111
- **x20:** 0x12346789
### Data Mapping
- **0x10000008:** 0x12346789
- **0x10000004:** 0x00001111
- **0x10000000:** 0x12345678


# Program 2: 
### Statement:Write an Assembly Program for addition of 2 half words

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
-Load the base address into register x18.
-Load two half word(16 bits) from memory into registers x19 and x20.x19 and x20 are at offsets 0 and 2 from the base address respectively.
-Add the two values stored in x19 and x20, store the result in register x21, and write this sum back into memory at offset 4 from the base address.
 
### Register Mapping
- **x18:** 0x00001234
- **x19:** 0x00001111
- **x20:** 0x00002345
### Data Mapping
- **0x10000004:** 0x00002345
- **0x10000000:** 0x11111234 


# Program 3: 
### Statement:Write an Assembly Program for addition of 2 bytes

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
-Load the base address into register x18.
-Load two bytes(8 bits) from memory into registers x19 and x20.x19 and x20 are at offsets 0 and 1 from the base address respectively.
-Add the two values stored in x19 and x20, store the result in register x21, and write this sum back into memory at offset 2 from the base address.
 
### Register Mapping
- **x18:** 0x00000012
- **x19:** 0x00000001
- **x20:** 0x00000013
### Data Mapping
- **0x10000004:** 0x00000000
- **0x10000000:** 0x00130112 


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
-Load the base address of the data at label a into register x10, then load two words/half words/bytes into registers x18 and x19.
-Add these two values, store the result at a (4,2,1)-byte offset, then load the original values again as signed, storing the result.
-Add these two values again, store the result at a (4,2,1)-byte offset, then load the original values again as unsigned, storing the result in different memory location.Compare the outputs to view the difference between signed and unsigned.
### Register Mapping
//word addition
- **x18:** 0x7fffffff
- **x19:** 0x00000001
- **x20:** 0x80000000

- **x21:** 0x7fffffff
- **x22:** 0x00000001
- **x23:** 0x80000000
//half word addition
- **x18:** 0xffff8000
- **x19:** 0x00000001
- **x20:** 0xffffff81

- **x21:** 0x00008000
- **x22:** 0x00001111
- **x23:** 0x00009111
//byte addition
- **x18:** 0x00000001
- **x19:** 0xffffff80
- **x20:** 0xffff9111

- **x21:** 0x00000001
- **x22:** 0x00000080
- **x23:** 0x00000081

### Data Mapping
- **0x10000004:** 0x00000000
- **0x10000000:** 0x00818001

