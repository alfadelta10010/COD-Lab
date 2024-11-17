
.data
array:  .word 18, 27, 35, 81, 100, 45  

.text
    la   x10, array            # Load base address of array 
    addi x11,x0,6              # Load length of the array into x11 
    addi x12,x0,0              # Initialize loop index (x12) to 0 

loop:
    bge  x12, x11, end_loop     # If index >= length, exit loop
    lw   x13, 0(x10)            # Load array[x12] into x13 
    addi x14,x0,9             # Load 9 into x14 
    rem  x15, x13, x14         # x15 = x13 % 9 
    beq  x15, x0, divisible    # If remainder is 0, branch to divisible 

not_divisible:
    j    next_element        

divisible:
    j    next_element        

next_element:
    addi x10, x10, 4            # Increment the pointer by 4 (size of a word)
    addi x12, x12, 1            # Increment x12
    j loop                      # Repeat the loop

end_loop:

    addi   x17,x0, 10               # System call for exit
    ecall