 .data
a: .word 0x12345678
.text
la x10,a
lw x12, 0(x10)

andi x13,x12,0x000000FF
slli  x13,x13,24
srli x12,x12,8
andi x16,x12,0xff
slli x16,x16,16
srli x12,x12,8
andi x17,x12,0xff
slli x17,x17,8
srli x12,x12,8
andi x18,x12,0xff
add x20,x13,x16
add x21,x18,x17
add x22,x20,x21
sw x22,0(x10)
