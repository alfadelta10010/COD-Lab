.data
a: .byte,0xFD,0x01
.text
la x10,a
lbu x11,0(x10)
lbu x12,1(x10)
add x13,x11,x12
sb x13,2(x10)