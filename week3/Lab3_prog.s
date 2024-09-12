 .data
a: .word 0x12345678
.text
la x10,a
lw x12, 0(x10)

andi x13,x12,0xff
slli  x13,x13,24 #x13 reg has 78000000
srli x12,x12,8 #00123456

andi x14,x12,0xff #00000056
slli x14,x14,16 #00560000
srli x12,x12,8 #00001234

andi x15,x12,0xff #00000034
slli x15,x15,8 #00003400
srli x12,x12,8 #0x00000012

andi x12,x12,0xff #0x00000012s

add x13,x13,x14  #0x78560000
add x14,x15,x12  #0x00003412

add x15,x13,x14 #0x78563412

sw x15,0(x10)
