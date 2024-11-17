#Program1:Write an assembly program to search a given number in an array

.data
a: .byte 10,20,30,40,50

.text
la x10, a # first index
addi x11, x10, 5 # last index
addi x14, x0, 30 
loop:
    lb x12, 0(x10)
    addi x10, x10, 1
    beq x10, x11, exit
    bne x14, x12, loop
exit:
    addi x0, x0, 0
