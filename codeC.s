.data
a:  .half 0x1234, 0x5678, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x7777, 0x8756, 0x4321


.text
    la x11, a
    lh x12, 0(x11)
    lh x13, 2(x11)
    add x12, x12, x13
    lh x13, 4(x11)
    add x12, x12, x13
    lh x13, 6(x11)
    add x12, x12, x13
    lh x13, 8(x11)
    add x12, x12, x13
    lh x13, 10(x11)
    add x12, x12, x13
    lh x13, 12(x11)
    add x12, x12, x13
    lh x13, 14(x11)
    add x12, x12, x13
    lh x13, 16(x11)
    add x12, x12, x13
    lh x13, 18(x11)
    add x12, x12, x13

    sh x12, 20(x11)
