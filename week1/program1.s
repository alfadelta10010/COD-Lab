.data
a:.dword 0x1234567890ABCDEF
b:.dword 0x0FEDCBA987654321
c:.dword 0x0000

.text
la x10,a
lw x11,0(x10)
lw x12,4(x10)
la x13,b
lw x14,0(x13)
lw x15,4(x13)
add x16,x11,x14
sltu x17,x16,x11
add x18,x12,x15
add x18,x18,x17
la x19,c
sw x16,0(x19)
sw x18,4(x19)