    .data
a:  .word 0x00000001, 0x00000002, 0x00000003, 0x00000004  
    .text
    la x5, a           
    lw x6, 0(x5)        
    lw x7, 4(x5)        
    lw x8, 8(x5)       
    lw x9, 12(x5)      
    
    add x10, x6, x8    
    la x5, a            
    sw x10, 16(x5)      
    sltu x11, x10, x6  
    add x12, x7, x9     
    add x13, x12, x11   
    sw x13, 20(x5)      
