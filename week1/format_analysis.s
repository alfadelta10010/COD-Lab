.data
a: .word 0x80000112, 0x9123456C   
b: .half 0x8002, 0x456A           
c: .byte 0x82, 0x6A               
.text
    
    la x20, a            
    lw x21, 0(x20)       
    lw x22, 4(x20)       
    add x23, x21, x22   
    sw x23, 8(x20)      
    la x24, b           
    lh x25, 0(x24)      
    lh x26, 2(x24)      
    add x27, x25, x26    
    sh x27, 4(x24)      
    la x28, c            
    lb x29, 0(x28)       
    lb x30, 1(x28)      
    add x31, x29, x30    
    sb x31, 2(x28)       

   
    la x32, b           
    lhu x33, 0(x32)     
    lhu x34, 2(x32)      
    add x35, x33, x34    
    sh x35, 4(x32)      
    la x36, c           
    lbu x37, 0(x36)     
    lbu x38, 1(x36)     
    add x39, x37, x38   
    sb x39, 2(x36)      
