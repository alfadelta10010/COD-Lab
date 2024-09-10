.data
a: .word 0x00000000 
b: .half 0x0101 0x0303
c: .byte 0x34 0x11
.text
la x10,a
la x11,b
la x12,c
lw x2,0(x10)
lh x3,0(x11)
lhu x4,2(x11)
lb x5,0(x12)
lbu x6,1(x12)
sw x2,4(x10)
sh x3,4(x11)
sh x4,6(x11)
sb x5,2(x12)
sb x6,3(x12)
