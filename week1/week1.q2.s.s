.data
n:.half 0x0123, 0x4567
.text
la x8,n
lh x9,0(x8)
lh x10,2(x8)


add x11,x9,x10
sltu x12,x11,x9

sh x11,4(x8)
sh x12,6(x8)