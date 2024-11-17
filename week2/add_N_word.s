.data
N: .word 5                    
words: .word 1, 2, 3, 4, 5    
.text
la x5, N                  
lw x6, 0(x5)              
la x7, words              
li x8, 0                  
li x9, 0                  
add_loop_words:
    beq x9, x6, end_add_words 
    lw x10, 0(x7)             
    add x8, x8, x10       
    addi x7, x7, 4            
    addi x9, x9, 1          
    j add_loop_words
end_add_words:
    nop                       