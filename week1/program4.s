.data
a: .half 0x0001,0x1234
.text
la x10,a
lhu x11,0(x10)
lhu x12,2(x10)
add x13,x11,x12
sh x13,4(x10)