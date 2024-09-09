.data
a:.word  0x12345678
.text
la x10,a
lw x11,0(x10)
andi x12,x11,0xFF
slli x13,x12,24
srli x11,x11,8
andi x12,x11,0xFF
slli x14,x12,16
srli x11,x11,8
andi x12,x11,0xFF
slli x15,x12,8
srli x11,x11,8
add x20,x11,x15
add x20,x20,x14
add x20,x20,x13
sw x20,0(x10)
