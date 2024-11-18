.data # addition of half words
a: .half 0x1111, 0x2222, 0x3333, 0x4444

.text
la x10, a
addi x12, x0 ,0
addi x13, x0, 4
loop:
    lh x11, 0(x10)
    add x12, x12, x11
    addi x10, x10, 2
    addi x13, x13, -1
    bnez x13, loop