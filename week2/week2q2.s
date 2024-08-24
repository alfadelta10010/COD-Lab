.data
a: .word 0,1,4,3,2
b: .word 9,8,7,6,5
c: .word 0,0,0,0,0
.text

la x10, a
la x11, b
la x12, c

lw x13, 0(x10)
lw x14, 0(x11)
add x15, x13, x14 #sum of a[0] and b[0]
sw x15, 0(x12) #storing sum in c[0]

lw x13, 4(x10)
lw x14, 4(x11)
add x15, x13, x14 #sum of a[1] and b[1]
sw x15, 4(x12) #storing sum in c[1]

lw x13, 8(x10)
lw x14, 8(x11)
add x15, x13, x14 #sum of a[2] and b[2]
sw x15, 8(x12) #storing sum in c[2]

lw x13, 12(x10)
lw x14, 12(x11)
add x15, x13, x14 #sum of a[3] and b[3]
sw x15, 12(x12) #storing sum in c[3]

lw x13, 16(x10)
lw x14, 16(x11)
add x15, x13, x14 #sum of a[4] and b[4]
sw x15, 16(x12) #storing sum in c[4]
