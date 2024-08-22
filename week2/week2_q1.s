.data
a: .half 0x1111,0x1001,0x1002,0x1003,0x1004,0x1005,0x1006,0x1007,0x1008,0x1009
b: .half 0x2222,0x2001,0x2002,0x2003,0x2004,0x2005,0x2006,0x2007,0x2008,0x2009
c: .half 0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000,0x0000
.text
la x10,a
la x11,b
la x12,c

lhu x13,0(x10)#a[1]
lhu x14,0(x11)#b[1]
add x15,x13,x14
sh x15,0(x12)#c[1]

lhu x13,2(x10)#a[2]
lhu x14,2(x11)#b[2]
add x15,x13,x14
sh x15,2(x12)#c[2]

lhu x13,4(x10)#a[3]
lhu x14,4(x11)#b[3]
add x15,x13,x14
sh x15,4(x12)#c[3]

lhu x13,6(x10)#a[4]
lhu x14,6(x11)#b[4]
add x15,x13,x14
sh x15,6(x12)#c[4]

lhu x13,8(x10)#a[5]
lhu x14,8(x11)#b[5]
add x15,x13,x14
sh x15,8(x12)#c[5]

lhu x13,10(x10)#a[6]
lhu x14,10(x11)#b[6]
add x15,x13,x14
sh x15,10(x12)#c[6]

lhu x13,12(x10)#a[7]
lhu x14,12(x11)#b[7]
add x15,x13,x14
sh x15,12(x12)#c[7]

lhu x13,14(x10)#a[8]
lhu x14,14(x11)#b[8]
add x15,x13,x14
sh x15,14(x12)#c[8]

lhu x13,16(x10)#a[9]
lhu x14,16(x11)#b[9]
add x15,x13,x14
sh x15,16(x12)#c[9]

lhu x13,18(x10)#a[10]
lhu x14,18(x11)#b[10]
add x15,x13,x14
sh x15,18(x12)#c[10]



