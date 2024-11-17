.data
N: .word 5                     
halfwords: .half 1, 2, 5, 4, 6 
.text
la x5, N                   
lw x6, 0(x5)              
la x7, halfwords          
li x8, 0                  
li x9, 0                   
add_loop_halfwords:
    beq x9, x6, end_add_halfwords 
    lh x10, 0(x7)              
    add x8, x8, x10            
    addi x7, x7, 2             
    addi x9, x9, 1             
    j add_loop_halfwords
end_add_halfwords:
    nop                        