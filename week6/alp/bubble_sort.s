# bubble sort
.data
a: .word 8,7,6,5,4,3,2,1
.text

la x10, a
addi x11, x0, 8    # amount of iterations for the first loop
addi x12, x0, 8

loop:
    addi x11, x11, -1
    ble x11, x0, iter
    lw x5, 0(x10)
    lw x6, 4(x10)
    addi x10, x10, 4
    bltu x6, x5, swap
    bgeu x6, x5, loop
    
swap:
    sw x5, 0(x10)
    sw x6, -4(x10)
    j loop
    
iter:
    addi x12, x12, -1
    ble x12, x0, exit
    la x10, a
    addi x11, x12, 0
    j loop
    
exit:
    nop