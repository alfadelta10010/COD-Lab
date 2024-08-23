.data 
a: .byte 0x2 0xa      # creating a variable of type byte 
.text
la x10,a              # loading base address of a in x10
lb x11,0(x10)         # loading byte of data (0x2) to register x11
lb x12,1(x10)         # loading byte of data (0x2) to register x12
add x13,x11,x12       # adding the data present in x11 and x12 and storing in it x13
sb x13,2(x10)         # storing the value present in x13 to the memory 