.data
a:.byte    0x3D 0x7F,     #(decimal value= 61,127)
.text
la x10,a  # loading the address into reg x10
lbu x12,0(x10) # 0x7F loaded in x12 i.e(a[0])
lbu x13,1(x10) # 0x3D loaded in x13 i.e(a[1])
bgeu x12,x13,exit # x12>x13 no swaping exit label is executed  
                  # x12<x13 swapping is done 
sb x12,1(x10) # swapping 
sb x13,0(x10)
exit: nop