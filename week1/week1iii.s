.data
a: .byte 0x11 0x33
.text
la x10,a
lb x2,0(x10)
lb x3,1(x10)
add x4,x3,x2
