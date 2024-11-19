# Program : Write an assembly program to find whether a given string is a palindrome or not, using stack operations
.data
a: .byte 0x11, 0x22, 0x33, 0x33, 0x22, 0x11
.text
palindrome:
    la x10, a          
    la x15, a          
    addi x15, x15, 5   
    addi x11, x0, 1    
loop1:
    lb x20, 0(x10)     
    lb x21, 0(x15)     
    bne x20, x21, nopl 
    addi x10, x10, 1   
    addi x15, x15, -1  
    blt x10, x15, loop1 
    j exit         
nopl:
    addi x11, x0, 0
exit:
    addi x0, x0, 0     



# Program : Write an assembly program to search a given number in an array
.data
array: .word 5, 12, 7, 20, 14, 7, 18  

.text
main:
    la x10, array           
    addi x11, x0, 7         
    addi x12, x0, 7         
    addi x13, x0, 0        
    addi x14, x0, -1        
    addi x15, x0, 0         
search_loop:
    beq x15, x11, not_found 
    lw x16, 0(x10)          
    beq x16, x12, found     
    addi x10, x10, 4       
    addi x15, x15, 1        
    jal x0, search_loop     
found:
    add x14, x15, x0        
    jal x0, exit         
not_found:
    addi x14, x0, -1       
exit:
    add x0, x0, x0          

