.data
a: .byte 0x01,0x12
b: .byte 0x01
.text
la x10,a
la x11,b
lb x12,0(x10)
lb x13,1(x10)
add x14,x12,x13
sb x14,0(x10)
