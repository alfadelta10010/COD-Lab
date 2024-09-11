.data
a: .word 10,30,20,50,40  # Array of integers to be sorted
n: .word 5              # Number of elements in the array      
.text
la x10,a                # Load address of array 'a' into register x10
la x11,n                # Load address of 'n' into register x11
lw x12,0(x11)          # Load the value of n (5) into register x12
addi x13,x0,0          # Initialize outer loop counter x13 to 0  
outer_loop:
    sub x14,x12,x13      # x14 = n - outer_loop_counter
    addi x14,x14,-1      # x14 = n - outer_loop_counter - 1
    addi x15,x0,0        # Initialize inner loop counter x15 to 0
    inner_loop:
    beq x15,x14,outer_loop_end  # If inner loop counter equals x14, exit inner loop
    lw x16,0(x10)                # Load current element into x16
    lw x17,4(x10)                # Load next element into x17
    blt x16,x17,no_swap          # If x16 < x17, go to no_swap
    sw x17,0(x10)                # Swap elements
    sw x16,4(x10)
no_swap:
    addi x10,x10,4               # Move to the next pair of elements
    addi x15,x15,1               # Increment inner loop counter
    beq x0,x0,inner_loop         # Repeat inner loop
    outer_loop_end:
    addi x14,x13,1          # x14 = outer loop counter + 1
    beq x13,x2,outer_loop   # If outer loop counter equals n, repeat outer loop
    exit:
    addi x20,x0,1           # Exit the program (setting x20 to 1)
                