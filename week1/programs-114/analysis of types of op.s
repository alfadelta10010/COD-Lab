 .data 
a: .byte 0x14, 0x12, 0        
b: .half 0x1246, 0xa678, 0    
c: .word 0x34567823, 0x12345678 

.text
la x15, a       
lb x4, 0(x15)  
sb x4, 1(x15)
       
la x14, b           
lh x3, 0(x14)       
sh x3, 2(x14)       

la x12, c           
lw x2, 0(x12)       
sw x2, 4(x12)