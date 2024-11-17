#addition of N words
.data
a: .word 0x80000002, 0x9123456A
.text
la x10, a
lw x11, 0(x10)
lw x12, 4(x10)
add x13, x11, x12
sw x13, 8(x10)

#addition of N half words
.data
a: .half 0x0002, 0x0432
.text
la x10, a
lh x11, 0(x10)
lh x12, 2(x10)
add x13, x11, x12
sh x13, 4(x10)

#addition of N bytes
.data
a: .byte 0x12, 0x32
.text
la x10, a
lb x11, 0(x10)
lb x12, 1(x10)
add x13, x11, x12
sb x13, 2(x10)
