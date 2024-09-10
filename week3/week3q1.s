.data
a:.word 0x12345678
b:.word 0x000000FF
.text
la x10,a
la x11,b
lw x12,0(x11)
lw x13,0(x10)
slli x14,x12,8
and x15,x13,x14

