#Write an Assembly Program for addition of 2 half words
.data
a: .half 0x0056, 0x2293
.text
la x10,a
lh x11, 0(x10)
lh x12 ,2(x10)
add x13,x11,x12
sh x13,4(x10)