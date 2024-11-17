.data
a: .dword, 0xFFFFFFFFFFFFFFFF,0x1234567823456789,0x0000000000000000
.text
la x10,a
lw x11,0(x10) #loading last 32 bit of first number
lw x12,4(x10) #loading first 32 bit of first number
lw x13,8(x10) #loading last 32 bit of second number
lw x14,12(x10) #loading first 32 bit of second number
add x15,x11,x13 #adding the 2 last 32 bits
sltu x20,x15,x11 #checking for carry
add x16,x12,x14 #adding the 2 first 32 bits
sltu x21,x16,x12 #checking for carry
add x17,x16,x20 #adding carry of sum of last 32 bits to sum of first 32 bits
sw x15,16(x10)
sw x17,20(x10)