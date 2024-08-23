.data 
a:.word 0x12345678,0x56781234
.text
la x10,a
lw x11,0(x10) #load first word into register
lw x12,4(x10) #load second word into register
add x13,x12,x11 #add two values in register and store it in register
sltu x14,x13,x12 #to find carry exist or not
sw x13,8(x10) #to store  added word in memory
sw x14,10(x10)#to store  carry in memory