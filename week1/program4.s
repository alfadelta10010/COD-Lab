#.data
#a: .byte 0x01,0x12
#.text
#la x10,a
#lbu x11,0(x10)
#lbu x12,1(x10)
#add x13,x11,x12
#sb x13,2(x10)

.data
a: .half 0x0001,0x1234
.text
la x10,a
lhu x11,0(x10)
lhu x12,2(x10)
add x13,x11,x12
sh x13,4(x10)