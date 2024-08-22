.data
a: .half -3,1,0x0000
.text
la x10,a
lh x11,0(x10)
lh x12,1(x10)
add x13,x11,x12
sh x13,2(x10)

#.data
#a. :byte -3,1,0x00
#.text
#la x10,a
#lbu x11,0(x10)
#lbu x12,1(x10)
#add x13,x11,x12
#sb x13,2(x10)