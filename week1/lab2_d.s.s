.data
a: .half,0xfd,0x22
.text
la,x10,a
lhu x11,0(x10)
lhu x12,2(x10)
add x13,x11,x12
sh x13,4(x10)

#.data
#a: .byte,0xfd,0x22
#.text
# x11,0(x10)
#lb x12,1(x10)
#add x13,x11,x12
#sb x13,2(x10)