.data
a: .half 0x1111, 0x2222              

.text
la x10,a           
lhu x11,0(x10)     
lhu x12,2(x10)  
add x13,x12,x11    
sh x13,4(x10)    
