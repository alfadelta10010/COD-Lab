.data
a: .word 0x12345678
m1:.word 0x000000FF
m2:.word 0x0000FF00
m3:.word 0x00FF0000
m4:.word 0xFF000000

.text
la x10,a
la x11,m1
la x12,m2
la x13,m3
la x14,m4

lw x15,0(x10)
lw x16,0(x11)
lw x17,0(x12)
lw x18,0(x13)
lw x19,0(x14)

and x20,x15,x16
slli x20,x20,24

and x21,x15,x17
slli x21,x21,8

and x22,x15,x18
srli x22,x22,8

and x23,x15,x19
srli x23,x23,24

add x21,x20,x21
add x22,x21,x22
add x23,x22,x23
