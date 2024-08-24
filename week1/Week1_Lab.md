# Program 1: 
### Write an Assembly Program for addition of 2 words

### Name of file:
qn1.s

### Observation - Single Cycle
The base address is kept in x11
The two source operands are given values by using the offset values
r10 has the sum of those two operands 
the type used here is word
 
### Register Mapping
- **x10:** 0x10000008
- **x11:** 0x10000000
- **x12:** 0x0effffff
- **x13:** 0x00000001
- **x14:** 0x0f000000


### Data Mapping
- **0x10000000:** 0x0effffff
- **0x10000004:** 0x00000001
- **0x10000008:** 0x0f000000


# Program 2: 
### Write an Assembly Program for addition of 2 half words

### Name of file:
qn2.s

### Observation - Single Cycle
The base address is kept in x11
The two source operands are given values of 2 bytes 
r14 has the sum of those two operands: x12 as rs1 and x13 as rs2
the type used here is half word
 
 
### Register Mapping
- **x11:** 0x10000000
- **x12:** 0x00000003
- **x13:** 0x00000001
- **x14:** 0x00000004

### Data Mapping
- **0x10000000:** 0x00010003
- **0x10000004:** 0x00000004

# Program 3: 
### Write an Assembly Program for addition of 2 bytes

### Name of file:
qn3.s

### Observation - Single Cycle
The base address is kept in x11
The two source operands are given values of 1 bytes 
r14 has the sum of those two operands: x12 as rs1 and x13 as rs2
the type used here is byte
 
 
### Register Mapping
- **x11:** 0x10000000
- **x12:** 0x00000005
- **x13:** 0x00000007
- **x14:** 0x0000000c

### Data Mapping
- **0x10000000:** 0x000c0705
- **0x10000004:** 0x00000000



# Program 4: 
### Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
qn4.s

### Observation - Single Cycle
'a' contains signed and unsigned values , ie 6 and -6
'b' has two half words 10 and 12 
'c' the two byte values
and x11 , x14 and x17 are used to hold addresses of these three arrays.
x12,x13,x15,x16,x18,x19 hold the values present in these arrays.
 
### Register Mapping
- **x11:** 0x10000000
- **x12:** 0xfffffffe
- **x13:** 0x00000006
- **x14:** 0x10000008
- **x15:** 0x00000010
- **x16:** 0x00000012
- **x17:** 0x1000000c
- **x18:** 0x00000003
- **x19:** 0x00000002

### Data Mapping
- **0x10000000:** 0xfffffffe
- **0x10000004:** 0x00000006
- **0x10000008:** 0x00120010
- **0x1000000c:** 0x00000203
