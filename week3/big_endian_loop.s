#Convert a 32-bit value from Little Endian to Big Endian format 
.data
a: .word 0x12345678

.text
la x10,a
lw x11,0(x10)
addi x28,x0,4     #storing a counter in a register
addi x29,x0,24    #storing 24 in a register
loop:
    andi x12,x11,0xFF  #getting the last 8 lsb bits
    sll x13,x12,x29    #shifting the 8 bits left and loading it to x13
    add x14,x14,x13    #adding the shifted value to a register
    srli x11,x11,8     #shifting the main word right and removing the last 8 bits
    addi x29,x29,-8
    addi x28,x28,-1
    bnez x28,loop
    
sw x14,4(x10)
    

