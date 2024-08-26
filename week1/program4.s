.data 
a: .half 0x8000

.text
la x10,a
lh x11,0(x10)
sh x11,2(x10)
