.data
a: .dword 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF
.text
la x10, a
lw x11, 0(x10) #LSB 1
lw x12, 4(x10) #MSB 1
lw x13, 8(x10) #LSB 2
lw x14, 12(x10) #MSB 2
add x15, x11, x13 #sum of LSB 1 and 2
add x16, x12, x14 #sum of MSB 1 and 2
sltu x17, x15, x13 #storing LSB carry
sltu x18, x16, x14 #storing MSB carry
add x19, x16, x17 #adding LSB carry to MSB sum
sw x20, 16(x15)
sw x21, 20(x19)
sw x22, 24(x18)
