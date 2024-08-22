# Program 1: 
### Statement: to write assembly code for the following c code

### Name of file:
week2i.s

### Observation - Single Cycle
-created a array of 11 halfwords whose address are loaded into x10 register
-their values are loaded into register x10 then each element of the array is added to h which gets updated after every iteration
-the final value of h is stored into a[11] which is the register x12
 
### Register Mapping:
-x2:0x00000000
-x3:0x00001234
-x4:0x00005678
-x5:0x00001111
-x6:0x00002222
-x7:0x00003333
-x8:0x00004444
-x9:0x00005050
-x10:0x00000101
-x11:0x00007089
-x12:0001f651

### Data Mapping
- x10: 0x10000000

...

# Program 2:
### Statement:2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I  

### Name of file:
week2ii.s

### Observation - Single Cycle
-the 64 bit number is split into 32 bits, the LSB split is stored in a while the MSB split is present in b
-the LSB split of the numbers are loaded in register x10 while the MSB split is present in x11
-the LSB of the numbers is added and stored into x2, while the carry is present in x6
-similarly, the MSB of the numbers is added and present in x4 with the carry in x7
- the final sum is present in x8 = sum of MSB's + carry of the LSB's
 
### Register Mapping
- x2:0xfffffffe
-x3:0xFFFFFFFF
-x4:0xFFFFFFFE
-x5:0xFFFFFFFF
-x6:0x00000001
-x7:0x00000001
-x8:0xffffffff

### Data Mapping
- x10:0x10000000
-x11:0x10000000

...
