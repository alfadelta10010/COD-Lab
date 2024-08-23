.data 
a:.half 0x1234,0x5678
.text
la x10,a
lh x11,0(x10) #load first halfword into register
lh x12,2(x10) #load second halfword into register
add x13,x12,x11 #add two values in register and store it in register
sltu x14,x13,x12 #to find carry exist or not
sh x13,4(x10) #to store  added halfword in memory
sh x14,6(x10)#to store  carry in memory