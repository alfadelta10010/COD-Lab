.data 
a: .half 0x0000,0x1234,0x5678,0x1111,0x2222,0x3333,0x5656,0x5550,0x0111,0x8971,0x2131
.text 
la x10,a
lh x1,0(x10)
lh x2,2(x10)
lh x3,4(x10)
lh x4,6(x10)
lh x5,8(x10)
lh x6,10(x10)
lh x7,12(x10)
lh x8,14(x10)
lh x9,16(x10)
lh x11,18(x10)
lh x12,20(x10)
add x13,x1,x0
add x13,x13,x2
add x13,x13,x3
add x13,x13,x4
add x13,x13,x5
add x13,x13,x6
add x13,x13,x7
add x13,x13,x8
add x13,x13,x9
add x13,x13,x11
add x13,x13,x12
add x12,x13,x0