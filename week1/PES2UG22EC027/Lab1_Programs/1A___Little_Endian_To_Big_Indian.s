.data
a:.word 0x12345678
.text
la x1,a
lw x2,0x00(x1)

addi x5,x0,0xff
and x7,x5,x2
slli x7,x7,24

slli x5,x5,8
and x8,x5,x2
slli x8,x8,8
add x7,x7,x8

slli x5,x5,8
and x8,x5,x2
srli x8,x8,8
add x7,x7,x8

slli x5,x5,8
and x8,x5,x2
srli x8,x8,24
add x7,x7,x8

sw x7,0x04(x1)