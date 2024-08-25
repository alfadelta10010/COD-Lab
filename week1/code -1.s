.data
a:    .word 0xFFFE,0x0001,0x0000
.text
la x10,a
lw x11,0(x10)#bringing data into register file
lw x12,2(x10)
add x13,x11,x12
sw x13,8(x10)