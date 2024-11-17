    .data
a: .half 0x0002, 0x456A   

    .text
    la x1, a            
    lh x2, 0(x1)        
    lh x3, 2(x1)        
    add x4, x3, x2      
    sh x4, 4(x1)  
