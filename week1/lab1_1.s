.data
a: .byte 0x02, 0x6A

.text
la x10, a
lb x12, 0(x10)
lb x13, 1(x10)
add x14, x13, x12
sb x14, 2(x10)
}
