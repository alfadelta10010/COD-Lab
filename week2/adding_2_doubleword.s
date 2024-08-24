.data
a: .dword, 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF,0x0000000000000000
.text
la x10,a
lw x11,0(x10)
lw x12,4(x10)
lw x13,8(x10)
lw x14,12(x10)
add x15,x11,x13
sltu x20,x15,x11
add x16,x12,x14
sltu x21,x16,x12
add x17,x16,x20
sw x15,16(x10)
sw x17,20(x10)