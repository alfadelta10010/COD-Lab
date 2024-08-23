# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1q1.s

### Observation - Single Cycle
the code adds 2 word (32 bits) then stores them into a register. there is an offset of 4 as 1 word = 4 bytes.
 
### Register Mapping
- **x10:** 0x80000002, 0x9123456A
- **x11:** 0x9123456A
- **x12:** 0x80000002
- **x13:** 0x80000002 + 0x9123456A = 0x1123456c

### Data Mapping
- **x10:** 0x1123456c

-----------

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1q2.s

### Observation - Single Cycle
the code adds 2 half word (16 bits) then stores them into a register. there is an offset of 2 as 1 half word = 2 bytes.
 
### Register Mapping
- **x10:** 0x0002, 0x0432
- **x11:** 0x0432
- **x12:** 0x0002
- **x13:** 0x0002 + 0x0432 = 0x00000434

### Data Mapping
- **x10:** 0x00000434

---------

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1q3.s

### Observation - Single Cycle
the code adds 2 bytes (8 bits) then stores them into a register. there is an offset of 1.
 
### Register Mapping
- **x10:** 0x12, 0x32
- **x11:** 0x32
- **x12:** 0x12
- **x13:** 0x12 + 0x32 = 0x00000044

### Data Mapping
- **x10:** 0x00000044

---------

# Program 3: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
week1q4.s

### Observation - Single Cycle
the first part, code adds 2 bytes (8 bits) then stores them into a register. there is an offset of 1.
the second part, does the same but for unsigned bytes.
the third part, code adds 2 half word (16 bits) then stores them into a register. there is an offset of 2 as 1 half word = 2 bytes.
the fourth part, does the same but for unsigned half words.
the fifth part, the code adds 2 word (32 bits) then stores them into a register. there is an offset of 4 as 1 word = 4 bytes.
the sixth part does the same but for unsigned words.
the format of storing words, half words and bytes does not change whether it is a signed or unsigned.
 
### Register Mapping
- **x10:** value in a (eg: 0xFF for signed byte)
- **x11:** value in a (eg: 0xFF for signed byte)

### Data Mapping
- **x10:** value in a (eg: 0xFF for signed byte)
