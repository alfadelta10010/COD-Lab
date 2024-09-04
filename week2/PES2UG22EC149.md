# program 1:
### Statement: Write an Assembly Program for the following C code:
### Name of file:


### Observation - Single Cycle
- The hard part of this code was making the array which I don't think was part of the question
- Errors came up due to the signed nature of lh while adding the array. Therefore had to use lhu instruction
- It took a total of 236 cycles to complete execution with cpi and pci of 1
 
### Register Mapping
- *x11:* 0x00042d5c
- rest are dynamic

### Data Mapping
- *0x10000000:* 0x12345678
- *0x10000004:* 0x9abcdef0
- *0x10000008:* 0x12345678
- *0x1000000c:* 0x9abcdef0
- *0x10000010:* 0x12345678



---

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
src/l2p2.s

### Observation - Single Cycle
- Needed 2 32 bit registers for this operations
- After adding the 1st half of the each dwords and storing their carry in a separate register, we add the next word.
- The carry is then propogated to the second sum
 
### Register Mapping
- *x11:* 0x80101023
- *x12:* 0x00104035
- *x14:* 0x80003012
- *x15:* 0x80104036
- *x20:* 0x00000001

### Data Mapping
- *0x10000000:* 0x80101023
- *0x10000004:* 0x80003012
- *0x10000008:* 0x80003012
- *0x1000000c:* 0x00101023

- *0x10000014:* 0x00104035
- *0x10000018:* 0x80104036