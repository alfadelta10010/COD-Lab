# ALP to check if a given number is a valid two out of five code or not

.data
a: .byte 0b00010001
.text

la x10, a

lbu x10, 0(x10)
addi x11, x0, 2

# check if any of the first three bits are 1's
addi x12, x0, 31
bltu x12, x10, false

loop:
	# count number of 1's
    andi x6, x10, 0b1
    add x5, x5, x6
    srli x10, x10, 1 
    bne x10, x0, loop

# check if number of 1's is 2
beq x5, x11, true
    
false:
    addi x20, x20, 0x02
    
j exit

true:
    addi x20, x20, 0x01
    
exit: nop
