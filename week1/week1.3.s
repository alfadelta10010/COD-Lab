.data
a: .byte 0x13,0x24
.text
la x8,a
lb x9,0(x8)
lb x10,1(x8)
add x11,x9,x10
sb x11,2(x8)
