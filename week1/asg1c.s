.data
a: .byte 0x0004,0x002
.text
la,x10,a
lb,x11,0(x10)
lb,x12,1(x10)
add,x12,x12,x11
sh,x12,2(x10)