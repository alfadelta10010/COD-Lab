.data
a:.byte 0x01,0x02,0x03,0x04,0x05,0x06,0x07,0x08
b:.byte 0x00,0x00,0x00,0x00,0x00,0x00,0x00,0x00

.text
la x1,a
la x7,b
addi x9,x0,8

looper:
    beq x0,x9,same
    addi x1,x1,1
    addi x7,x7,1
    lbu x11,0x00(x1)
    lb x2,0x00(x1)
    addi x6,x0,0    
    jal x20,a2o5
    sb x13,0x00(x7)
    addi x9,x9,-1
    beq x0,x0,looper

same: jal x0,same

a2o5:
    add x13,x8,x1
    andi x5,x2,0x01
    srli x2,x2,0x01
    add x6,x6,x5
    bne x2,x0,a2o5
    addi x4,x0,0x02
    bne x6,x4,false
    addi x13,x0,1
    jalr x0,x20,0

false:
    addi x13,x0,0
    jalr x0,x20,0