.data
w: .word 0x11110000
h: .half 0xFF11
b: .byte 0xf0
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
sh x14,2(x11)
sh x15,4(x11)
sb x16,1(x12)
sb x17,2(x12)
