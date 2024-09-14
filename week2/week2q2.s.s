.data
a: .word 1, 2, 3, 4, 5   
b: .word 10, 20, 30, 40, 50  
c: .word 0,0,0,0,0
.text

la x10, a         
la x11, b          
la x12, c
      
lw ,x14 0(x10)      
lw x15, 0(x11)    
add x16,x14,x15   
sw x16, 0(x12)

lw x14,4(x10)
lw x15,4(x11)
add x10,x14,x15
sw x10,0(x12)

   
