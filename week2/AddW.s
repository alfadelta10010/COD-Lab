.data
a: .word 0x00000001, 0x00000002         

.text

la x9,a                     
lw x10,0(x9)                
lw x11,4(x9)            
add x12,x11,x10       
sw x12,8(x9)                