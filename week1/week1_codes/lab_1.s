.data
a: .word 0x00001234,0x00001234,0

.text
la x10,a
lw x11,0(x10)
lw x12,4(x10)
add x13,x11,x12
sw x13,8(x10)