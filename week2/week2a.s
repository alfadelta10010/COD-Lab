.data
a: .half 0x3311,0x1222,0x001,0x1200,0x2932,0x0010,0xa000,0x3c3,0xb2,0x2

.text
#load base address
la x10,a
#h=0;h+=a[0]
lh x1,0(x10)
add x2,x0,x1

#h+=a[1]
lh x1,2(x10)
add x2,x2,x2

#h+=a[2]
lh x1,4(x10)
add x2,x2,x2

#h+=a[3]
lh x1,6(x10)
add x2,x2,x2

#h+=a[4]
lh x1,8(x10)
add x2,x2,x2

#h+=a[5]
lh x1,10(x10)
add x2,x2,x2

#h+=a[6]
lh x1,12(x10)
add x2,x2,x2

#h+=a[7]
lh x1,14(x10)
add x2,x2,x2

#h+=a[8]
lh x1,16(x10)
add x2,x2,x2

#h+=a[9]
lh x1,18(x10)
add x2,x2,x2

#storing in data memmory
sh x2,20(x10)
