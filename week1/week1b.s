.data
n:.half 0x0135,0x5674
.text
la x1,n
lh x11,0(x1)
lh x12,2(x1)

add x13,x11,x12
sltu x16,x13,x11

sh x13,4(x1)
sh x16,6(x1)