#if a number is divisible by 9 or not
.data
num: .word 99,9

.text
la x5,num               #loading address of num

addi x9,x0,9
addi x7,x0,2
loop:
    lw x10,0(x5)        #loading the first number
    addi x5,x5,4     #incrementing the base address
    addi x7,x7,-1    
    rem x11,x10,x9    #finding the remainder
    bne x11,x0,loop    #checking if the remainder is 0
    addi x6,x6,1      #incrementing by 1 for all divisible numbers
    bne x7,x0,loop
   
