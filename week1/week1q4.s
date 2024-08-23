#signed byte
.data
a: .byte 0xFF
.text
la x10, a
lb x11, 0(x10)
sb x11, 1(x10)

#unsigned byte
.data
a: .byte 0xFF
.text
la x10, a
lbu x11, 0(x10)
sb x11, 1(x10)

#signed half word
.data
a: .half 0xFFFF
.text
la x10, a
lh x11, 0(x10)
sh x11, 1(x10)

#unsigned half word
.data
a: .half 0xFFFF
.text
la x10, a
lhu x11, 0(x10)
sh x11, 1(x10)

#signed word
.data
a: .word 0xFFFFFFFF
.text
la x10, a
lw x11, 0(x10)
sw x11, 1(x10)

#unsigned word
.data
a: .word 0xFFFFFFFF
.text
la x10, a
lwu x11, 0(x10)
sw x11, 1(x10)
