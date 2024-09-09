.data
a: .dword 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF
.text
la x10,a
lw x11,0(x10)
lw x12,4(x10)
lw x13,8(x10)
lw x14,12(x10)
add x15,x11,x13
sltu x16,x15,x11
add x17,x12,x14
sltu x18,x17,x12
add x19,x17,x16
sw x15,16(x10)
sw x19,20(x10)