.data
a: .half 0x0123, 0x0001
b: .byte 0x01, 0x01
c: .word 0x00000002, 0x00000012

.text
la x10, a
lh x11, 0(x10)
lh x12, 2(x10)
add x13, x11, x12
sh x13, 4(x10)
lhu x14, 0(x10)
lhu x15, 2(x10)
add x16, x14, x15
sh x16, 6(x10)

la x17, b
lb x18, 0(x17)
lb x19, 1(x17)
add x20, x18, x19
sb x20, 2(x17)
lbu x21, 0(x17)
lbu x22, 1(x17)
add x23, x21, x22
sb x23, 3(x17)

la x24, c
lw x25, 0(x24)
lw x26, 4(x24)
add x27, x25, x26
sw x27, 8(x24)
