.data
a: .asciz "racecar"  # Input string
y: .byte 0    # Output for palindrome or not
.text
la x10,a
la x11,y
addi x25,x0,1  #for yes
addi x26,x0,0 #for no
lb x6,0(x10)
lb x7,1(x10)
lb x28,2(x10)
lb x29,3(x10)
lb x30,4(x10)
lb x31,5(x10)
lb x5,6(x10)
strcpy:
    addi sp,sp,-4
    sw x25,0(sp)           
    add x25,x0,x0
jal x1,func
func:
    bne x6,x5,exit
    bne x7,x31,exit
    bne x28,x30,exit
    addi x25,x25,1
    sb x25,0(x11)
    beq x0,x0,exit1 
L2:
    lw x25,0(sp)
    addi sp,sp,4
    jalr x0,x0,0
exit:
    sb x26,0(x19)
exit1:
    nop