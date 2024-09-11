.data
a:.word 0x11223344
.text
la x10,a
lw x11,0(x10)
andi x12,x11,0xFF
slli x12,x12,24

srli x13,x11,8
andi x13,x13,0xFF
slli x13,x13,16
add x12,x12,x13

srli x13,x11,16
andi x13,x13,0xFF
slli x13,x13,8
add x12,x12,x13

srli x13,x11,24
add x12,x12,x13
sw x12,0(x10)