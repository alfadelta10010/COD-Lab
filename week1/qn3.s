.data
a: .byte 0x5, 0x7

.text

la x11,a
lb x12,0(x11)
lb x13,1(x11)
add x14,x12,x13

sb x14,2(x11)
