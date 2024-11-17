.data
a: .half 0x2231, 0x5667, 0xae56, 0x9876

.text
la x10, a
addi x20, x20, 4
loop:
    lw x11, 0(x10)
    add x12, x12, x11
    addi x10, x10, 4
    addi x20, x20, -1
    bnez x20 loop