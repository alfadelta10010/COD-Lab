.data
n:.word 0x24,0x78
.text
la x10,n
lw x11,0(x10)
lw x12,4(x10)


add x13,x11,x12
sltu x16,x13,x11

sw x13,8(x10)
sw x16,12(x10)