#little endian to big endian conversion

 .data
a: .word 0x12345678
.text
la x10,a
lw x12, 0(x10)

andi x13,x12,0x000000FF


slli  x13,x13,24 #x13 reg has 78000000
srli x12,x12,8 #00123456
andi x16,x12,0xff #00000056
slli x16,x16,16 #00560000

srli x12,x12,8 #00001234
andi x17,x12,0xff #00000034
slli x17,x17,8 #00003400

srli x12,x12,8 #0x00000012
andi x18,x12,0xff #0x00000012s

add x20,x13,x16  #0x78560000
add x21,x18,x17  #0x00003412

add x22,x20,x21 #0x78563412

sw x22,0(x10)
 