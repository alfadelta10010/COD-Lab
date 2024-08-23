.data 
a: .half 0x50fe,0x9911,0

.text
la x10,a
lhu x7,0(x10)
lhu x8,2(x10)
add x11,x7,x8
sh x11,4(x10)
