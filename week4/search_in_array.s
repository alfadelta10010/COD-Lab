.data
a: .byte 0x12, 0x45, 0x32, 0x91, 0x11  
b: .byte 0x91
.text
la x10, a
la x11, b 
lb x9, 0(x11)  
addi x18, x0, 5    #counter of array size
addi x20, x0, 0    #x20=0 if number not found 
loop:
    lb x8, 0(x10) 
    bne x8, x9, next    #compare number in array to given number
    addi x20, x0, 1    #x20=1 if number is found
    beq x0, x0, exit

next:
    addi x10, x10, 1    #move to next number in array
    addi x18, x18, -1  
    bne x18, x0, loop

exit:
    nop
