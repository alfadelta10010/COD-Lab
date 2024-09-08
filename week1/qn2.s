.data
a: .half 0x3, 0x1

.text

la x11,a
lh x12,0(x11)
lh x13,2(x11)
add x14,x12,x13

sh x14,4(x11)
