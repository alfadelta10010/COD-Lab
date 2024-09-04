# PROGRAM 1
.data
a: .word 0x12345678

.text
la x10,a
lw x11,0(x10)
addi x3,x0,3             # Iterating variable assigned to 3 because we are using word data
back:
    andi x12,x11,0xFF    # Masking the MSB to get the 2 least significant bytes 
    add x14,x14,x12      # Adding the two numbers to join the bytes into 1 number
    slli x14,x14,8       # Shifting left to move the above bytes to MSB position
    srli x11,x11,8       # Shifting right to remove the LSB that has already been extracted
    addi x3,x3,-1        # Modify iterating variable
bnez x3,back
andi x15,x11,0xFF        # Final byte 
add x15,x14,x15 
sw x15,4(x10)            # Writeback to data memory