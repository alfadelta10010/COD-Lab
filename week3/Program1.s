#Program 1: Write an assembly program to check if a number is a 2 out of 5 number

.data
a: .byte 0x12
.text
la x10,a
lbu x11,0(x10)
andi x12,x11,0xE0	      #Extracting the most significant 3 bits     	
bne x12,x0,exit		      #Checking if MSB bits are zero
addi x22,x0,5		      #Counter 
back:
    andi x12,x11,0x01	      #Extracting LSB bit  	
    beq x12,x0,next	      #Checking if lsb ==0
    addi x23,x23,1	      #If x23 == 2 then the number is 2 out of 5												
    next:
       srli x11,x11,1
      addi x22,x22,-1
        bne x22,x0,back
        exit:addi x15 x0 0x001
