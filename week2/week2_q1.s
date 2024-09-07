.data
a:.half 0x0001,0x02,0x03,0x04,0x05,0x06,0x07,0x08,0x09,0x0A,0x00
h:.half 0x0000

.text
la x1,a
la x2,h

#a[0]
lh x3,0(x1)
lh x4,0(x2)
add x4,x4,x3

#a[1]

lh x3,2(x1)
add x4,x4,x3

#a[2]
lh x3,4(x1)
add x4,x4,x3

#a[3]
lh x3,6(x1)
add x4,x4,x3

#a[4]
lh x3,8(x1)
add x4,x4,x3

#a[5]
lh x3,10(x1)
add x4,x4,x3

#a[6]
lh x3,12(x1)
add x4,x4,x3

#a[7]
lh x3,14(x1)
add x4,x4,x3

#a[8]
lh x3,16(x1)
add x4,x4,x3

#a[9]
lh x3,18(x1)
add x4,x4,x3

#a[10]
sh x4,20(x1) #storing h(0x37) value in 10th index of a[11]
