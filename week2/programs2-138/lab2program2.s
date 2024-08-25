.data
h: .half 0x1234,0x5678,0x2468,0x1357,0x1100,0x0011,0xffff,0x1010,0x9999,0xff11,0

.text
la x10,h
lh x12,0(x10)
lh x13,2(x10)
add x14,x12,x13
sh x14,20(x10)

lh x12,20(x10)
lh x13,4(x10)
add x14,x12,x13
sh x14,20(x10)

lh x12,20(x10)
lh x13,6(x10)
add x14,x12,x13
sh x14,20(x10)

lh x12,20(x10)
lh x13,8(x10)
add x14,x12,x13
sh x14,20(x10)

lh x12,20(x10)
lh x13,10(x10)
add x14,x12,x13
sh x14,20(x10)

lh x12,20(x10)
lh x13,12(x10)
add x14,x12,x13
sh x14,20(x10)

lh x12,20(x10)
lh x13,14(x10)
add x14,x12,x13
sh x14,20(x10)

lh x12,20(x10)
lh x13,16(x10)
add x14,x12,x13
sh x14,20(x10)

lh x12,20(x10)
lh x13,18(x10)
add x14,x12,x13
sh x14,20(x10)