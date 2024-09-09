    .data
a: .half 0x0001, 0x0089   

    .text
    la x1, a            
    lh x2, 0(x1)        
    lh x3, 2(x1)        
    add x4, x3, x2      
    sh x4, 4(x1)        
