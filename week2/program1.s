.data
c:.word 0x00000045,0x00000021

.text
la x10,c
lw x11,0(x10)
lw x12,4(x10)
add x13,x11,x12
sw x13,8(x10)
