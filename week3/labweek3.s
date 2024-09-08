.data
a: .word 0x12345678
.text
la x10,a
lw x11,0(x10)
addi x12,x0,0
andi x13,x11,0xff
slli x13,x13,24
add x12,x12,x13
srli x11,x11,8
andi x13,x11,0xff
slli x13,x13,16
add x12,x12,x13
srli x11,x11,8
andi x13,x11,0xff
slli x13,x13,8
add x12,x12,x13
srli x11,x11,8
add x12,x12,x11
sw,x12,4(x10)





