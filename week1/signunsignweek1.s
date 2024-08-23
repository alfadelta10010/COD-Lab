.data
w: .word 0x12347878,0
h: .half 0xFFFE,0
b: .byte 0xAF,0
.text
la x10,w
lw x13,0(x10)
sw x13,4(x10)

la x11,h
lh x14,0(x11)
lhu x15,0(x11)
sh x14,2(x11)
sh x15,4(x11) 

la x12,b
lb x16,0(x12)
lbu x17,0(x12)
sb x16,1(x12)
sb x17,2(x12)