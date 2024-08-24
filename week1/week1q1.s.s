.data
n:.word 0xFFFFFFFFFFFFFFFF
.text
la x1,n
lw x11,0(x1)
lw x12,4(x1)


add x13,x11,x12
sltu x16,x13,x11

sw x16,12(x1)
sw x13,8(x1)