    .data
num1:
    .word   0x00000001       # lower 32 bits of num1
    .word   0x00000002       # upper 32 bits of num1

num2:
    .word   0x00000003       # lower 32 bits of num2
    .word   0x00000004       # upper 32 bits of num2

result_low:
    .word   0                # Lower 32 bits of the result (initialized to 0)

result_high:
    .word   0                # Upper 32 bits of the result (initialized to 0)
      .text

    
    # Load the first 64-bit number (num1)
    la      t0, num1         # Load address of num1 into t0
    lw      t1, 0(t0)        # Load lower 32 bits of num1 into t1
    lw      t2, 4(t0)        # Load upper 32 bits of num1 into t2

    # Load the second 64-bit number (num2)
    la      t0, num2         # Load address of num2 into t0
    lw      t3, 0(t0)        # Load lower 32 bits of num2 into t3
    lw      t4, 4(t0)        # Load upper 32 bits of num2 into t4

    # Add the lower 32 bits of num1 and num2
    add     t5, t1, t3       # t5 = lower part of num1 + lower part of num2

    # Add the upper 32 bits of num1 and num2, and handle carry
    add     t6, t2, t4       # t6 = upper part of num1 + upper part of num2
    slt     x8, t5, t1       
    add     t6, t6, x8       

    # Store the result in memory
    lw      x26,(result_low)
    lw      x27,(result_high)
    sw      x30,0(x26)  
    sw      x31,0(x27)  

  
    