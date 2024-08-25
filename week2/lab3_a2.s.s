.data 
a: .word 0x00000045,0x00000034,0x00000023,0x00000067,0x00000019
b: .word 0x0000001,0x0000002,0x00000003,0x00000004,0x00000005
c: .word 0,0,0,0,0
.text
la x10,a
la x11,b
la x12,c

lw x13,0(x10)
lw x14,0(x11)
add x15,x13,x14
sw x15,0(x12)

lw x13,4(x10)
lw x14,4(x11)
add x15,x13,x14
sw x15,4(x12)

lw x13,8(x10)
lw x14,8(x11)
add x15,x13,x14
sw x15,8(x12)

lw x13,12(x10)
lw x14,12(x11)
add x15,x13,x14
sw x15,12(x12)

lw x13,16(x10)
lw x14,16(x11)
add x15,x13,x14
sw x15,16(x12)

lw x13,20(x10)
lw x14,20(x11)
add x15,x13,x14
sw x15,20(x12)