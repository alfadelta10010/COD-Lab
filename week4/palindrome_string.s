# Write an assembly program to find whether a given string is a palindrome or not, using stack operations

.data
input:      .asciz "racecar"  # Input string
outputYn:  .byte 0    # Output for palindrome or not

.text

la x18,input
la x19,outputYn


addi x25,x0,1  #for yes
addi x26,x0,0 #for no

lb x6,0(x18)
lb x7,1(x18)
lb x28,2(x18)
lb x29,3(x18)
lb x30,4(x18)
lb x31,5(x18)
lb x5,6(x18)

strcpy:
    addi sp,sp,-4
    sw x25,0(sp)            #To push the values in the stack
    add x25,x0,x0

jal x1,func

func:
    bne x6,x5,exit
    bne x7,x31,exit
    bne x28,x30,exit
    addi x25,x25,1
    sb x25,0(x19)
    beq x0,x0,exit1
    
    
L2:
    lw x25,0(sp)
    addi sp,sp,4
    jalr x0,x0,0

exit:
    sb x26,0(x19)
exit1:
    nop