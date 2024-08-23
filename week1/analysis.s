    .data
a: .word 0x80000002, 0x9123456A   
b: .half 0x8002, 0x456A           
c: .byte 0x82, 0x6A               

    .text
    la x1, a          
    lw x2, 0(x1)       
    lw x3, 4(x1)      
    add x4, x3, x2     
    sw x4, 8(x1)      

    la x1, b           
    lh x2, 0(x1)       
    lh x3, 2(x1)       
    add x4, x3, x2    
    sh x4, 4(x1)       

    la x1, c           
    lb x2, 0(x1)       
    lb x3, 1(x1)       
    add x4, x3, x2    
    sb x4, 2(x1)   
