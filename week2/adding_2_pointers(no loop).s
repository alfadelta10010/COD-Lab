.data
a: .word,0x12,0x11,0x24,0x34,0x56
b: .word,0x23,0x22,0x35,0x45,0x67
c: .word,0,0,0,0,0
.text
la x10,a #loading a to x10
la x11,b #loading b to x11
la x12,c #loading c to x12
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