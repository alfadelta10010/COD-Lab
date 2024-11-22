#Write an assembly program to sort an array using bubble sort to sort N-elements
.data
a: .word 9,2,1,4  

.text

la x15, a          
addi x20, x0, 3    

main1:             
    addi x6, x0,3  
    add x5, x15, x0 
    beq x20, x0, exit1 

main:              
    beq x6, x0, exit  
    lw x10, 0(x5)     
    lw x11, 4(x5)     

    ble x10, x11, no_swap
    
    # Swap elements
    sw x10, 4(x5)     
    sw x11, 0(x5) 
    
no_swap:
    addi x5, x5, 4    
    addi x6, x6, -1   
    beq x0, x0, main  

exit:
    addi x20, x20, -1 
    beq x0, x0, main1 
    
exit1:
    nop               