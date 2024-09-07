.data
a: .word 0x12345678
.text
la x10,a
lw x12, 0(x10)
andi x14,x12,0x000000ff
slli x14,x14,24
srli x15,x12,8
andi x16,x15,0x000000ff
slli x16,x16,16
srli x17,x12,16
andi x18,x17,0x000000ff
slli x18,x18,8
srli x19,x17,8
add x20,x16,x18
add x21,x14,x19
add x22,x21,x20
#convert this into loops and try