.data
a: .half 0x1234,0x5678,0x12,23,45,21,23,78,98,35,11
b: .half 0x1234,0x5678,624,223,45,09,56,54,23,22,55
c: .half 1,1,1,1,1,1,1,1,1,1,1

.text
la x10,a
la x11,b
la x12,c

addi x13,x0,10
lhu x22,0(x12) #keeoing c[-1]=c[0]

loop:
    lhu x20,0(x10) #a[i]
    lhu x21,0(x11)  #b[i]
    
    mul x25,x20,x21
    add x25,x25,x22
    sh x25,0(x12)
    
    addi x10,x10,2
    addi x11,x11,2
    addi x12,x12,2
    addi x13,x13,-1  #decreement
    beq x13,x0,exit
    jal x1,loop
    
exit: nop