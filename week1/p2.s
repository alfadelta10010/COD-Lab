.data
alsb:  .word 0x10101010  
amsb: .word 0x00000001       
blsb:  .word 0x00000001   
bmsb: .word 0x00000000   

.text
    # Load the low and high parts of the first number
    la x5, alsb               # Load address of num1_low
    lw x10, 0(x5)                 # x10 = num1_low
    la x6, amsb              # Load address of num1_high
    lw x11, 0(x6)                 # x11 = num1_high

    # Load the low and high parts of the second number
    la x7, blsb              # Load address of num2_low
    lw x12, 0(x7)                 # x12 = num2_low
    la x8, bmsb              # Load address of num2_high
    lw x13, 0(x8)                 # x13 = num2_high

    # Add the low parts (x10 + x12)
    add x14, x10, x12             # x14 = num1_low + num2_low

    # Check for carry from low part addition
    sltu x15, x14, x10            # x15 = 1 if carry occurred, else 0

    # Add the high parts (x11 + x13 + carry)
    add x16, x11, x13             # x16 = num1_high + num2_high
    add x16, x16, x15             # x16 = x16 + carry (if any)

    # x14 now contains the low 32 bits of the result
    # x16 now contains the high 32 bits of the result
nop

