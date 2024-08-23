# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
week1q1.s

### Observation - Single Cycle
the code adds 2 word (32 bits) then stores them into a register. there is an offset of 4 as 1 word = 4 bytes.
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x80000002
- **x12:** 0x9123456A
- **x13:** 0x1123456C

### Data Mapping
- **x13:** 0x1123456C

-----------

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
week1q2.s

### Observation - Single Cycle
the code adds 2 half word (16 bits) then stores them into a register. there is an offset of 2 as 1 half word = 2 bytes.
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00000002
- **x12:** 0x00000432
- **x13:** 0x00000434

### Data Mapping
- **x13:** 0x00000434

---------

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
week1q3.s

### Observation - Single Cycle
the code adds 2 bytes (8 bits) then stores them into a register. there is an offset of 1.
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00000012
- **x12:** 0x00000032
- **x13:** 0x00000044

### Data Mapping
- **x13:** 0x00000044

---------

# Program 4: 
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
-(for signed byte)
- **x10:** 0x10000000
- **x11:** 0xffffffff
- (for unsigned byte)
- **x10:** 0x10000000
- **x11:** 0x000000ff
- (for signed half word)
- **x10:** 0x10000000
- **x11:** 0xffffffff
- (for unsigned half word)
- **x10:** 0x10000000
- **x11:** 0x0000ffff
- (for signed word)
- **x10:** 0x10000000
- **x11:** 0xffffffff
- (for unsigned word)
- **x10:** 0x10000000
- **x11:** 0x00000000

### Data Mapping
-(for signed byte)
- **x11:** 0xffffffff
- (for unsigned byte)
- **x11:** 0x000000ff
- (for signed half word)
- **x11:** 0xffffffff
- (for unsigned half word)
- **x11:** 0x0000ffff
- (for signed word)
- **x11:** 0xffffffff
- (for unsigned word)
- **x11:** 0x00000000
