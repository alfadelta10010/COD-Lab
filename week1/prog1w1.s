.data
a: .word 0x42738814,0x91423746

.text
la x10, a
lw x11, 0(x10)
lw x12, 4(x10)
add x13, x11, x12
sw x13, 8(x10)