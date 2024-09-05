.data
a: .word 0x12345678
b: .word 0
.text
la x10,a          #loading address of a into x10
la x11,b          #loading address of b into x11
lw x12 0(x10)     #loading word at x10 into x12
addi x13 x0 0     #iterating variable for the loop
addi x14 x0 4     #limit variable for the loop

addi x25 x0 24    #shift value by 24
addi x24 x0 -8    #negative shifter by 8
addi x23 x0 8     #shift by 8
loop:
    andi x17 x12 0xFF #masking for the least significant byte
    sll x17 x17 x25   #shifting the byte received by appropriate amount
    add x18 x18 x17   #adding the shifted byte to a new register 
    add x25 x25 x24   #changing the shift amount by -8 for the next LSB
    srl x12 x12 x23   #shifting the word to be stored by 1 byte to get next LSB
    addi x13 x13 1    #adding to the counter variable
    bltu x13 x14 loop #checking if counter variable is eqal to limit
sw x18 0(x11)         #storing the result in a new location