.data
a: .word,0x12,0x11,0x24,0x34,0x56
b: .word,0x23,0x22,0x35,0x45,0x67
c: .word,0,0,0,0,0
.text
la x10,a
la x11,b
la x12,c
lw x13,0(x10)
lw x14,4(x10)
lw x15,8(x10)
lw x16,12(x10)
lw x17,16(x10)
lw x18,0(x11)
lw x19,4(x11)
lw x20,8(x11)
lw x21,12(x11)
lw x22,16(x11)
add x23,x13,x18
add x24,x14,x19
add x25,x15,x20
add x26,x16,x21
add x27,x17,x22
sw,x23,0(x12)
sw,x24,4(x12)
sw,x25,8(x12)
sw,x26,12(x12)
sw,x27,16(x12)