.data
a: .word 0x12345678
b: .word 0x000000FF
c: .word 0x0000FF00
d: .word 0x00FF0000
e: .word 0xFF000000
.text
#Loading all adresses
la x10,a
la x11,b
la x12,c
la x13,d
la x14,e
lw x15,0(x10)
lw x16,0(x11)
lw x17,0(x12)
lw x18,0(x13)
lw x19,0(x14)
#Using masking and shifting
and x20,x15,x16
slli x20,x20,24
and x21,x15,x17
slli x21,x21,8
and x22,x15,x18
srli x22,x22,8
and x23,x15,x19
srli x23,x23,24
add x24,x21,x20
add x25,x23,x22
add x26,x25,x24
