.data
h: .half 0x0001,0x0002,0x0003,0x0004,0x0005,0x0006,0x0007,0x0008,0x0009,0x0010
.text
la x1,h
lh x2,0(x1)
lh x3,2(x1)
add x4,x2,x3
sh x4,20(x1)

#reusing the same registers

lh x2,20(x1)
lh x3,4(x1)
add x4,x2,x3
sh x4,20(x1)

lh x2,20(x1)
lh x3,6(x1)
add x4,x2,x3
sh x4,20(x1)

lh x2,20(x1)
lh x3,8(x1)
add x4,x2,x3
sh x4,20(x1)

lh x2,20(x1)
lh x3,10(x1)
add x4,x2,x3
sh x4,20(x1)

lh x2,20(x1)
lh x3,12(x1)
add x4,x2,x3
sh x4,20(x1)

lh x2,20(x1)
lh x3,14(x1)
add x4,x2,x3
sh x4,20(x1)

lh x2,20(x1)
lh x3,16(x1)
add x4,x2,x3
sh x4,20(x1)

lh x2,20(x1)
lh x3,18(x1)
add x4,x2,x3
sh x4,20(x1)

# final result will be in x4, and then stored in the memory with 20 bytes offset from base address
