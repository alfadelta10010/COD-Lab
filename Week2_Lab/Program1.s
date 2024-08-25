.data
a: .half 0x1234, 0x4567, 0x7898, 0x8765, 0x5432, 0x2123, 0x3456, 0x6789, 0x9876, 0x6543, 0x3212

.text
la x5, a
lh x6, 0(x5)
lh x7, 2(x5)
lh x8, 4(x5)
lh x9, 6(x5)
lh x10, 8(x5)
lh x11, 10(x5)
lh x12, 12(x5)
lh x13, 14(x5)
lh x14, 16(x5)
lh x15, 18(x5)
lh x16, 20(x5)
add x17,x6,x0
add x17,x17,x7
add x17,x17,x8
add x17,x17,x9
add x17,x17,x10
add x17,x17,x11
add x17,x17,x12
add x17,x17,x13
add x17,x17,x14
add x17,x17,x15
add x17,x17,x16
add x16,x17,x0
