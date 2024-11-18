.data
a:.word 0xABCDEF22
.text
la x2,a
lw x3,0(x2)
add x8,x3,x0
andi x4,x3,0x000000FF
slli x5,x4,24
srli x3,x3,8
andi x4,x3,0x000000FF
slli x4,x4,16
or x5,x5,x4
srli x3,x3,8
andi x4,x3,0x000000FF
slli x4,x4,8
or x5,x5,x4
srli x3,x3,8         
andi x4,x3,0x000000FF
or x5,x5,x4
sw x5,4(x2)
