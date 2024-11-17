# Program 1
.data # bubble sort
a: .byte 0x0e, 0x0d, 0x10, 0x02, 0x07, 0x04

.text
addi x21, x0, 5 # final index or number of element
la x10, a # Initial address
add x20, x10, x21 # final address
loop1: # outer loop
    loop2: # inner loop
        lbu x11, 0(x10) # Get element
        lbu x12, 1(x10) # Get next element
        bgt x11, x12, swap
		addi x10, x10 ,1 # Goto next element
		bne x10, x20, loop2 # Loop until it reaches final address
	addi x20, x20, -1 # reduce cycle count by not check the last elements
    la x10, a # Reset address or go back to beginning of array
    addi x1, x1, 1 # Outer counter
    bne x1, x21, loop1 # Loop until all indexes covered
    j exit
swap:
    sb x11, 1(x10)
    sb x12, 0(x10)
    j loop2
exit:
    addi a0, x0, 0 # exit code
    addi a7, x0, 93


# Program 2
.data
fact: .byte 0x05
.text
la x10,fact
lw x11,0(x10)
addi x12,x0,1
loop:
    blez x11,out
    mul x12,x12,x11
    addi x11,x11,-1
    j loop
out:
    add x15,x0,x12