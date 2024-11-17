.data
a: .word 0x12345678   
.text
    la x5, a     
    lw x10, 0(x5)      

    andi x12, x10, 0xFF       
    slli x11, x12, 24         

    srli x12, x10, 8          
    andi x12, x12, 0xFF      
    slli x12, x12, 16        
    or x11, x11, x12          

    srli x12, x10, 16         
    andi x12, x12, 0xFF      
    slli x12, x12, 8          
    or x11, x11, x12          

    srli x12, x10, 24         
    andi x12, x12, 0xFF       
    or x11, x11, x12    