# Program 1: 
### Statement: Write the program using rv32 single cycle RISC - V processor to perform 
addition of two 64 bit unsigned numbers and store the result in the memory

### Name of file:
data
a: .dword 0x1234567887654321,0x9ABCDEF00FEDCBA9
.text
la x10, a
lw x11,0(x10) #first lower
lw x12,4(x10) #first upper
lw x13,8(x10) #second lower
lw x14,12(x10) #second upper
add x15,x11,x13 #adding uppers
sltu x16,x15,x13 #lower carry
add x17,x12,x14 #adding uppers
sltu x18,x17,x14 #final carry
add x19,x16,x17 #adding uppers and lower carry

sw x15,16(x10) #store LSB of result
sw x19,20(x10) #store MSB of result
sw x18,24(x10) #store final carry



### Observation - Single Cycle
- The code manually handles the carry between the lower 32-bit and upper 32-bit parts of the 64-bit addition.
- The final carry from the upper 32-bit addition is stored in memory at address a + 24. This is useful for detecting overflow conditions. 
- Using 64-bit instructions would reduce the need for manual carry handling and intermediate steps, simplifying the code and improving performance.

### Register Mapping
- **<Register Number Used>:** <Value stored>

### Data Mapping
- **<Memory Address>:** <Value stored>


............................................................................................................................................................

# Program 2: 
### Statement: 2)	Write a program to perform c[i]=b[i]+a[i], assume length of the array is 5 

### Name of file:
data
a: .word 0x11111111,0x10000001,0x10000002,0x10000003,0x10000004
b: .word 0x22222222,0x20000001,0x20000002,0x20000003,0x20000004
c: .word 0x00000000,0x00000000,0x00000000,0x00000000,0x00000000
.text
la x10,a
la x11,b
la x12,c

lw x13,0(x10)#a[1]
lw x14,0(x11)#b[1]
add x15,x13,x14
sw x15,0(x12)#c[1]

lw x13,4(x10)#a[2]
lw x14,4(x11)#b[2]
add x15,x13,x14
sw x15,4(x12)#c[2]

lw x13,8(x10)#a[3]
lw x14,8(x11)#b[3]
add x15,x13,x14
sw x15,8(x12)#c[3]

lw x13,12(x10)#a[4]
lw x14,12(x11)#b[4]
add x15,x13,x14
sw x15,12(x12)#c[4]

lw x13,16(x10)#a[5]
lw x14,16(x11)#b[5]
add x15,x13,x14
sw x15,16(x12)#c[5]



### Observation - Single Cycle
- The code performs an element-wise addition of two arrays a and b, storing the result in 'c'.
- The code is designed to work specifically with arrays of five 32-bit integers. If the size of the arrays were to change, the code would need to be manually modified .
- The code does not use loops, which could be an optimization for handling repetitive tasks like element-wise addition across an array. 

### Register Mapping
- **<Register Number Used>:** <Value stored>

### Data Mapping
- **<Memory Address>:** <Value stored>

...
