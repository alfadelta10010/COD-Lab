# Program 2: 
Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
program2.s

### Observation - Single Cycle
- First we are adding MSB part and storing if any carry is generated in a register.Then we are adding LSB and adding it with the value stored before. Finally add the last carry generated and store the final result in one register.
 
### Register Mapping
- x11:0xffffffff
- x12:0xffffffff
- x13:0xffffffff
- x14:0xffffffff
- x15:0xfffffffe
- x16:0x00000001
- x17:0xffffffff
- x18:0x00000001
- x19:0xfffffffe

### Data Mapping
- 0x00000000:0x10000517
- 0x00000004:0x00050513
- 0x00000008:0x00052583
- 0x0000000c:0x00452603
- 0x00000010:0x00852683
- 0x00000014:0x00c52703
- 0x00000018:0x00d587b3
- 0x0000001c:0x00b7b833
- 0x00000020:0x00e608b3
- 0x00000024:0x00c8b933
- 0x00000028:0x010889b3
- 0x0000002c:0x00f52823
- 0x00000030:0x01352a23
- 0x00000034:0x00000000

...
