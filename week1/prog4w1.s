.data
a: .half -5    
b: .byte 0x60        

.text
la x10,a            
la x11,b           
lbu x13,0(x11)     
lh x14,0(x10)     
lhu x12,0(x10)       
lb x15,0(x11)        