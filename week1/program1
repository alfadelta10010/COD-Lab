        .section .text
        .globl start
start:
        li      x1, 0x12345678
        andi    x2, x1, 0xFF
        slli    x2, x2, 24
        andi    x3, x1, 0xFF00
        slli    x3, x3, 8
        andi    x4, x1, 0xFF0000
        srli    x4, x4, 8
        andi    x5, x1, 0xFF000000
        srli    x5, x5, 24
        or      x2, x2, x3
        or      x2, x2, x4
        or      x2, x2, x5
        mv      x6, x2
        nop
