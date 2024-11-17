#Program 1:Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

.data
a: .word 0x12345678
.text
la x10,a
lw x11,0(x10)
addi x3,x0,3

loop:
    andi x12,x11,0xFF
    add x14,x14,x12
    slli x14,x14,8
    srli x11,x11,8
    addi x3,x3,-1
bnez x3,loop
    add x15,x14,x11
    sw x15,8(x10)