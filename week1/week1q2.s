.data
a: .half 0x0002, 0x0432
.text
la x10, a #loading base address
lh x11, 0(x10) #loading value into register
lh x12, 2(x10) #loading value into register
add x13, x11, x12 #sum of values to be stored in x13
sh x13, 4(x10) #storing in memory
