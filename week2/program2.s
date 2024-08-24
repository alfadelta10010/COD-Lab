#2.Write a program to add 2 unsigned 64 bit number using rv32 I
#Assume all the numbers are present in the memory and the result 
#has to be stored in memory itself
.data 
a: .dword 0x1234123492341256,0x9123AF7892236789,0

.text
la x7,a
lw x8,0(x7)      #lsb
lw x9,4(x7)      #msb
lw x10,8(x7)     #lsb
lw x11,12(x7)    #msb
add x12,x8,x10   #adding the lsb's
sltu x13,x12,x8
add x14,x9,x11   #adding the msb's
add x15,x14,x13
sltu x16,x14,x9
sw x12,16(x7)    #storing the final lsb
sw x15,20(x7)    #storing tne final msb
sw x16,24(x7)


