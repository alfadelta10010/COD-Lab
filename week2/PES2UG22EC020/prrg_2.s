.data
a: .dword 0x1234567887654321,0x1234567887654321
.text
la x10,a #loads array from data memory
lw x11,0(x10)#lsb1 8bit
lw x12,4(x10)#msb1 8bit
lw x13,8(x10)#lsb2 8bit
lw x14,12(x10)#msb2 8bit
add x19,x11,x13 #adding lsb
sltu x15,x19,x13 #handels the carry generated 
add x16,x12,x14 #adding msb
sltu x17,x16,x12 #checks for the carry generated
add  x18,x16,x17 #assaddition of the carry if produced
sw x14,16(x10) #stores 8 bit of the lsb result
sw x18,20(x10) #stores 8 bits of the msb results