.data
a: .word 0x80000112, 0x9123456C   
b: .half 0x8002, 0x456A           
c: .byte 0x82, 0x6A               
.text

    la x5, a           
    lw x6, 0(x5)        
    lw x7, 4(x5)        
    add x8, x6, x7     
    sw x8, 8(x5)        
    la x9, b           
    lh x10, 0(x9)       
    lh x11, 2(x9)       
    add x12, x10, x11  
    sh x12, 4(x9)       
    la x13, c          
    lb x14, 0(x13)     
    lb x15, 1(x13)     
    add x16, x14, x15  
    sb x16, 2(x13)    

    la x17, b           
    lhu x18, 0(x17)     
    lhu x19, 2(x17)     
    add x20, x18, x19   
    sh x20, 4(x17)     
    la x21, c          
    lbu x22, 0(x21)     
    lbu x23, 1(x21)     
    add x24, x22, x23   
    sb x24, 2(x21)
