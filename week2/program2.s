.data
y: .word 0x00000003    
m: .word 0x00000005   
L: .word 0x00000007    
D: .word 0x00000009    
Z: .word 0x00000002    
C: .word 0x00000000    
x: .word 0x00000004    

.text
main:
  
    la x10, y          # Load address of y
    lw x11, 0(x10)     # Load y into x11

    la x10, m         
    lw x12, 0(x10)    

    la x10, L         
    lw x13, 0(x10)     

    la x10, D          
    lw x14, 0(x10)     

    la x10, Z          
    lw x15, 0(x10)     

    la x10, C          
    lw x16, 0(x10)     

    add x17, x11, x12  
    sub x18, x13, x14  
    sub x19, x17, x18  
    add x20, x15, x16  
    sub x21, x20, x14  
    add x22, x19, x21  

    # Store result 
    la x10, x          
    sw x22, 0(x10)    

    # Exit
    nop
