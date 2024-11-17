.data
a: .half 0x0004, 0x456C
.text
la x1, a            
lh x2, 0(x1)        
lh x3, 2(x1)        
add x4, x3, x2      
sh x4, 4(x1)        

