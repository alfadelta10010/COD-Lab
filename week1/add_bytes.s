    .data
a: .byte 0x02, 0x6A   

    .text
    la x1, a          
    lb x2, 0(x1)      
    lb x3, 1(x1)      
    add x4, x3, x2    
    sb x4, 2(x1)    

