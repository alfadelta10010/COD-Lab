.data
a:    .dword 0xFFFEFFFE,0x00010001,0x00000000
.text
la x10,a
lw x11,0(x10)#bringing data into register file
lw x12,4(x10)
lw x13,8(x10)
lw x14,12(x10)
add x20,x11,x13
add x21,x12,x14
sltu x22,x11,x13
sltu x23,x12,x14
add x20,x20,x22

