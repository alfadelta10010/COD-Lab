.data
a: .byte 0x11, 0x22, 0x33, 0x33, 0x22, 0x11

.text
la x10, a # starting index
addi x15, x10, 5 # ending index
addi x11, x0, 1

loop:
    lb x20, 0(x10)
    lb x25, 0(x15)
    
    bne x20, x25, nopl
    
    addi x10, x10, 1
    addi x15, x15, -1
    blt x10, x15, loop
    j exit
nopl:
    addi x11, x0, 0
exit:
    addi x0, x0, 0
