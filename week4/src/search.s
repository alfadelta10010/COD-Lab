##program to search a given number in an array

.data
a: .word 0x01223113, 0x45362720,0x33434343,0x11211212
search: .word 0x45362727
length: .word 4

.text
la x10,a              #loading the address 
la x11,search  
la x13,length           #loading address of no. to be searched

lw x12,0(x11)            
lw x14,0(x13)
loop:
    lw x5,0(x10)      #loading the 1st word
    addi x10,x10,4    #incrementing the base address
    addi x14,x14,-1
    beq x14,x0,exit   
    beq x5,x12,found  #if the number is found then increment x6 by one
    beq x0,x0,loop
    
found:
    addi x6,x6,1
exit:
    nop
