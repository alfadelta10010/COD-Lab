# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
 word addition.s  

### Observation - Single Cycle
- loading adresses of 2 words to registers
- loading value of those 2 words to registers
- add the values loaded in those 2 registers
- store the value in the destination register
 
### Register Mapping
- x7 : 0x000084f6
- x8 : 0x0f610000
- x9 : 0x0f6184f6

### Data Mapping
- 0x10000008 : 0x0f6184f6
- 0x10000004 : 0x00000f61
- 0x10000000 : 0x000084f6

# Program 2 : 
### Statement: Write an Assembly Program for addition of 2 half words
 
### Name of file:
 halfword addition.s

### Observation - Single Cycle
- loading adresses of 2 halfwords to registers
- loading value of those 2 halfwords to registers
- add the values loaded in those 2 registers
- store the value in the destination register
 
 
### Register Mapping
- x7 : 0x000084f6
- x8 : 0x0f610000
- x9 : 0x0f6184f6

### Data Mapping
- 0x10000004 : 0x00000116
- 0x10000000 : 0x00fe0018


# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
 2 bytes addition.s

### Observation - Single Cycle
- loading adresses of 2 bytes to registers
- loading value of those 2 bytes to registers
- add the values loaded in those 2 registers
- store the value in the destination register
 
 
### Register Mapping
- x4  : 0x00000018
- x6  : 0x000000fe
- x11 : 0x00000002

### Data Mapping
- 0x10000004 : 0x00000002
- 0x10000000 : 0x000800fa


# Program 4: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
 analyses of storing different data type.s  

### Observation - Single Cycle
#### signed byte
- load the address of bytes to register
- load the value in that address to registor
- store the  new value at the next address
#### unsigned byte
- load the address of bytes to register
- load the value in that address to registor
- store the  new value at the next address
#### signed halfword
- load the address of halfword to register
- load the value in that address to registor
- store the  new value at the next address
#### unsigned halfword
- load the address of halfword to register
- load the value in that address to registor
- store the  new value at the next address
#### signed & unsigned word(no specific opcode for unsigned word in RV32I)
- load the address of word to register
- load the value in that address to registor
- store the  new value at the next address

### Register Mapping
#### signed byte 
- x1  : 0x10000000
- x2  : 0xffffffff
#### unsigned byte
- x3  : 0x10000001
- x4  : 0x000000ff
#### signed halfword
- x5  : 0x10000002
- x6  : 0xffffffff
##### unsigned halfword 
- x7  : 0x10000004
- x8  : 0x0000ffff
#### signed & unsigned word
- x9  : 0x10000006
- x10 : 0xffffffff

### Data Mapping
- 0x10000020 : 0x00000000
- 0x10000010 : 0x00000000
- 0x1000000c : 0x0000ffff
- 0x10000008 : 0xffffffff
- 0x10000004 : 0xffffffff
- 0x10000000 : 0xffffffff
