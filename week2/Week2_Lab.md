# Program 1: 
### Statement: 
Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
64bitaddwithcarry.s.s

### Observation - Single Cycle
1. divide the number into msb and lsb 
2. add the lsb of both numbers 
3. the carry is then added with the msb of the 2 numbers 
4. the carry is checked using syntax sltu
5. the resul is then stored 
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
      x8                s0         0xffffffff
      x9                s1         0xffffffff
      x10               a0         0xffffffff
      x11               a1         0xffffffff
      x12               a2         0xfffffffe
      x13               a3         0x00000001


### Data Mapping
- **<Memory Address>:** <Value stored>
       0x10000014           0x00000000
       0x10000010           0x00000000
       0x1000000c           0xffffffff
       0x10000008           0xffffffff
       0x10000004           0xffffffff
       0x10000000           0xffffffffx
