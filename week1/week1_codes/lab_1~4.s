.data
a: .half 0x8055,0x6332
b: .word -346,0x112398ef
c: .byte 0xbf,0x8a

.text
la x10,a
lh x11,0(x10)
lhu x12,0(x10)
sh x12,0(x10)
sh x12,2(x10)

la x15,b
lw x16,0(x15)
lw x17,4(x15)    
sw x17,0(x15)

la x20,c
lb x21,0(x20)
lbu x22,1(x20)
sb x21,2(x20)
   


