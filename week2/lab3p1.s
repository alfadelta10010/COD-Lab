.data
a: .half 0x1234,0x1235,0x1236,0x1237,0x1238,0x1239,0x1244,0x1255,0x1266,0x1277

.text
#load base address in to register
la x10,a
#h=0;h+=a[0]
lw x1,0(x10)
add x2,x0,x1

#h+=a[1]
lw x1,2(x10)
add x2,x2,x2

#h+=a[2]
lw x1,4(x10)
add x2,x2,x2

#h+=a[3]
lw x1,6(x10)
add x2,x2,x2

#h+=a[4]
lw x1,8(x10)
add x2,x2,x2

#h+=a[5]
lw x1,10(x10)
add x2,x2,x2

#h+=a[6]
lw x1,12(x10)
add x2,x2,x2

#h+=a[7]
lw x1,14(x10)
add x2,x2,x2

#h+=a[8]
lw x1,16(x10)
add x2,x2,x2

#h+=a[9]
lw x1,18(x10)
add x2,x2,x2

#storing in data memmory
sh x2,20(x10)