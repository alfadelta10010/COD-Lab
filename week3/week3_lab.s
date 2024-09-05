.data
a:   .word 0x12345678

.text
la x10, a
lw x11, 0(x10)
addi x3,x0,3
back:
    andi x12,x11,0xff
    add x14,x14,x12
    slli x14,x14,8
    srli x11,x11,8
    addi x3,x3,-1
bnez x3,back
andi x15,x11,0xff
add x15,x14,x15
