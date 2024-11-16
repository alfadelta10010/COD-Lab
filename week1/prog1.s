.data 
a:.word 0x00000001,0x12345678 #variable a used to declare the two words to be added
.text
la x10,a #loading the address of a into a register
lw x11,0(x10) #loading the first word into a register
lw x12,4(x10) #loading the second word into a register
add x13,x11,x12 #adding the register contents and storing it in an other register
sw x13,8(x10) #storing the result to memeory

