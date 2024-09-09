#adding two double word and generate a carry
.data
a: .dword 0x9341712414571346 ,0x7593724896554573    #Creating a variable and two double word size values
.text
la x10,a                                   # loading base address of a in x10
lw x11,0(x10)                              # loading lsb of n1
lw x12,4(x10)                              # loading msb of n1
lw x13,8(x10)                              # loading lsb of n2
lw x14,12(x10)                             # loading msb of n2
add x15,x11,x13                            # adding lsb's of n1 and n2 and storing the result in x15 reg
sltu x16,x15,x11                           # checking if the carry is generated during addition 
add x17,x12,x14                            # adding msb's of n1 and n2 and storing the result in x17
sltu x19,x17,x12                           # checking if the carry is generated during addition
add x18,x17,x16                            # addition of the added vale of msb and the carry geberated by addition of lsb
sw x15,16(x10)                             # storing the msb of the 64bit result in the memory
sw x18,20(x10)                             # storing the lsb of the 64 bit result in the memory



