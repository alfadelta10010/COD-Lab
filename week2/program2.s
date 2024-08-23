.data
a: .dword 0xffffffffffffffff 0xffffffffffffffff    #Creating a variable a of double word size
.text
la x10,a                                   # loading base address of a in x10
lw x11,0(x10)                              # loading lsb of 1st data to x11
lw x12,4(x10)                              # loading msb of 1st data to x12
lw x13,8(x10)                              # loading lsb of 2nd data to x13
lw x14,12(x10)                             # loading msb of 2nd data to x14
add x15,x11,x13                            # adding lsb's of both data and storing the result in x15
sltu x16,x15,x11                           # checking if the carry is happening during addition 
add x17,x12,x14                            # adding msb's of both data and storing the result in x17
sltu x19,x17,x12                           # checking if the carry is happening during addition
add x18,x17,x16                            # checking if the carry is happening during addition 
sw x15,16(x10)                             # storing the msb of the 64bit result in the memory
sw x18,20(x10)                             # storing the lsb of the 64 bit result in the memory
