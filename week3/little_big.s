.data
a:.word 0x12345678
b:.word 0x00000000
c:.word 0x0000FF00
d:.word 0x00FF0000
e:.word 0xFF000000
.text
la x10,a
la x11,b
la x17,c
la x20,d
la x23,e
lw x12,a
lw x18,c
lw x21,d
lw x24,e
andi x13,x12,0x000000FF
slli x13,x12,24
sw x13,16(x13)
and x15,x12,x18
slli x19,x15,8
or x13,x13,x19
and x22,x12,x21
srli x22,x22,8
or x13,x13,x22
and x25,x12,x24
srli x25,x25,24
or x13,x13,x25












