# Program 1: 
### Statement: Write an Assembly Program for the following C code

### Name of file:
 week2.s

### Observation - Single Cycle
- This assembly code iterates through an array of 16-bit halfword values, summing them together. It then stores the resulting sum at the memory location immediately following the last element of the array. The loop runs a fixed number of times, processing 10 elements from the array.
 
### Register Mapping
- x10:0x10000014
  x11:0x0000000a
  x12:0x000068ac
  x13:0x0000000a

### Data Mapping
- 0x00000020:0x00c52023
  0x0000001c:0xfeb6e8e3
  0x00000018:0x00168693
  0x00000014:0x00250513
  0x00000010:0x01460633
  0x0000000c:0x00055a03
  0x00000008:0x00a00593
  0x00000004:0x00050513
...

# Program 2: 
### Statement:  Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
week2.s

### Observation - Single Cycle
- This assembly code loads four 32-bit words from memory into registers and performs an addition operation on two pairs of these values. It then checks for an overflow from the first addition and uses it to adjust the second sum if needed. Finally, it stores the results of these operations into two memory locations labeled result_lower and result_upper
 
### Register Mapping
- x10:0x10000004
  x11:0x12345678
  x12:0x1000000c
  x13:0x10000008
  x14:0x13753293
  x15:0x13753293
  x16:0x25a9890b
  x17:0x00000000
  x18:0x2375329f
  x19:0x2375329f
  x20:0x10000010
  x21:0x10000014

### Data Mapping
- 0x0000003c:0x011909b3
  0x00000038:0x00f60933
  0x00000034:0x00b838b3
  0x00000030:0x00e58833
  0x0000002c:0x0006a783
  0x00000028:0xfe860613
  0x00000024:0x10000617
  0x00000020:0x0006a703
  0x0000001c:0xff068693
  0x00000018:0x10000697
  0x00000014:0x00052603
  0x00000010:0xff850513
  0x0000000c:0x10000517
  0x00000008:0x00052583
  0x00000004:0x00050513
  0x00000000:0x10000517

...
