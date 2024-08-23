.data
a: .half 0x1234,0x1111
.text 
la x10,a
lh x11,0(x10)
lh x12,2(x10)
add x13,x11,x12
sh x13,4(x10)
