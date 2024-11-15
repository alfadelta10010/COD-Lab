# Write an assembly program to check if a number is a 2 out of 5 number

.data
a:.byte 0x12
.text
la x10,a
lbu x5,0(x10) # 0x12 loaded into x5 reg
andi x6,x5,0xE0 # masking the msb 3 bits and the result is in x6 reg 0x00010010 & 0x11100000 = 0x00000000
                                                            
                                                                                                                         
bne x6,x0,exit # verifyng whether 3msb of the given num are zeros by comparing the value stored in x6 with x0 (which is hardwired to zero)
               # if x6 is not equal to x0 (first 3 bits of the given num aren't zero that is first condition is not satisfied it exits the program)
addi x13,x0,5 # 5 stored in x13 as loop runs about 5 times since we are checking for no of 1's in last 5 bit of the given num

back:andi x6,x5,0x01 # this the label inst whenever back label is encounterd PC gets updated with new address depending on the signed offset here masking  
                    # andi operation to check for 1 in result reg x6 
                    # x5=0x00010010 & 0x00000001 =0x00000000 
                    # x5=0x00001001 & 0x00000001 =0x00000001 
                    # x5=0x00000100 & 0x00000001 =0x00000000
                    # x5=0x00000010 & 0x00000001 =0x00000000
                    # x5=0x00000001 & 0x00000001 =0x00000001
     
     
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

    
exit:addi x20,x0,2 # indicates not a 2 out of code 
exit2:nop # no operation