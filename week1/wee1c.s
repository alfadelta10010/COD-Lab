.data 
a: .byte 0x67, 0x00      
.text
la x10, a            
lb x11, 0(x10)      
lb x12, 2(x10)      
add x13, x11, x12    
sb x13, 4(x10)

