.data # palindrome
a: .byte 0x11, 0x22, 0x33, 0x33, 0x22, 0x11

.text
palindrome: 
    la x10, a # starting index
    addi x15, x10, 3 # ending index
    addi x11, x0, 1
    loop1:
        lb x20, 0(x10)
        sw x20, 0(sp)
        addi sp, sp, 4
        addi x10, x10, 1
        blt x10, x15, loop1
    addi x15, x15, 3
    loop2:
        addi sp, sp, -4
        lb x20, 0(x10)
        lb x21, 0(sp)
        bne x20, x21, nopl
        addi x10, x10, 1
        bne x10, x15, loop2
    j exit
    nopl:
        addi x11, x0, 0
    exit:
        addi x0, x0, 0