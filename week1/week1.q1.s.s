.data
n:.word 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF
.text
la x8,n
lw x9,0(x8)
lw x10,4(x8)


add x11,x9,x10
sltu x12,x11,x9

sw x12,12(x8)
sw x11,8(x8)
