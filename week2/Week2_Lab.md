# Program 1: 
### Statement: Write a program using RV32 single cycle RISC V processor perform addition of two 64 bit unsigned numbers and store the result in the memory.

### Name of file:
week2q1.s

### Observation - Single Cycle
- we take 2 double words (64 bits) and store them in a register, then we load each word's LSB and MSB separately in totally 4 registers. LSB's and MSB's are added separately then stored in another register. then the carry of LSB's and MSB's is calculated and stored in another register. we then add the carry of the LSB's to the MSB which becomes the final MSB. finally we store the LSB , the final MSB and the MSB's carry.

### Register Mapping
- **x10:** 0x00000000
- **x11:** FFFFFFFF
- **x12:** FFFFFFFF
- **x13:** FFFFFFFF
- **x14:** FFFFFFFF
- **x15:** FFFFFFFE
- **x16:** FFFFFFFE
- **x17:** 0x00000001
- **x18:** 0x00000001
- **x19:** FFFFFFFF

### Data Mapping
- **x19:** FFFFFFFF
- **x18:** 0x00000001
- **x15:** FFFFFFFE

----------

# Program 2: 
### Statement: Write a program to perform c[i]=a[i]+b[i] where N=5

### Name of file:
week2q2.s

### Observation - Single Cycle
- So a[0]+b[0] needs to be stored in c[0], Similarly for all 5 numbers, assuming a and b to be 5 index long array.
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x10000014
- **x12:** 0x10000028
(for 1st index)
- **x13:** 0x00000000
- **x14:** 0x00000009
- **x15:** 0x00000009
(for 2nd index)
- **x13:** 0x00000001
- **x14:** 0x00000008
- **x15:** 0x00000009
(for 3rd index)
- **x13:** 0x00000004
- **x14:** 0x00000007
- **x15:** 0x0000000b
(for 4th index)
- **x13:** 0x00000003
- **x14:** 0x00000006
- **x15:** 0x00000009
(for 5th index)
- **x13:** 0x00000002
- **x14:** 0x00000005
- **x15:** 0x00000007

### Data Mapping
(for 1st index)
- **x15:** 0x00000009
(for 2nd index)
- **x15:** 0x00000009
(for 3rd index)
- **x15:** 0x0000000b
(for 4th index
- **x15:** 0x00000009
(for 5th index)
- **x15:** 0x00000007
