.data
a: .half 0x1111, 0x2222, 0x3333, 0x4444

.text
la x10, a
addi x12, x0 ,0
addi x15, x0, 4
loop:
    lh x11, 0(x10)
    add x12, x12, x11
    addi x10, x10, 2
    addi x15, x15, -1
    bnez x15, loop
