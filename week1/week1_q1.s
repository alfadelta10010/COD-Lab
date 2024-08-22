.data
a: .word 0x10000000,0x20000000
.text
la x10, a
lw x11,0(x10) 
lw x12,4(x10)
add x13,x11,x12
sltu x14,x13,x12
sw x13,8(x10)