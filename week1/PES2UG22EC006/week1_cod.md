# Program 1: 
### Statement: Write an assembly language for addition of 2 word

### Name of file:
week1.1.s

### Observation - Single Cycle
- This program loads 2 32bit words from a, a+4 into registers x5 and x6.
- It then performs the add operation and stores the result in register x7 with an offset of 8bits
- And we can see the result x5+x6  stored in x7 register.
 
### Register Mapping
- x10 - 0x10000000
- x5 - 0x0000000c
- x6 - 0x12121212
- x7 - 0x2446688a

### Data Mapping
- 0x10000008 - 0x2446688a
- 0x10000004 - 0x12121212
- 0x10000000 - 0x12345678

# Program 2: 
### Statement: Write an assembly program for addition of 2 half words
### Name of file:
week1.2.s

### Observation - Single Cycle
- This program loads 2, 16bit half words from memory locations a and a+2 and stores them in registers x5 and x6
- It adds the 2 values togather and storers them  at memory locations a+4 in register x7
- And we can see the result of the addition x5, x6 stored in x7
 
### Register Mapping
- x5 - 0x00001234
- x6 - 0x00001212
- x7 - 0x00002446

### Data Mapping
- 0x10000004 - 0x00002446
- 0x10000000 - 0x12121234

# Program 3: 
### Statement: Write an assembly program for addition of 2 bytes.

### Name of file:
week1.3.s

### Observation - Single Cycle
 This program loads 2, 8bit  byte from memory locations a and a+1 and stores them in registers x9 and x10
- It adds the 2 values togather and storers them  at memory locations a+2 in register x11
- And we can see the result of the addition x9, x10 stored in x11
 

.
 
### Register Mapping
- x8 - 0x10000000
- x9 - 0x00000013
- x10 - 0x00000024
- x11-0x00000037

### Data Mapping
- 0x10000004 - 0x00000000
- 0x10000000 - 0x00372413

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
week1.4.s

### Observation - Single Cycle
.data
 Define two halfwords (16-bit values): -5 and 3, and store them in label 'a'
 Define two bytes (8-bit values): -4 and 1, and store them in label 'b'
Load address of label 'a' into register x8
 Load address of label 'b' into register x9

Load the first halfword from memory address in x8 (a[0] = -5) into register x10
Load the second halfword from memory address in x8 (a[1] = 3) into register x11
 Add the values in registers x11 and x10, store the result in x12

 Load the first byte from memory address in x9 (b[0] = -4) into register x13
 Load the second byte from memory address in x9 (b[1] = 1) into register x14
 Add the values in registers x13 and x14, store the result in x15

 Load the first halfword as an unsigned value from x8 (a[0] = -5 as unsigned) into x16 Load the second halfword as an unsigned value from x8 (a[1] = 3) into x17
 Add the values in registers x17 and x16, store the result in x18

 Load the first byte as an unsigned value from x9 (b[0] = -4 as unsigned) into x19 Load the second byte as an unsigned value from x9 (b[1] = 1) into x20
 Add the values in registers x19 and x20, store the result in x21

 Store the halfword in x12 into memory at address x8 + 4
 Store the halfword in x15 into memory at address x8 + 6

 Store the byte in x18 into memory at address x15 + 3
 Store the byte in x21 into memory at address x21 + 4

### Register Mapping
- x8 - 0x10000000
- x9 - 0x10000004
- x10- 0xfffffffb
- x11-0x00000003
- x12-0xfffffffe
- x13-0xfffffffc
- x14-0x00000001
- x15-0xfffffffd
- x16-0x0000fffb
- x17-0x00000003
- x18-0x0000fffe
- x19-0x000000fc
- x20-0x00000001
- x21-0x000000fd

### Data Mapping
- 0x00000018 - 0x00a58633
- 0x00000014 - 0x00241583
- 0x00000010 - 0x00041503
- 0x0000000c - 0xffc48493
- 0x00000008 - 0x10000497
- 0x00000004 - 0x00040413
- 0x00000000 - 0x10000417






