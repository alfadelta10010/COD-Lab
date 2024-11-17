    .text
main:
    li x5, 36          
    li x6, 9              
    rem x7, x5, x6        
    beq x7, x0, divisible 

not_divisible:
    li x10, 0             
    beq x0,x0 end                 
divisible:
    li x10, 1             

end:
    nop
