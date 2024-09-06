.data
a: .word 0x12345678

.text
la x10,a
lw x11,0(x10)
andi x12,x11,0xFF
addi x15,x0,3

hello:
    slli x12,x12,8
    srli x11,x11,8
    andi x13,x11,0xFF
    add x12,x12,x13
    addi x15,x15,-1
bne x15,x0,hello