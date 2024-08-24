# write a program to add two half words, 0xFD and 0x01

.data
a: .half 0x80FD, 0x8001
.text

la x10, a
lh x5, 0x00(x10)
lh x6, 0x02(x10)
# lhu x5, 0x00(x10)
# lhu x6, 0x02(x10)
add x7,x6,x5
sw x7, 0x04(x10)