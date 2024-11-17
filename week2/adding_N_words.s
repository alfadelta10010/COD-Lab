.data
a: .word 0x22311234, 0x56078967, 0xae653656, 0x98765876
.text
la x10, a
addi x20, x20, 4
loop:
    lw x11, 0(x10)
    add x12, x12, x11
    addi x10, x10, 4
    addi x20, x20, -1
    bnez x20 loop