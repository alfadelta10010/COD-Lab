# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file: 
week1q1.s

### Observation - Single Cycle
- Initializing the memory locations for two words n giving values for words.
  Loading address and then loading words into registers x9,x10
  Performing add operation on x9 and x10 and storing value in x8(rd).
  check for carry and store the results in memory
   
### Register Mapping
- x9-0xffffffff
- x10-0xffffffff
- x11-0xffffffff
- x12-0x00000001


### Data Mapping
- 0x1000000c=0x00000001
  0x10000008=0xfffffffe
  0x10000004=0xffffffff
  0x10000000=0xffffffff


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file: 
week1.q2.s

### Observation - Single Cycle
- Initializing the memory locations for 2 half words and giving values for half words.
  Loading address and then loading half words into registers x9,x10.
  Performing add operation on x9 and x10 and storing value in x8(rd).
  Later check for carry and store the results in memory
   
### Register Mapping
- x9-0x00000123
- x10-0x00004567
- x11-0x0000468a
- x12-0x00000000


### Data Mapping
-   0x10000008=0x00000000
0x10000004=0x0000468a
0x10000000=0x01234567


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file: 
week1.3q.s

### Observation - Single Cycle
- Initializing the memory locations for 2 bytes and giving values for bytes.
  Loading address and then loading bytes into registers x9,x10.
  Performing add operation on x9 and x10 and storing value in x11(rd).
  Later check for carry and store the results in memory
   
### Register Mapping
- x9-0x000000012
- x10-0x00000034
- x13-0x00000046
- x14-0x00000000


### Data Mapping
-0x10000004=0x00000000
0x10000000=0x46001234

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file: 
week1.4.s

### Observation - Single Cycle
- Initializing the memory locations for word,half word,byte and giving values.
  Loading address and then loading bytes into registers x11,x12,x13,x14,x15
  format for signed and unsigned words will be 'lw' and lh(signed halfword),lhu(unsigned halfword),lb(signed byte),lbu(unsigned byte).
 
### Register Mapping
- x11-0x00056789
- x12-0x00006789
- x13-0x00000067
- x14-0x00000067
- x15-0x00000000


### Data Mapping
-0x10000010=0x00000000
0x10000008=0x00006767
0x10000004=0x00006789
0x10000000=0x00056789


