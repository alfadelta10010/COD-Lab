# Program 1: 
### Statement: assembly program to add elements of an array into a register

### Name of file:
forloop.s

### Observation - Single Cycle
- loading the address of array into a register and initializing t0 reg to 0(storing the sum)
- then using lh to load a[0],a[1],.....a[9] into a temp register t1, will be reusing the register 
- manually adding t1 and t0 each time after loading a particular element of the array and storing the 
  result back into memory
 
### Register Mapping
- x10: address of a
- t1 :a[0],a[1],a[2]......,a[9]
  resusing t1 reg
### Data Mapping
- x10 :0x10000000
- x5(t0)  : 0x00009b24 #result
- x6(t1)  :
     0x1234        # a[0]
     0x5678        # a[1]
     0x0056        # a[2]
     0x00a7       # a[3]
     0x0700        # a[4]
     0x0500        # a[5]
     0x0000        # a[6]
     0x0ff0        # a[7]
     0x0345        # a[8]
     0x1246        # a[9]
     0x0000        #a[10] to store sum

# Program 2: 
### Statement: adding two 64-bit numbers using 32-bit registers

### Name of file:
adding_double.s


### Observation - Single Cycle
- we load one 64-bit number into two regs, so in total storing the two 64-bit numbers in 4 32-bit regs 
- first, we add the two regs containing the lsb of the two 64-bit numbers, check for carry and store the carry in a reg(if any),
  then add the most significant bits into a reg, check for carry 
- add the first carry(because of lsb) and store the result back into memory

 
### Register Mapping
- x10: address of a
  x9: msb of first number
  x8: lsb of first number
  x7: msb of second num
  x6: lsb of second num
  x5: result of two lsb
  x11: first carry
  x2:  result of msb
  x12: second carry
  x3 : first carry and msb

### Data Mapping
- x10:0x10000000
  x9:0xffffffff
  x8:0xffffffff
  x7:0xffffffff
  x6:0xffffffff
  x5:0xfffffffe
  x11:0x00000001
  x2:0xfffffffe
  x12:0x00000001
  x3: 0xffffffff


