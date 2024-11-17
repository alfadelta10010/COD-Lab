.data
a: .byte 0x0f, 0x0e, 0x1e, 0x10, 0x0a, 0x40

.text
la x10, a
addi x8, x0, 5 # number of elements - 1
add x9, x10, x8

loop1: # outer loop
    loop2: # inner loop
        lbu x11, 0(x10) # get the 1st element 
        lbu x12, 1(x10) # get the next element
        bgt x11, x12, swap
            addi x10, x10, 1 # move to the next element
            bne x10, x9 loop2 # loop till final 
        addi x9, x9, -1 # dont check the last element that has been pushed to the last
        addi x19, x0, 1 # creating a counter
        la x10, a # load it again
        bne x19, x8, loop1 # looping the 1st one
        j exit
        
        
        swap:
            sb x11, 1(x10)
            sb x12, 0(x10)
            j loop2
        
exit:
    ecall
