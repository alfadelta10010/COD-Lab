.data
a: .word 0x12345678

.text
la x10,a
lw x11,0(x10)
andi x12,x11,0xff #masking
slli x12,x12,24

srli x13,x11,8
andi x13,x13,0xff
slli x13,x13,16
add x12,x12,x13

srli x14,x11,16
andi x14,x14,0xff
slli x14,x14,8
add x12,x12,x14

srli x15,x11,24
add x12,x12,x15