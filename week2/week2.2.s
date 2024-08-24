.data
a: .half 0x1234,0x4567,0x2345,0x1500,0x2562,0x0100,0xb000,0x2341,0x3451,0x2000

.text
#load base address
la x11,a
#h=0;h+=a[0]
lh x1,0(x11)
add x2,x0,x1

#h+=a[1]
lh x1,2(x11)
add x2,x2,x2

#h+=a[2]
lh x1,4(x11)
add x2,x2,x2

#h+=a[3]
lh x1,6(x11)
add x2,x2,x2

#h+=a[4]
lh x1,8(x11)
add x2,x2,x2

#h+=a[5]
lh x1,10(x11)
add x2,x2,x2

#h+=a[6]
lh x1,12(x11)
add x2,x2,x2

#h+=a[7]
lh x1,14(x11)
add x2,x2,x2

#h+=a[8]
lh x1,16(x11)
add x2,x2,x2

#h+=a[9]
lh x1,18(x11)
add x2,x2,x2

#storing in data memmory
sh x2,20(x11)