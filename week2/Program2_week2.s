.data
a:  .word 0xEEEEFFFF, 0xFFFFEEEE, 0xFFFFFFFF, 0xEEEEEEEE

.text
la x10, a

lw x9,  0(x10)
lw x8,  4(x10)
lw x7,  8(x10)
lw x6, 12(x10)

add x5, x9, x7
sltu x11, x5, x9

add x3, x8, x6
add x3, x3, x11

sw x5, 16(x10)
sw x3, 20(x10)
