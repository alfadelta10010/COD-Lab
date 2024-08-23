# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
COD-Lab/week1/program1.s

### Observation - Single Cycle
- loading the address from memory into the registers
- adding 2 words
- 
 
### Register Mapping
- x10-0x10000000
- x11-0x01234567
- x12-0x00000001
- x13-0x01234568

### Data Mapping
- 0x10000008-0x00000000
- 0x10000004-0x00000001
- 0x10000000-0x01234567

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half-words

### Name of file:
COD-Lab/week1/program2.s

### Observation - Single Cycle
- loading the address from memory into the registers
- adding 2 half- words
- 
 
### Register Mapping
- x10-0x10000000
- x11-0x00000127
- x12-0x00000001
- x13-0x00000128

### Data Mapping
- 0x10000004-0x00000128
- 0x10000000-0x00000127



# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
COD-Lab/week1/program3.s

### Observation - Single Cycle
- loading the address from memory into the registers
- adding 2 bytes
- 
 
### Register Mapping
- x10-0x10000000
- x11-0x00000027
- x12-0x00000001
- x13-0x00000028

### Data Mapping
- 0x10000004-0x00000000
- 0x10000000-0x00280127


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
COD-Lab/week1/program4.s

### Observation - Single Cycle
- loading the address from memory into the registers
-  signed and unsigned half words is different
- 
 
### Register Mapping
- x10-0x10000000
- x11-0x10000004
- x12-0x10000006
- x13-0x12345678
- x14-0x00001234
- x15-0x00001234
- x16-0xffffffff
- x17-0x000000ff

### Data Mapping
- 0x10000010-0x00000000
- 0x10000008-0x00000000
- 0x10000004-0x000012ff
- 0x10000000-0xffffff78