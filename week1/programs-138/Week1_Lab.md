# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
 Wordcode.s

### Observation - Single Cycle
- load the address from the memory into the registers
-add 2 word size registers
 
### Register Mapping
- x10-0x10000000
- x7  -0x123454e3
- x8  -0x54321901
- x11-0x66666de4

### Data Mapping
- 0x10000008-0x66666de4
- 0x10000004-0x54321901
- 0x10000000-0x123454e3

------------------------------------------------------------------------------------------------------------------------------------

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
 halfcode.s

### Observation - Single Cycle
- load the address from the memory into the registers
-add 2 half size registers
-store the half size data from the register into the memory
 
### Register Mapping
- x10-0x10000000
- x7  -0x000000e3
- x8  -0x00000008
- x11-0x000000eb

### Data Mapping
- 0x10000004-0x000000eb
- 0x10000000-0x000800e3

------------------------------------------------------------------------------------------------------------------------------------

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
 bytecode.s

### Observation - Single Cycle
- load the address from the memory into the registers
-add 2 byte size registers
-store the byte size data from the register into the memory
 
### Register Mapping
- x10-0x10000000
- x7  -0x00000005
- x8  -0x00000008
- x11-0x0000000d

### Data Mapping
- 0x10000004-0x00000000
- 0x10000000-0x000d0805

------------------------------------------------------------------------------------------------------------------------------------

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
 bytecode.s

### Observation - Single Cycle
- load the address from the memory into the registers
-add 2 byte unsigned size registers,2 halfword unsigned sized and 2 word sized registers
-store the data from the register into the memory
 
### Register Mapping
- x10-0x10000000
- x11 -0x10000004
- x12 -0x10000006
- x13-0x11110000
- x14-0xf f f f f f 11
- x15-0x0000f f 11
- x16-0xf f f f f f f 0
- x17-0x000000f 0

### Data Mapping
- 0x10000000-0x11110000
- 0x10000004-0xf0110000
- 0x10000008-0x0000f f f 0
- 0x10000010-0x00000000
