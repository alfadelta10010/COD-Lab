# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
COD-Lab/week1/w1p1.s

### Observation - Single Cycle
- Code defines an array with data
- Loading the address from memory into the registers
- Adding 2 words


### Register Mapping
- x10-0x10000000
- x11-0x02020202
- x12-0x01010101
- x13-0x03030303

### Data Mapping
- 0x10000008-0x03030303
- 0x10000004-0x01010101
- 0x10000000-0x02020202

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half-words

### Name of file:
COD-Lab/week1/w1p2.s

### Observation - Single Cycle
- Code defines an array with data
- Loading the address from memory into the registers
- Adding 2 half-words

### Register Mapping
- x10-0x10000000
- x11-0x00000202
- x12-0x00005678
- x13-0x0000587a

### Data Mapping
- 0x10000004-0x0000587a
- 0x10000000-0x56780202



# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
COD-Lab/week1/w1p3.s

### Observation - Single Cycle
- code defines an array with data
- loading the address from memory into the registers
- adding 2 bytes 

### Register Mapping
- x10-0x10000000
- x11-0x00000012
- x12-0x00000034
- x13-0x00000046

### Data Mapping
- 0x10000004-0x00000000
- 0x10000000-0x00463412


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
COD-Lab/week1/w1p4.s

### Observation - Single Cycle
- Loading the address from memory into the registers
- Word datatype doesnt have unsigned type
- Half word and bytes data types have both signed and unsigned

### Register Mapping
- x10-0x10000000
- x11-0x10000004
- x12-0x10000008
- x13-0x12345678
- x14-0x00000707
- x15-0x00000303
- x16-0x00000044
- x17-0x00000012

### Data Mapping
- 0x10000010-0x00000000
- 0x1000000c-0x00000000
- 0x10000008-0x03124407
- 0x10000004-0x12345678
- 0x10000000-0x12345678
