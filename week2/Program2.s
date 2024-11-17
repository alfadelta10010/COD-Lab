.data
y:   .word 1         
m:   .word 25          
L:   .word 15          
D:   .word 20          
Z:   .word 10          
C:   .word 0          
x:   .word 30         
.text
    la x10,y
    la x11,m
    la x12,L
    la x13,D
    la x14,Z
    la x15,C
    la x16,x
    lw x17, 0(x10)      
    lw x18, 0(x11)   
    lw x19, 0(x12)      
    lw x20, 0(x13)      
    lw x21, 0(x14)      
    lw x22, 0(x15)
    add x23 x17,x18      
    sub x24,x19,x20
    add x25,x21,x22
    sub x26,x23,x24
    add x26,x26,x25
    sub x26,x26,x20
    sw x26,0(x16)