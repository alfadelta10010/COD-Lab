.data 
a:.byte 0x12,0x56
.text
la x10,a
lb x11,0(x10) #load first byte into register
lb x12,1(x10) #load second byte into register
add x13,x12,x11 #add two values in register and store it in register
sltu x14,x13,x12 #to find carry exist or not
sb x13,2(x10) #to store  added byte in memory
sb x14,3(x10)#to store  carry in memory