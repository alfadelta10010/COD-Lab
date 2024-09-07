#signed byte
.data
a: .byte 0xFF
.text
la x1, a
lb x2, 0(x1)
sb x2, 1(x1)

#unsigned byte
.data
b: .byte 0xFF
.text
la x3, b
lbu x4, 0(x3)
sb x4, 1(x3)

#signed half word
.data
c: .half 0xFFFF
.text
la x5, c
lh x6, 0(x5)
sh x6, 2(x5)

#unsigned half word
.data
d: .half 0xFFFF
.text
la x7, d
lhu x8, 0(x7)
sh x8, 2(x7)

#signed & unsigned word
.data
e: .word 0xFFFFFFFF
.text
la x9, e
lw x10, 0(x9)
sw x10, 4(x9)

