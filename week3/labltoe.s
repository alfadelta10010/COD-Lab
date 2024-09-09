.data 
a: .word 0x12345678
.text
la x10,a
lw x1,0(x10)
addi x2,x0,0
addi x3,x0,24
addi x4,x0,0
addi x5,x0,4
add x8,x0,x0
loop:
    srl x6,x1,x2
    andi x7,x6,0xff
    sll x7,x7,x3
    add x8,x8,x7
    addi x2,x2,8
    addi x3,x3,-8
    addi x4,x4,1
    bne x4,x5,loop
sw x8,4(x10) 
    