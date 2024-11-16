.data
a: .half 0x1234, 0x1234
b: .half 0x0
.text
la x10,a
la x11,b
lh x12,0(x10)
lh x13,2(x10)
add x14,x12,x13
sh x14,0(x11)