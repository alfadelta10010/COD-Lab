.data
a: .half 0x8000,0x5678
.text
la x11,a
lh x12,0(x10)
lh x13,2(x10)
add x14,x13,x12
sh x14,4(x10)