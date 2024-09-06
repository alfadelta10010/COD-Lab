.data
a:.half 0x0000,0x0001,0x0002,0x0003 0x0004
b:.half 0x0000,0x0001,0x0002,0x0003 0x0004
c:.half 0000,0000,0000,0000,0000

.text
la x10,a
la x11,b
la x12,c
addi x13,x0,0 #x13 is counter variable(i)
addi x20,x0,5 # tells no of times loop runs 

loop:
lh x14,0(x10)  # loading first element of the a array
lh x15,0(x11) #loding first element of the b array
add x16,x14,x15 #adding first elements of the a and b
sh x16,0(x12) #storing the result in c

#incrementing pointer of the arrays and counter variable 
addi x13,x13,1  #incrementing the counter variable
addi x10,x10,2  #incrementing the address of x10 to access consecutive element of the a arry
addi x11,x11,2  # incrementing the address of x11 to access consecutive element of the b array
addi x12,x12,2  #incrementing the address of x12 c array

bltu x13,x20,loop #branch statement-loop continues as long as condition is satisfied

