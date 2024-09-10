.data              
a:.dword 0x1000000018643478,0x2000000035792467
.text
la x10,a          
lw x11,0(x10)     
lw x12,4(x10)     
lw x13,8(x10)     
lw x14,12(x10)   
add x15,x11,x13   
sltu x16,x15,x13  
add x17,x12,x14   
sltu x18,x17,x14  
add x19,x16,x17   
sw x15,16(x10)  
sw x9,20(x10)    