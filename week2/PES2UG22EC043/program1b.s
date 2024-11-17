.data
a: .half 0x4, 0x1, 0x2, 0x3, 0x4 # first element tells us the number of elements to be added
.text

la x10, a
lh x11, 0(x10)

loop:
    addi x10, x10, 2
    lh x5, 0(x10)
    add x6, x6, x5
    addi x11, x11, -1
    blt x0, x11, loop