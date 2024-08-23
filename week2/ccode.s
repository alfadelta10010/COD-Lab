.data
a: .half 0x0000,0x1234,0x5678,0x1111,0x2222,0x3333,0x4444,0x5050,0x0101,0x7089,0x2121
.text
la x10,a
lh x2,0(x10)
lh x3,2(x10)
lh x4,4(x10)
lh x5,6(x10)
lh x6,8(x10)
lh x7,10(x10)
lh x8,12(x10)
lh x9,14(x10)
lh x14,16(x10)
lh x11,18(x10)
lh x12,20(x10)
add x13,x2,x0
add x13,x13,x3
add x13,x13,x4
add x13,x13,x5
add x13,x13,x6
add x13,x13,x7
add x13,x13,x8
add x13,x13,x9
add x13,x13,x14
add x13,x13,x11
add x13,x13,x12
add x12,x13,x0