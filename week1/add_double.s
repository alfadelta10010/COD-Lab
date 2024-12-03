.data
a: .dword 0x2324554322311234, 0x2345675432345611

.text
la x10, a
lw x11, 0(x10)
lw x12, 4(x10)
lw x13, 8(x10)
lw x14, 12(x10)
add x15, x11, x13
add x16, x12, x14
sw x15, 16(x10)
sw x16, 20(x10)


        