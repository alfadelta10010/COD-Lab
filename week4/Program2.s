.data
a: .word 0x87654321, 0x12121212,0x56566556,0x98989898
b: .word 0x12345678
.text
la x10,a         
la x11,b             
lw x16,0(x11)             
addi x20,x0,4         
addi x27,x0,0

loop: lw x12,0(x10)        
      beq x12,x16,exit 
      addi x27,x27,1   
      beq x27,x20,exit2
      addi x10,x10,4       
      beq x0,x0,loop       
exit: addi x25,x0,1  
exit2: nop