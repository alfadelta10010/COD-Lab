.data
num: .word 18         # Input number (example: 18 is binary 10010, which has 2 bits set)
result: .word 0        # Result (1 if 2 out of 5, 0 otherwise)

.text
    la x5, num         # Load the address of num
    lw x6, 0(x5)       # Load the value of num into x6

    li x7, 5           # Load 5 (number of bits to check) into x7
    li x8, 0           # Counter for bits set to 1 (initialize to 0)

check_bits:
    andi x9, x6, 1     # Isolate the least significant bit (LSB)
    add x8, x8, x9     # Add the value of the LSB to the counter
    srli x6, x6, 1     # Right shift x6 by 1 to check the next bit
    addi x7, x7, -1    # Decrement the bit counter
    bnez x7, check_bits # Repeat until all 5 bits are checked

    # Check if exactly 2 bits are set
    li x10, 2          # Load 2 into x10
    beq x8, x10, is_two_out_of_five # If counter == 2, it's valid
    li x11, 0          # Otherwise, load 0 (false) into x11
    j store_result

is_two_out_of_five:
    li x11, 1          # Load 1 (true) into x11

store_result:
    la x5, result      # Load the address of result
    sw x11, 0(x5)      # Store the result in memory

 