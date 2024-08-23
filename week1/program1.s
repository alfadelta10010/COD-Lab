.data 
a: .word 0x12345678 0x23456789       # creating a variable of type word
.text
la x10,a              # loading base address of a in x10
lw x11,0(x10)         # loading word of data (0x1234) to register x11
lw x12,1(x10)         # loading word of data (0x2345) to register x12
add x13,x11,x12       # adding the data present in x11 and x12 and storing in it x13
sw x13,2(x10)         # storing the value present in x13 to the memory 