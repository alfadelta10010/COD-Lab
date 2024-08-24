.data
a: .half 0x0002,0x002
.text
la,x10,a
lh,x11,0(x10)
lh,x12,2(x10)
add,x12,x12,x11
sh,x12,4(x10)