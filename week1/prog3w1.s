.data
a: .byte 0x72, 0x11

.text
la x10, a
lb x11, 0(x10)
lb x12, 2(x10)
add x13, x11, x12
sb x13, 4(x10)
