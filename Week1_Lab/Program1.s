.data
n1: .word 0x00001234, 0x00004321

.text
la x10,n1
lw x11,0(x10)
lw x12,4(x10)
add x13, x12, x11
sw x13,8(x10)