        .section .text
        .globl _start
_start:
        li      x1, 10      # y = 10
        li      x2, 20      # m = 20
        li      x3, 30      # L = 30
        li      x4, 5       # D = 5
        li      x5, 40      # Z = 40
        li      x6, 15      # C = 15
        add     x7, x1, x2  # x7 = y + m
        sub     x8, x3, x4  # x8 = L - D
        add     x9, x5, x6  # x9 = Z + C
        sub     x10, x7, x8 # x10 = (y + m) - (L - D)
        add     x10, x10, x9 # x10 = (y + m) - (L - D) + (Z + C)
        sub     x10, x10, x4 # x10 = (y + m) - (L - D) + (Z + C) - D
        mv      x0, x10     # x = (y + m) - (L - D) + (Z + C) - D
        nop
