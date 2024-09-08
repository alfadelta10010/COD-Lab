.data
n:.dword 0xFFFFFFFF,0xFFFFFFFF
.text
la x1,n
lw x11,0(x10)
lw x12,4(x10)


add x13,x11,x12
sltu x16,x13,x11

sw x16,8(x10)
sw x17,12(x10)