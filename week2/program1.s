.data
w1:.word 0x00000001           
w2:.word 0x12345678           
h1:.half 0x0001         
h2:.half 0x0002         
b1:.byte 0x01                 
b2:.byte 0x02                 
.text
la x10, w1 
la x12, w2 
   
      
lw x11, 0(x10)           
lw x13, 0(x12)      
add x14, x11, x13   
sw x14, 0(x10) 
          
la x10, h1 
la x12, h2
lh x11, 0(x10)               
lh x13, 0(x12)       
add x15, x11, x13    
sh x15, 0(x10)       

la x10, b1 
la x12, b2    
lb x11, 0(x10)            
lb x13, 0(x12)       
add x16, x11, x13    
sb x16, 0(x10)   
