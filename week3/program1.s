.data
a:.byte 0x12
.text
la x10,a
lbu x5,0(x10)
andi x6,x5,0xE0

bne x6,x0,exit
addi x13,x0,5

back:andi x6,x5,0x01
     beq x6,x0,next # if result in x6=x0 (true) next label gets executed in which x5 is right shifted logically by 1 until x13 decremented to 0 /x13=0 
                    # if x6 is not equal to zero consecutive addi inst is executed 
     addi x25,x25,01 # x25 is a counter variable which gets incremented upon checking no of 1's in last 5 bit of the given num 
next:srli x5,x5,1  # right shifting of the x5 by 1 in each iteration 
     addi x13,x13,-1 # decrementaion of counter x13 variable 
     bne x13,x0,back # decrementaion until x13=0 or else loop back into back inst

addi x26,x0,2 # refernce reg for verifying value stored in x25 
bne x25,x26,exit # constant cannot be used directly in branch statement threfore ref reg(x26) used for comparison 
                 # if x25 is not equal to x26 exit label is executed (2nd condition is not satisfied )
                 # if x25 = x26 (2nd condition is satisfied )
addi x20,x0,0x01 # x20 holds 1 indication of 2 out of code 
beq x0,x0,exit2  # to avoid overwrite of x20= 2 in the exit code   

    
exit:addi x20,x0,2
exit2:nop
