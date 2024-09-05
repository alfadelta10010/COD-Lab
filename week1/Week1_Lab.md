# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file: program1.s

### Observation - Single Cycle
- takes input two 32 bit numbers and adds them up and stores in register
 
### Register Mapping
-x11:0x00000001
 x12:0x12345678
 x13:0x12345679

### Data Mapping
- 0x10000008:0x12345679
  0x10000004:0x12345678
  0x10000000:0x00000001




# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:program2.s

### Observation - Single Cycle
- takes two 64 bit numbers as input and adds them up and stores in register
 
### Register Mapping
- x11:0x0000ffff
  x12:0x0000eeee
  x13:0x0001eeed

### Data Mapping
- 0x10000004:0x0000eeed
  0x10000000:0xeeeeffff



# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file: program3.s
   

### Observation - Single Cycle
- takes two 8bit numbers as input and adds them up and stores in register 

### Register Mapping
- x11:0x00000801
  x12:0x00000008
  x13:0x00000809

### Data Mapping
- 0x10000004:0x00000000
  0x10000000:0x08090801



# Program 4:
### Statement:Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file: program4.s


### Observation - Single Cycle
-  comparing two signed and unsigned words ,halfwords and byte datatypes
 
### Register Mapping
halfword signed
- x18:0x00007000
  x19:0x00000001
  x20:0x00007001
halfword unsigned
  x21:0x00007000
  x22:0x00000001
  x23:0x00007001

byte signed
  x24:0x00000001
  x25:0x00000070
  x26:0x00000071

byte unsigned
  x27:0x00000001
  x28:0x00000070
  x29:0x00000071
 
### Data Mapping
- 0x10000008:0x00000000
  0x10000004:0x71717001
  0x10000000:00017000

 
