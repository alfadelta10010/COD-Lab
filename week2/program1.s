.data
a: .word 0x35648432,0xF2134764,0x3247531A,0x5343746F,0x0324341A
b: .word 0x23435731,0x24537684,0x5444A25E,0x25738732,0x354372AF
c: .word 0,0,0,0,0
.text
la x10,a
la x11,b
la x12,c
lw x13,0(x10)
lw x14,0(x11)
add x15,x14,x13
sw x15,0(x12)

lw x13,4(x10)
lw x14,4(x11)
add x15,x14,x13
sw x15,4(x12)

lw x13,8(x10)
lw x14,8(x11)
add x15,x14,x13
sw x15,8(x12)

lw x13,12(x10)
lw x14,12(x11)
add x15,x14,x13
sw x15,12(x12)

lw x13,16(x10)
lw x14,16(x11)
add x15,x14,x13
sw x15,16(x12)