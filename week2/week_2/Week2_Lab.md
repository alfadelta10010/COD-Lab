# Program 1: 
### Statement: 
- Write an Assembly Program for the following C code
### Name of file:
w2prg1.s

### Observation - Single Cycle
- An array of 11 elements of halfword size is summed up and stored in reg x21
 
### Register Mapping
- 
x10 -> 0x10000000
x11 -> 0xffffaaaa
x12 -> 0x10000000
x13 -> 0x10000000
x14 -> 0xffffdddd
x15 -> 0xffffeeee
x16 -> 0xffffffff
x17 -> 0xffffabab
x18 -> 0xfffffefe
x19 -> 0xffffefef
x20 -> 0xffffcdcd
x21 -> 0xfffef0ea  #final ans
x22 -> 0xfffef0ea

### Data Mapping
0x10000000 -> 0xbbbbaaaa
0x10000004 -> 0xddddcccc
0x10000008 -> 0xffffeeee
0x1000000c -> 0xfefeabab
0x10000010 -> 0xcdcdefef
0x10000014 -> 0x00001111

=======================================================================================



# Program 1: 
### Statement: 
- Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
- addoftwo32bit.s

### Observation - Single Cycle
- Two 64bits data is considered , each split into 2 32 bit data and stored in registers
we add the 1st upper 32bits and 1st lower 32bits , this generates a carry, which is stored in one more reg, we now add 2nd upper and 2nd lower 32bits ,which also generates a carry(not used) , now we add the 1st carry to 2nd addition and store the result.
 
### Register Mapping
x10 -> 0x10000000
x11 -> 0xffffffff
x12 -> 0xffffffff
x13 -> 0xffffffff
x14 -> 0xffffffff
x15 -> 0xfffffffe
x16 -> 0x00000001 # 1st carry
x17 -> 0xfffffffe
x18 -> 0x00000001 #2nd carry
x19 -> 0xffffffff

### Data Mapping
0x10000000 -> 0xffffffff
0x10000004 -> 0xffffffff
0x10000008 -> 0xffffffff
0x1000000c -> 0xffffffff
0x10000010 -> 0xfffffffe
0x10000014 -> 0xffffffff






















