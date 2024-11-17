.data
    num:    .word 6               # Number for which factorial is to be calculated
    result: .word 1               # Result initialized to 1

.text
    la x2, num                   
    lw x3, 0(x2)                  
    lw x5,result                
   # addi x6, x3, -1               
    add x7, x0, x3
    beq x3,x0,done
                    

iterative_loop:
    beq x7,x0,done
    mul x5, x5, x7                
    addi x7, x7, -1               
    j iterative_loop              
done:
    sw x5, 0(x4)  
