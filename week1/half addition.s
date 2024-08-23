.data
a: .half 0x0018,0x00fe,0

.text
la x10,a
lh x6, 0x00(x10)
lh x7, 0x02(x10)
add x8,x6,x7
sh x8,0x07(x10)