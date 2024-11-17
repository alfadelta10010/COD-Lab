#addition of 2 64-bit numbers
.data
a: .dword 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
.text
la x10, a
lw x11, 0(x10)
lw x12, 4(x10)
lw x13, 8(x10)
lw x14, 12(x10)
add x15, x11, x13
add x16, x12, x14
sltu x17, x15, x13
sltu x18, x16, x14
add x19, x16, x17
sw x20, 16(x15)
sw x21, 20(x19)
sw x22, 24(x18)