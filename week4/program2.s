# Write an assembly program to search a given number in an array
# Write the address of the element (if found) to x20

.data
a: .word 0x1, 0x2, 0x3, 0x4, 0x5, 0x6, 0x7, 0x8 # array
b: .word 0x7 # array number to be found
.text

la x10, a
la x11, b

lw x12, 0(x11)

loop:
    lw x5, 0(x10)
    beq x5, x12, exit
    addi x10, x10, 4
    blt x10, x11, loop
    
exit: 
    addi x20, x10, 0