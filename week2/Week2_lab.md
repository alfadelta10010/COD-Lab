# Program 1: 
### Statement: Write an Assembly Program for the following C code:
                    for(i=0;i<5;i++)
                    {
                     c[i]=a[i]+b[i];
                    }
### Name of file:
<COD-Lab/Week2/Program1.s>

### Observation - Single Cycle
- Since we haven't learned looping in assembly code we take 3 separate registers consisting of the given registers and the third register is used to store the updated values after addition.
- So we load the numbers first 4 bytes and then the rest into the assigned memory registers.
- And we perform the addition multiple times instead of running it in a loop and store the added values in a register
 
### Register Mapping
- x10 : 0x10000000
- x11 : 0x10000014
- x12 : 0x10000028
- x14 : 0x00000002
- x15 : 0x00000007
- x16 : 0x00000009
### Data Mapping
- 0x10000038 : 0x00000000
- 0x10000034 : 0x00000000
- 0x10000030 : 0x00000000
- 0x1000002c : 0x00000009
- 0x10000028 : 0x00000007
- 0x10000024 : 0x0000000a
- 0x10000020 : 0x00000009
- 0x1000001c : 0x00000008
- 0x10000018 : 0x00000007
- 0x10000014 : 0x00000006
- 0x10000010 : 0x00000005
- 0x1000000c : 0x00000004
- 0x10000008 : 0x00000003
- 0x10000004 : 0x00000002
- 0x10000000 : 0x00000001
...

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
<COD-Lab/Week2/Program2.s>

### Observation - Single Cycle
- Since we need to perform 64 bit addition we assign the data type as double word to the variables and store the values.
- We then load the double word as 2 separate words as RV32I supports only 32 bits we load from MSB to LSB
- We then perform regular addition of 2 words and store the value and in case we have a carry generated we use the shift left function and store the value in another register and then perform addition of that with the rest of the 32 bits and if we have a carry store that in another register
- Finally we add all the carry's and the addition result into another register
 
### Register Mapping
- x10 : 0x10000000
- x11 : 0x10000008
- x12 : 0xffffffff
- x13 : 0xffffffff
- x14 : 0xffffffff
- x15 : 0xffffffff
- x16 : 0xfffffffe
- x17 : 0x00000001
- x18 : 0xfffffffe
- x19 : 0x00000001
- x20 : 0xffffffff

### Data Mapping
- 0x1000000c : 0xffffffff
- 0x10000008 : 0xffffffff
- 0x10000004 : 0xffffffff
- 0x10000000 : 0xffffffff

...
