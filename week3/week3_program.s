.data
a: .word 0xabcdef01

.text
la x5, num          #Load the address of a into x5
lw x6, 0(x5)        #Load the 32-bit value at a into x6
andi x7, x6, 0xFF   #Extract the lsb into x7
addi x8, x0, 3      #Initialize the loop counter in x8 (3 iterations)

process_bytes:
    slli x7, x7, 8     #Shift x7 left by 8 bits
    srli x6, x6, 8     #Shift x6 right by 8 bits
    andi x9, x6, 0xFF  #Extract the next byte from x6 and store in x9
    add x7, x7, x9     #Add the extracted byte to x7
    addi x8, x8, -1    #Decrement the loop counter
bne x8, x0, process_bytes  #Repeat the loop until x8==0
