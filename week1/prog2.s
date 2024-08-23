.data
a:.half 0x0001,0x1234 #variable containing both the half word
.text
la x10,a #address of variable a is stored in x10
lh x11,0(x10)
lh x12,2(x10) #loading the second half word into a register
add x13,x11,x12 #adding the register contents and storing the register in another register  
sw x13,8(x10)# store the result in the memory





