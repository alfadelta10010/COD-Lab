.data 
w: .word 0x123,0x346A,0x987
h: .half 0x9808,0x2,0xacb
b: .byte 1,2,3
N: .word 3

.text
la x10,w
la x20,h
la x30,b
la x31,N

lw x29,0(x31)

add x5,x0,x29
addword:
    lw x6,0(x10)
    add x21,x21,x6
    addi x10,x10,4
    addi x5,x5,-1
    bne x5,x0,addword
    
add x5,x0,x29    
        
addhalf:
    lh x6,0(x20)
    add x22,x22,x6
    addi x20,x20,2
    addi x5,x5,-1
    bne x5,x0,addhalf
    
add x5,x0,x29  

addbyte:
    lb x6,0(x30)
    add x23,x23,x6
    addi x30,x30,1
    addi x5,x5,-1
    bne x5,x0,addbyte