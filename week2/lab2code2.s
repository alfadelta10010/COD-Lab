.data
h: .half 0x1000,0x0022,0x3000,0x0044,0x5000,0x0066,0x7000,0x0088,0x9000,0x0011
.text
la x11,h
lh x12,0(x11)
lh x13,2(x11)
add x14,x12,x13
sh x14,20(x11)


lh x12,20(x11)
lh x13,4(x11)
add x14,x12,x13
sh x14,20(x11)

lh x12,20(x11)
lh x13,6(x11)
add x14,x12,x13
sh x14,20(x11)

lh x12,20(x11)
lh x13,8(x11)
add x14,x12,x13
sh x14,20(x11)

lh x12,20(x11)
lh x13,10(x11)
add x14,x12,x13
sh x14,20(x11)

lh x12,20(x11)
lh x13,12(x11)
add x14,x12,x13
sh x14,20(x11)

lh x12,20(x11)
lh x13,14(x11)
add x14,x12,x13
sh x14,20(x11)

lh x12,20(x11)
lh x13,16(x11)
add x14,x12,x13
sh x14,20(x11)

lh x12,20(x11)
lh x13,18(x11)
add x14,x12,x13
sh x14,20(x11)

# final result in x14, 
#then stored in the memory with 20 bytes offset from base address