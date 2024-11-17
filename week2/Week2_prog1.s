.data
a:  .half 0x1234, 0x5678, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000, 0x0000  # Array 'a' with 11 elements

    .text
    la x5, a           
    li x6, 0          
    li x7, 0           

    slli x8, x7, 1     
    add x8, x5, x8      
    lh x9, 0(x8)       
    add x6, x6, x9      # h = h + a[i] 
    addi x7, x7, 1  
    slli x8, x7, 1      
    add x8, x5, x8
