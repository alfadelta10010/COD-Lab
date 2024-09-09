.data 

a: .word 0x12345678
.text
la x10,a
lw x12,0(x10)
addi x20,x0,0
addi x21,x0,4
addi x15,x0,24

loop:
    
    andi x13,x12,0xff
    srli x12,x12,8
    
    sll x14,x13,x15
    addi x15,x15,-8
    add x16,x16,x14
    addi x20,x20,1
    bltu x20,x21,loop
    sw x16,4(x10)