.data
a: .word 0xFFFFFFFE, 0x6
b: .half 0x10,0x12
c: .byte 0x3,0x2
.text

la x11,a

lw x12,0(x11)
lw x13,4(x11)
sw x12,0(x11)
sw x13,4(x11)


la x14,b
lh x15,0(x14)
lh x16,2(x14)
sh x15,0(x14)
sh x16,2(x14)

la x17,c
lb x18,0(x17)
lb x19,1(x17)
sb x18,0(x17)
sb x19,1(x17)
