.data
a: .word 0x22311234, 0x000000ff

.text
la x10, a
lw x11, 0(x10)
lw x12, 4(x10)
addi x20, x20, 4
loop:
    slli x14, x14, 8
    and x13, x11, x12
    add x14, x13, x14
    srli x11, x11, 8
    addi x20, x20, -1
    bnez x20 loop
    exit:
