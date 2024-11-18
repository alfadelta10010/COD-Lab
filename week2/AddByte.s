.data
b: .byte 0x12,0x34               

.text
la x2,b              
lbu x3,0(x2)        
lbu x4,1(x2)        
add x5,x4,x3   
sb x5,2(x2)