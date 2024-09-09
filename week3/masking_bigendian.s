.data
a:.word 0x12345678
b:. word 0
.text
la x10,a
la x11,b
lw x12,0(x11)
andi x12,x11,0xff
slli x20,x12,24
sw x20,0(x9)
srli x13,x11,8
andi x14,x13,0xff
slli x21,x14,16
sw x21,4(x9)
srli x15,x11,16
andi x16,x15,0xff
slli x22,x16,8
sw x22,8(x9)
srli x17,x11,24
slli x23,x17,0
sw x23,12(x0)