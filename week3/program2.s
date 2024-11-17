.data
a: .byte 0x11,0x01
.text
la x10,a
lb x10 0(x10)
andi x11 x10 0xe0
bne x11 x0 exit
addi x20 x0 5 #loop limit variable
addi x13 x0 0 #loop iterating variable
addi x14 x0 0 #number of 1s in the least 5 bits
addi x15 x0 1 #condition to check if bit is equal to 1
addi x16 x0 2
loop:
    andi x12 x10 0x01
    add x14 x14 x12
    srli x10 x10,1
    addi x13 x13 1
    bne x13 x20 loop
bne x14 x16 exit
addi x23 x0 0xfffffffff
exit:
    nop
