.data
 a: .dword 0xffffffffffffffff,0xffffffffffffffff
 
 
.text
la x10,a
lw x11,0(x10) #first upper 32bits
lw x12,4(x10) #second upper 32bits
lw x13,8(x10)  #first lower 32bits
lw x14,12(x10) #second lower 32bits

add x15,x11,x13  #adding 1st upper and 1st lower 
sltu x16,x15,x13 #1st carry
add x17,x12,x14  #adding 2nd  upper and 2nd lower
sltu x18,x17,x14 #2nd carry
add x19,x16,x17  #adding the 1st carry 
sw x15,16(x10)
sw x19,20(x10)
