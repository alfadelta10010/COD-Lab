# write a program to perform c[i] = a[i] + b[i], assume the lenght of the array is 5.

.data
a: .half 0x1234, 0x5678, 1, 2, 3, 4, 5, 6, 7, 8, 0
.text

la x10, a

lhu x5, 0(x10)
add x6, x0, x5
lhu x5, 2(x10)
add x6, x6, x5
lhu x5, 4(x10)
add x6, x6, x5
lhu x5, 6(x10)
add x6, x6, x5
lhu x5, 8(x10)
add x6, x6, x5
lhu x5, 10(x10)
add x6, x6, x5
lhu x5, 12(x10)
add x6, x6, x5
lhu x5, 14(x10)
add x6, x6, x5
lhu x5, 16(x10)
add x6, x6, x5
lhu x5, 18(x10)
add x6, x6, x5

sh x6, 20(x10)