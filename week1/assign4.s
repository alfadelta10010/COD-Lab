#Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
.data
a: .word 0x55973602
b: .half 0x5560
c: .byte 0x03
.text
la x10,a
la x11,b
la x12,c
lw x13,0(x10)
lh x14,0(x11)
lb x15,0(x12)
lhu x16,0(x11)
lbu x17,0(x12)
sw x13,4(x10)
sh x14,2(x11)
sb x15,1(x12)