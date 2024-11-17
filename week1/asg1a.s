.data
a: .word 0x0001,0x002
.text
la,x10,a
lw,x11,0(x10)
lw,x12,4(x10)
add,x12,x12,x11
sw,x12,8(x10)