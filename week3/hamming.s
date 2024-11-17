    .data
    encoded_result: .word 0     
    
    .text
    start:
    andi t0, a0, 0b0001        
    srli t1, a0, 1
    andi t1, t1, 0b0001        
    srli t2, a0, 2
    andi t2, t2, 0b0001        
    srli t3, a0, 3
    andi t3, t3, 0b0001       
    xor t4, t0, t1             
    xor t4, t4, t3             
    xor t5, t0, t2             
    xor t5, t5, t3             
    xor t6, t1, t2             
    xor t6, t6, t3             
    slli a1, t4, 6             
    slli t7, t5, 5
    or a1, a1, t7              
    slli t7, t0, 4
    or a1, a1, t7              
    slli t7, t6, 3
    or a1, a1, t7              
    slli t7, t1, 2
    or a1, a1, t7              
    slli t7, t2, 1
    or a1, a1, t7              
    or a1, a1, t3     
    sw a1, encoded_result     
    li a7, 10                 
   
