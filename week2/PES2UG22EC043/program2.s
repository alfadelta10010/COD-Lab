.data
a: .word 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, # y, m, L, D, Z, C
.text

la x10, a

lw x11, 0(x10)
lw x12, 4(x10)
lw x13, 8(x10)
lw x14, 12(x10)
lw x15, 16(x10)
lw x16, 20(x10)

add x5, x11, x12
sub x6, x13, x14
add x7, x15, x16

sub x5, x5, x6
add x5, x5, x7
sub x5, x5, x14