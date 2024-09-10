.data
n:.half 0x3456,0x8043
.text
la x1,n
lh x11,0(x1)
lh x12,2(x1)


add x13,x11,x12
sltu x14,x13,x11

sh x13,4(x1)
sh x14,6(x1)
