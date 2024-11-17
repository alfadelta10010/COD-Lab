.data
a: .word 0x00000001,0x12345678
b: .word 0x00000001
.text
la x10,a
la x11,b
lw x12,0(x10)
lw x13,4(x10)
add x14,x12,x13
sw x14,8(x10)