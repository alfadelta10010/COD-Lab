.data
a: .half 0x0000 0x3333
.text
la x10,a
lh x2,0(x10)
lh x3,2(x10)
add x4,x3,x2
