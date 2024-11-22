# Write an assembly program to calculate the factorial of a number with & without recursion

#to find factorial without recursion

.data
n: .word 4      
result: .word 0    

.text


la x5, n      
la x6, result
lw x10, 0(x5)    
addi x11, x0, 1  
    
# Check if the number is 0 or 1 (base case)
beq x10, x0, basecase
beq x10, x11, basecase

loop:                
    mul x11, x11, x10  
    addi x10, x10, -1  
    bne x10,x0, loop     

basecase:
    sw x11, 0(x6)    
    
exit:
    nop