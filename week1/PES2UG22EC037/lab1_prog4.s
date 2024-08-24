.data 
a: .half -3,2                                    
n: .byte -7, 3                       
.text
la x10,a                                    
la x11,n                                  
lh x12,0(x10)                              
lh x13,2(x10)
add x14,x12,x13
lhu x15,0(x10)
lhu x16,2(x10)
add x17,x15,x16
lb x18,0(x11)
lb x19,1(x11)
add x20,x18,x19
lbu x21,0(x11)
lbu x22,1(x11)
add x23,x21,x22                            
sh x14,4(x10)
sh x17,6(x10)
sb x20,2(x11)
sb x23,3(x11)                             
