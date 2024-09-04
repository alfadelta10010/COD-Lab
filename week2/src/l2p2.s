.data
a:    .dword 0x8000301280101023, 0x0010102380003012

.text
la x10, a
lw x11, 0(x10) 
lw x12, 8(x10)
add x13, x11, x12 # Add 1st half
sltu x20, x13, x11 # Carry

lw x14, 4(x10)
lw x15, 12(x10)
add x16, x14, x15 # Add 2nd half
add x17, x16, x20 # Addition of carry
sltu x21, x16, x15 # 2nd Carry

sw x13, 20(x10)
sw x17, 24(x10)
