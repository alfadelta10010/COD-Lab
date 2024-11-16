.data
num: .byte 0x12           # Single number to check
result: .byte 0             # Result storage

.text

la x10, num             # Load address of the number into x10
lbu x5 0(x10)         # Load the byte from the address into x11
andi x10,x5,0xe0
bne x10,x0,exit
addi x13,x0,5
back:
    andi x6,x5,0x01
    beq x6,x0,next
    addi x25,x25,1
next:
    srli x5,x5,1
    addi x13,x13,-1
    bne x13,x0,back
    addi x26,x0,2
     bne x25,x26,exit
     addi x20,x0,0x01
     beq x0,x0,exit2
 exit:addi x20,x0,2
exit2:nop