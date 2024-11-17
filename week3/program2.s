.data
input:  .byte 0b1100     
output: .byte 0, 0, 0, 0         

.text
main:
    la x10, input         
    lb x11, 0(x10)       

    # Extract individual data bits
    andi x12, x11, 0x1    
    srli x13, x11, 1
    andi x13, x13, 0x1   
    srli x14, x11, 2
    andi x14, x14, 0x1    
    srli x15, x11, 3
    andi x15, x15, 0x1    

    # Calculate parity bits
    xor x16, x12, x13     
    xor x16, x16, x15    
    xor x17, x12, x14    
    xor x17, x17, x15    
    xor x18, x13, x14     
    xor x18, x18, x15     

    # Combine the Hamming code (p1, p2, d1, p3, d2, d3, d4)
    slli x19, x18, 3      
    or x19, x19, x14    
    slli x19, x19, 1
    or x19, x19, x13    
    slli x19, x19, 1
    or x19, x19, x17    
    slli x19, x19, 1
    or x19, x19, x12    
    slli x19, x19, 1
    or x19, x19, x16    

   
    la x20, output
    sw x19, 0(x20)        # Store the Hamming code

    # End program
    nop
