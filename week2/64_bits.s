    .data
a:  .word 0x00000001, 0x00000002, 0x00000003, 0x00000004  
    .text
    la x5, a            # Load base address of array 'a' into x5
    lw x6, 0(x5)        # Load lower 32 bits of the first 64-bit number into x6
    lw x7, 4(x5)        # Load upper 32 bits of the first 64-bit number into x7
    lw x8, 8(x5)        # Load lower 32 bits of the second 64-bit number into x8
    lw x9, 12(x5)       # Load upper 32 bits of the second 64-bit number into x9

    
    add x10, x6, x8    
    la x5, a            
    sw x10, 16(x5)      

    
    sltu x11, x10, x6  
    
    
    add x12, x7, x9     
    add x13, x12, x11   
    sw x13, 20(x5)      
