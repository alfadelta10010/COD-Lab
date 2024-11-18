.data
a: .byte 0x11, 0x22, 0x33, 0x33, 0x22, 0x11 # Input array
length: .word 6                              # Length of the array
result: .word 1                              # Assume palindrome (1 = yes)

.text
main:
    la x10, a               
    lw x11, length          
    addi x12, x10, 0        
    add x13, x10, x11        
    addi x13, x13, -1       
    
check_palindrome:
    lb x14, 0(x12)          
    lb x15, 0(x13)         
    bne x14, x15, not_palindrome # If not equal, it's not a palindrome
    addi x12, x12, 1        
    addi x13, x13, -1      
    blt x12, x13, check_palindrome 

exit:
    j end                  

not_palindrome:
    la x16, result          
    sw x0, 0(x16)           # Set result to 0 (not a palindrome)

end:
    nop                     # Program ends
