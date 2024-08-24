# addition of half words
.data
a: .half 0x000F, 0x0005, 0x00
.text

la x10, a
lh x5, 0x00(x10)
lh x6, 0x02(x10)
add x7,x6,x5
sh x7, 0x08(x10)
