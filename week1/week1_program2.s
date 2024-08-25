.data
a: .half 0x2222, 0x1234

.text
la x6,a #Loading the base address
lh x7,0(x6) #Loading the first half word from memory into register x7
lh x8,2(x6) #Loading the second half word from memory into register x8
add x9,x7,x8 #Adding the values in x7 and x8, storing the result in x9
sh x9,4(x6) #Storing the value in memory



