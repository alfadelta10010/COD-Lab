.data
w: .word 0x12345678
h: .half 0x1234
b: .byte 0xff
.text
la x10,w
la x11,h
la x12,b
lw x13,0(x10)
lh x14,0(x11)
lhu x15,0(x11)
lb x16,0(x12)
lbu x17,0(x12)
sw x13,4(x10)
sw x14,2(x10)
sw x15,4(x10)
sw x16,1(x10)
sw x17,2(x10)
