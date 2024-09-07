data
a:.word 0X0BCDEF22
.text
la x3,a #loading a address of a inj x3
lw x4,0(x3)#loading a content of x3 in x4
slli x5,x4,24 # 
srli x6,x4,8
slli x7,x6,24
srli x8,x7,8
or x20,x5,x8
srli x9,x4,16
slli x10,x9,24
srli x11,x10,16
srli x12,x4,24
or x21,x11,x12
or x22,x20,x21 

