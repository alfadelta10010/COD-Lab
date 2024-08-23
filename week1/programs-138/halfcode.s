.data 
a: .half 0xe3,0x08,0

.text
la x10,a
lh x7,0(x10)
lh x8,2(x10)
add x11,x7,x8
sh x11,4(x10)
