.data
a: .half 0x0002, 0x456A
.text
    la x10, a
    lh x12, 0(x10)
    lh x13), 2(x10)
    add x14, x13, x12
    sh x4, 4(x10)

