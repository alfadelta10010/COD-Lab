# Program 1: 
### Statement: Write an Assembly Program for the C code:

### Name of file:
Program1.s

### Observation - Single Cycle
- 10 half words are first defined in the .data segment.The address of the array 'a' and the variable h is loaded into two different registers.
- A for loop is run 10 times. Each half word in 'a' is loaded into different registers repeatedly over 10 times using the 'lhu' instruction and concurrently stored in the 'h' register using the 'sh' instruction.
- The final result in 'h' is then stored in the 10th index of array 'a'.
 
### Register Mapping
- **x12:** 0x00001234
- **x13:** 0x00005678
- **x14:** 0x00009012
- **x15:** 0x00003456
- **x16:** 0x00009abc
- **x17:** 0x0000def1
- **x18:** 0x00004356
- **x19:** 0x00002221
- **x20:** 0x00001908
- **x21:** 0x00002231
- **x22:** 0x00004771
- **x28:** 0x00034771

### Data Mapping
- **0x10000000:** 0x56781234
- **0x10000004:** 0x34569012
- **0x10000008:** 0xdef19abc
- **0x1000000c:** 0x22214356
- **0x10000010:** 0x22311908
- **0x10000014:** 0x00004771

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
Program2.s

### Observation - Single Cycle
- Two 64 bit numbers are defined in the data segment. The address of the array is loaded into x7 using the 'la' instruction. 
- The lsb of the two 64 bit values are first added and loaded into the x12 register(32 bit value). If a carry is generated that value is also loaded into the x13 register. The msb's are added and loaded in the x14 register following which the carry that was generated previously is added to x14.
- Therefore we get the msb and the lsb after adding the two 64 bit numbers.
 
### Register Mapping
- **x8:** 0x92341256
- **x9:** 0x12341234
- **x10:** 0x92236789
- **x11:** 0x9123af78
- **x12:** 0x245779df
- **x13:** 0x00000001
- **x14:** 0xa357c1ac
- **x15:** 0xa357c1ad

### Data Mapping
- **0x10000000:** 0x92341256
- **0x10000004:** 0x12341234
- **0x10000008:** 0x92236789
- **0x1000000c:** 0x9123af78
- **0x10000010:** 0x245779df
- **0x10000014:** 0xa357c1ad

