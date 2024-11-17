  .data
input:  .word 0b1011          
output: .word 0               

.text
    start:
    la x10, input              
    lw x11, 0(x10)             
    andi x12, x11, 0x1        
    srli x11, x11, 1           
    andi x13, x11, 0x1         
    srli x11, x11, 1           
    andi x14, x11, 0x1         
    srli x11, x11, 1           
    andi x15, x11, 0x1         
    xor x16, x15, x14          
    xor x16, x16, x12
    xor x17, x15, x13          
    xor x17, x17, x12
    xor x18, x15, x14          
    slli x19, x16, 6           
    slli x20, x17, 5           
    or x19, x19, x20           
    slli x20, x15, 4           
    or x19, x19, x20          
    slli x20, x18, 3           
    or x19, x19, x20           
    slli x20, x14, 2           
    or x19, x19, x20           
    slli x20, x13, 1           
    or x19, x19, x20           
    or x19, x19, x12           
    la x10, output             
    sw x19, 0(x10)             
