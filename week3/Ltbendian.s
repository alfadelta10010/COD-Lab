.data
a: .word 0x12345678

.text
la x4,a
lw x5,0(x4)
andi x6,x5,0xff
slli x6,x6,24

srli x7,x5,8
andi x8,x7,0xff
slli x8,x8,16

add x9,x8,x6
srli x10,x5,16
andi x11,x10,0xff
slli x11,x11,8

add x12,x11,x9
srli x13,x5,24
andi x14,x13,0xff

add x15,x14,x12
sw x15,4(x4)