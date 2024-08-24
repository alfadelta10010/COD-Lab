.data
n1: .half 0x1234, 0x4321

.text
la x10,n1
lh x11,0(x10)
lh x12,2(x10)
add x13,x12,x11
sh x13,4(x10)