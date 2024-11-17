.data
a:.byte 0x00,0x01,0x04,0x02,0x03,0x06,0x08
.text
la x1,a
addi x2,x1,0x00
addi x8,x1,0x06        

loop:
beq x2,x8,exit         
lbu t0,0x00(x2)        
lbu t1,0x01(x2)
bgtu t0,t1,swap        
addi x2,x2,0x01        
bltu x2,x8,loop        
beq t2,x0,exit         
addi t2,x0,0x00       
addi x2,x1,0x00
j loop                

swap:
sb t1,0x00(x2)         
sb t0,0x01(x2)
addi x2,x2,0x01
addi t2,t2,0x01       
beq x0,x0,loop

exit:
  nop  
