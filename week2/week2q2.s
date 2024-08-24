.data 
a: .dword 0xFFFFFFFFFFFFFFFF,0xFFFFFFFFFFFFFFFF
.text
la x20, a
lw x8,0(x20)#lsb
lw x9,4(x20)#msb
lw x10,8(x20)#lsb
lw x11,12(x20)#msb
add x12,x8,x10 #adding lsb
sltu x13,x12,x8 #camparing total lsb with x8
add x14,x9,x11 #adding msb
sltu x15,x14,x9 #comparing total msb with x9
add x16,x14,x13 #adding total msb with carry
sw x17,16(x12)
sw x18,20(x16)
sw x19,24(x15)
