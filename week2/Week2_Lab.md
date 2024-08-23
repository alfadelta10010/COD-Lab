# Program 1:
### Statement: Write an Assembly Program for the following C code: a[i]=h[i]+a[i]

### Name of file:COD-Lab/week2/program1.s

### Observation - Single Cycle
- 1)loading the data of 3 variables of size word and storing it in the memory
  2)loading the address of those 3 variables in x10,x11,x12
  3)loading the data present in the a to x13 , b to x14
  4)adding the data and storing the result in x15
  5)storing the result present in x15 to the memory
  6) reusing the the same registers for next cycle by increasing the offset value of the address

### Register Mapping
- x10 : 0x10000000
- x11 : 0x10000014
- x12 : 0X10000028
- x13 : 0x10000456
- x14 : 0x45678ef
- x15 : 0x55678845

### Data Mapping
- 0x10000000 : 0x12345678
- 0x10000004 : 0x23456789
- 0x10000008 : 0x17efa3c2
- 0x1000000c : 0x34687546
- 0x10000010 : 0x10000456
- 0x10000014 : 0x12323235
- 0x10000018 : 0x0eface12
- 0x1000001c : 0x25647357
- 0x10000020 : 0x4267845e
- 0x10000024 : 0x456783ef
- 0x10000028 : 0x246688ad
- 0x1000002c : 0x3240359b
- 0x10000030 : 0x3d541719
- 0x10000034 : 0x76cff9a4
- 0x10000038 : 0x55678845





# Program 2:
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:COD-Lab/week2/program2.s

### Observation - Single Cycle
- 1)loading the double word data to the memory and storing that address in x10 register
  2)loading the data of word size and storing it in two registers each
  3)adding the lsb of the two data's and checking if the carry is occurred or not
  4)adding the msb of the two data's and checking if the carry is occurred or not
  5)adding the carry to the msb addition result
  6)storing the data back to memory

### Register Mapping
- x10 : 0x10000000
- x11 : 0xffffffff
- x12 : 0Xffffffff
- x13 : 0xffffffff
- x14 : 0xffffffff
- x15 : 0xfffffffe
- x16 : 0x00000001
- x17 : 0xfffffffe
- x18 : 0xffffffff
- x19 : 0x00000001

### Data Mapping
- 0x10000000 : 0xffffffff
- 0x10000004 : 0xffffffff
- 0x10000008 : 0xffffffff
- 0x1000000c : 0xffffffff
- 0x10000010 : 0xfffffffe
- 0x10000014 : 0xffffffff
