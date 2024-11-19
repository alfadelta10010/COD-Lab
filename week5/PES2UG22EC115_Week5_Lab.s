# Program 1

.data
array:      .word 18, 27, 20, 45, 81  
size:       .word 5                  
results:    .word 0, 0, 0, 0, 0      

.text
start: 
    la a0, size           
    lw a1, 0(a0)          
    la a0, array          
    la a2, results        
    addi t0, x0, 0        
loop:
    bge t0, a1, end_loop  
    slli t1, t0, 2        
    add t2, a0, t1        
    lw t3, 0(t2)         
    addi t4, x0, 9        
    add t5, t3, x0       
    addi t6, x0, 0        
modulus_loop:
    blt t5, t4, check_remainder 
    sub t5, t5, t4               
    beq x0, x0, modulus_loop    
check_remainder:
    beq t5, x0, divisible        
    addi t6, x0, 0               
    beq x0, x0, store_result     
divisible:
    addi t6, x0, 1               
store_result:
    add t5, a2, t1               
    sw t6, 0(t5)                 
    addi t0, t0, 1               
    beq x0, x0, loop             
end_loop:
    beq x0, x0, end_loop         



# Program 2

.data
a:  .half 0x1234, 0x5678, 0xABCD, 0xEF01
b:  .half 0x1234, 0x5678, 0xABCD, 0xEF01
c:  .half 0x1234, 0x5678, 0xABCD, 0xEF01
.text
main:
    la s0, a          
    la s1, b          
    la s2, c          
    addi t0, x0, 0   
loop_start:
    addi t1, x0, 10   
    bge t0, t1, loop_end
    slli t2, t0, 1          
    add t2, s0, t2          
    lh t3, 0(t2)             
    add t2, s1, t2         
    lh t4, 0(t2)             
    mul t5, t3, t4          
    beqz t0, skip_prev_c
    addi t2, t2, -2          
    add t2, s2, t2           
    lh t4, 0(t2)             
    add t5, t5, t4
skip_prev_c:
    add t2, s2, t2      
    sh t5, 0(t2)             
    addi t0, t0, 1
    j loop_start
loop_end:
    j loop_end            
