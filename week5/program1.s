# Write an assembly program to check whether a given number 
# in an array of elements is divisible by 9
# write 1 to the corresponding index of the second array if divisible by 9

.data
a: .word 1, 9, 3, 4, 18, 6, 27, 8
b: .word 0, 0, 0, 0, 0, 0, 0, 0
c: .word 8 # length of the arrays
.text

la x10, a
la x11, b
la x12, c

lw x13, 0(x12)

addi x7, x0, 1
addi x8, x0, 9

loop:
    lw x5, 0(x10)
    rem x6, x5, x8
    
    beq x6, x0, divisible
    
    addi x10, x10, 4
    addi x11, x11, 4
    addi x13, x13, -1

    blt x0, x13, loop

j exit
    
divisible:
    sw x7, 0(x11)
    
    addi x11, x11, 4
    addi x10, x10, 4
    addi x13, x13, -1
    blt x0, x13, loop
exit:
    nop