# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
/COD-Lab/week1/Lab1_Programs/add_words.s

### Observation - Single Cycle
- a is the variable of word size.
  address loaded into x1.
  lw is used to load the 2 words to add into registers x2 and x4
  added result stored in x5 which is then sent to memory.by setting
  offset as 0x08
  0xfffffffe + 0x01 = 0xffffffff
 
### Register Mapping
x1 = 0x10000000 
x2 = 0xFFFFFFFE 
x3 = 0x01
x5 = 0xFFFFFFFF

### Data Mapping
0x10000008 = 0xfffffffff
0x10000004 = 0x000000001
0x10000000 = 0xffffffffe


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 halfwords 

### Name of file:
/COD-Lab/week1/Lab1_Programs/add_half.s

### Observation - Single Cycle
- la is used to store address in register
  n is a variable of halfword size so lh is the load command used
  after adding 0xFFFE + 0x01 result 0xFFFFFFFF is stored at x5
  data at x5 is sent to memory by setting offset as 0x04 because it halfword
### Register Mapping
- x1 = 0x10000000
  x2 = 0xfffffffe 
  x3 = 0x00000001
  x5 = 0xffffffff

### Data Mapping
- 0x10000000 = 0x0001fffe   # includes x3 and x2
  0x10000004 = 0x0000ffff


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
/COD-Lab/week1/Lab1_Programs/add_bytes.s

### Observation - Single Cycle
- la is used to store address in register
  n is a variable of byte size so lb is the load command used
  after adding 0xFE + 0x01 result 0xFFFFFFFF is stored at x5
  data at x5 is sent to memory by setting offset as 0x02 because it byte

### Register Mapping
- x1 = 0x10000000
  x2 = 0x00000005
  x3 = 0x00000001
  x5 = 0x00000006

### Data Mapping
- 0x10000000 = 0x00060105   # includes x2 & x3 & x5


# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
/COD-Lab/week1/Lab1_Programs/signed_unsigned_datatypes.s

### Observation - Single Cycle
- after declaration of datatypes and loading address into register x1,x2,x3, lw is used to load signed word to x5.lwu is not a part of RV32I
  lhu loads a unsigned data into x6 so 0 is appended giving 0x0000ffff
  lh loads the same data into x7 but here its signed therefore MSB of data is copied to rest of the bits giving 0xffffffff
  lbu loads a unsigned data into x8 so 0 is appended giving 0x000000ff
  lb loads the same data into x9.its signed therefore MSB of data is copied to rest of the bits giving 0xffffffff
  these datas are sent to memory using sw,sh,sb respectively 
	
### Register Mapping
- x1 = 0x10000000
  x2 = 0x1000000C		
  x3 = 0x10000012
  x5 = 0x0000ffff	#signed word
  x6 = 0x0000ffff #unsigned halfword
  x7 = 0xffffffff #signed halfword
  x8 = 0x000000ff #unsigned byte
  x9 = 0xffffffff #signed byte
### Data Mapping
- 0x10000000 = 0x0000ffff
  0x10000004 = 0x0000ffff 
  0x10000008 = 0x00000000
  0x1000000c = 0xffffffff
  0x10000010 = 0xffffffff
  0x10000014 = 0x000000ff
