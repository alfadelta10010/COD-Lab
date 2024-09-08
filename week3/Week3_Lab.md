.data
a: .word 0x12345678
b: .word 0xff
c: .word 0
.text
la x2,a
la x5,b
la x6,c
lw x3,0(x2)
lw x4,0(x5)
and x7,x3,x4 #00000078 
slli x7,x7,24 #78000000
srli x3,x3,8 #00123456
and x10,x3,x4 #00000056
slli x10,x10,16 #00560000
or x7,x7,x10  #78560000
srli x3,x3,8
and x11,x3,x4
slli x11,x11,8 
or x12,x7,x11
srli x3,x3,8
and x13,x3,x4
or x12,x13,x12

sw x12,0(x6)