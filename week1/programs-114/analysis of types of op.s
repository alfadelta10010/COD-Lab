#signed byte
.data
a: .byte 0xFF
.text
la x10, a
lb x12, 0(x10)
sb x12, 1(x10)

#unsigned byte
.data
b: .byte 0xFF
.text
la x11, b
lbu x1, 0(x10)
sb x1, 1(x10)

#signed half word
.data
c: .half 0xFFFF
.text
la x2, a
lh x3, 0(x10)
sh x3, 1(x10)

#unsigned half word
.data
d: .half 0xFFFF
.text
la x4, c
lhu x5, 0(x10)
sh x5, 1(x10)

#signed word
.data
e: .word 0xFFFFFFFF
.text
la x6, d
lw x7, 0(x10)
sw x7, 1(x10)

#unsigned word
.data
f: .word 0xFFFF
.text
la x9, e
lhu x14, 0(x10)
sw x14, 1(x10)

