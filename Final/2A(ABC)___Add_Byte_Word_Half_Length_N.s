.data
a: .word 0x00,0x01,0x02,0x03
b: .word 0x00,0x01,0x02,0x03
c: .word 0x00,0x00,0x00,0x00
.text
addi x5,x0,0x04     #length of array
la x2,a
la x3,b
la x4,c
add x10,x0,x0
addi x15,x0,0x00		#datatype 1 - word 2 - half 3 - byte
addi x16,x0,0x02
beq x16,x15,loop_Half
addi x16,x0,0x03
beq x16,x15,loop_Byte

loop_Word:
    lw x7,0x00(x2)
    lw x8,0x00(x3)
    add x9,x8,x7
    sw x9,0x00(x4)
    addi x10,x10,0x01
    addi x2,x2,0x04
    addi x3,x3,0x04
    addi x4,x4,0x04
    bne x10,x4,loop_Word
     
loop_Half:
    lh x7,0x00(x2)
    lh x8,0x00(x3)
    add x9,x8,x7
    sh x9,0x00(x4)
    addi x10,x10,0x01
    addi x2,x2,0x02
    addi x3,x3,0x02
    addi x4,x4,0x02
    bne x10,x4,loop_Half

loop_Byte:
    lb x7,0x00(x2)
    lb x8,0x00(x3)
    add x9,x8,x7
    sb x9,0x00(x4)
    addi x10,x10,0x01
    addi x2,x2,0x01
    addi x3,x3,0x01
    addi x4,x4,0x01
    bne x10,x4,loop_Byte