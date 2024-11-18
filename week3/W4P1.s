.data
input:      .asciz "malayalam"  
outputYn:  .byte 0    

.text

la x18,input
la x19,outputYn


addi x25,x0,1  
addi x26,x0,0 

lb x6,0(x18)
lb x7,1(x18)
lb x28,2(x18)
lb x29,3(x18)
lb x30,4(x18)
lb x31,5(x18)
lb x5,6(x18)

strcpy:
    addi sp,sp,-4
    sw x25,0(sp)            
    add x25,x0,x0

jal x1,fun

fun:
    bne x6,x5,exit2
    bne x7,x31,exit2
    bne x28,x30,exit2
    addi x25,x25,1
    sb x25,0(x19)
    beq x0,x0,exit1


L2:
    lw x25,0(sp)
    addi sp,sp,4
    jalr x0,x0,0

exit2:
    sb x26,0(x19)
exit1:
    nop