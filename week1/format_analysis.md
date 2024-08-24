
.data
a: .word 0x80000112, 0x9123456C   
b: .half 0x8002, 0x456A           
c: .byte 0x82, 0x6A               

.text
    la x10, a          
    lw x12, 0(x10)       
    lw x13, 4(x10)      
    add x14, x13, x12     
    sw x14, 8(x10)  

    la x10, a
    lwu x12, 0(x10)
    lwu x13, 4(x10)
    add x14, x13, x12
    sw x14,8(x10)

    la x11, b           
    lh x12, 0(x11)       
    lh x13, 2(x11)       
    add x14, x13, x12    
    sh x14, 4(x10)       

    la x11, c           
    lb x12, 0(x11)       
    lb x13, 1(x11)       
    add x14, x13, x12    
    sb x14, 2(x10)      
    
    la x10, b           
    lhu x12, 0(x10)       
    lhu x13, 2(x10)       
    add x14, x13, x12    
    sh x14, 4(x10)       

    la x11, c           
    lbu x12, 0(x11)       
    lbu x13, 1(x11)       
    add x14, x13, x12    
    sb x14, 2(x10)
