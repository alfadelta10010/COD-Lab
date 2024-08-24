# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file: 
lab1.s

### Observation - Single Cycle
- Initializing the memory locations for two words n giving values for words.
  Loading address and then loading words into registers x11,x12.
  Performing add operation on x11 and x12 and storing value in x13(destination register).
  Later check for carry and store the results in memory

### Register Mapping
- x11-0xffffffff
- x12-0xffffffff
- x13-0xffffffff
- x14-0x00000001


### Data Mapping
- 0x1000000c=0x00000001
  0x10000008=0xfffffffe
  0x10000004=0xffffffff
  0x10000000=0xffffffff


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file: 
lab2.s

### Observation - Single Cycle
- Initializing the memory locations for 2 half words and giving values for half words.
  Loading address and then loading half words into registers x11,x12.
  Performing add operation on x11 and x12 and storing value in x13(destination register).
  Later check for carry and store the results in memory

### Register Mapping
- x11-0x00003456
- x12-0x00008043
- x13-0xffffb499
- x14-0x00000000


### Data Mapping
-   0x10000008=0x00000000
0x10000004=0xffffb499
0x10000000=0x34568043

# Program 3: 
### Statement:Write an Assembly Program for addition of 2 bytes

### Name of file: 
lab3.s
### Observation - Single Cycle
- Initializing the memory locations for 2 bytes and giving values for bytes.
  Loading address and then loading bytes into registers x11,x12.
  Performing add operation on x11 and x12 and storing value in x13(destination register).
  Later check for carry and store the results in memory

### Register Mapping
- x11-0x00000015
- x12-0x00000013
- x13-0x00000028
- x14-0x00000000


### Data Mapping
-0x10000004=0x00000000
0x10000000=0x28001315

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file: 
lab4.s

### Observation - Single Cycle
- Initializing the memory locations for word,half word,byte and giving values.
  Loading address and then loading bytes into registers x11,x12,x13,x14,x15
  format for signed and unsigned words will be 'lw' and lh(signed halfword),lhu(unsigned halfword),lb(signed byte),lbu(unsigned byte).

### Register Mapping
- x11-0x00080000
- x12-0x00004567
- x13-0x00000078
- x14-0x00000078
- x15-0x00000000


### Data Mapping
-0x10000010=0x00000000
0x10000008=0x00007878
0x10000004=0x00004567
0x10000000=0x00080000
