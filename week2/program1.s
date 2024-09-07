.data
a: .dword 0xffffffffffffffff,0xffffffffffffffff
.text
la x10, a
lw x11,0(x10) #first lower
lw x12,4(x10) #first upper
lw x13,8(x10) #second lower
lw x14,12(x10) #second upper
add x15,x11,x13 #adding uppers
sltu x16,x15,x13 #lower carry
add x17,x12,x14 #adding uppers
sltu x18,x17,x14 #final carry
add x19,x16,x17 #adding uppers and lower carry

sw x15,16(x10) #store LSB of result
sw x19,20(x10) #store MSB of result
sw x18,24(x10) #store final carry
