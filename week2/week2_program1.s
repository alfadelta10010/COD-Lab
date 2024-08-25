.data
a: .half 0x1234, 0x5678, 0x9ABC, 0xDEF0, 0x1111, 0x2222, 0x3333, 0x4444, 0x5555, 0x6666, 0x0000
h: .half 0

.text
la x1, a
lh x2, 0(x1)
add x3, x0, x2

lh x4, 2(x1)
add x3, x3, x4

lh x5, 4(x1)
add x3, x3, x5

lh x6, 6(x1)
add x3, x3, x6

lh x7, 8(x1)
add x3, x3, x7

lh x8, 10(x1)
add x3, x3, x8

lh x9, 12(x1)
add x3, x3, x9

lh x10, 14(x1)
add x3, x3, x10

lh x11, 16(x1)
add x3, x3, x11

lh x12, 18(x1)
add x3, x3, x12

lh x13, 20(x1)
add x3, x3, x13

sh x3, 22(x1)
