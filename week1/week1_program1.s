.data
a: .word 0x40002222, 0x20000000  

.text
la x6,a #Loading the base address
lw x7,0(x6) #Loading the first word from memory into register x7
lw x8,4(x6) #Loading the second word from memory into register x8
add x9,x7,x8 #Adding the values in x7 and x8, storing the result in x9
sw x9,8(x6) #Storing the value in memory 



