.data
a: .half 0x1723,0xf201,0x0008,0x1234,0x5a11,0x0001,0x0002,0xa120,0x9000,0x4321

.text
la x10,a
lh x1,0(x10) 
add x2,x0,x1 #h+a[0]

lh x1,2(x10)
add x2,x2,x2 #h+a[1]

lh x1,4(x10)
add x2,x2,x2 #h+a[2]

lh x1,6(x10)
add x2,x2,x2 #h+a[3]


lh x1,8(x10)
add x2,x2,x2 #h+a[4]


lh x1,10(x10)
add x2,x2,x2 #h+a[5]


lh x1,12(x10)
add x2,x2,x2 #h+a[6]


lh x1,14(x10)
add x2,x2,x2 #h+a[7]


lh x1,16(x10)
add x2,x2,x2 #h+a[8]


lh x1,18(x10)
add x2,x2,x2 #h+a[9]


sh x2,20(x10)