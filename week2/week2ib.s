.data
n:.half 0x0465,0x9765
.text
la x10,n
lh x11,0(x10)
lh x12,2(x10)


add x13,x11,x12
sltu x16,x13,x11

sh x13,4(x10)
sh x16,6(x10)