.data 
a: .half 0x1234 0x2345      # creating a variable of type halfword
.text
la x10,a              # loading base address of a in x10
lh x11,0(x10)         # loading half word of data (0x1234) to register x11
lh x12,1(x10)         # loading half word of data (0x2345) to register x12
add x13,x11,x12       # adding the data present in x11 and x12 and storing in it x13
sh x13,2(x10)         # storing the value present in x13 to the memory 