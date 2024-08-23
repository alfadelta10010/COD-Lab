

.data
a: .word 0x02020202,0x12345678
.text
la x10,a
lw x11,0x00(x10)
lw x12,0x04(x10)
add x13,x11,x12
sw x13,8(x10)