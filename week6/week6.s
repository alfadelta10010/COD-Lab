week 6
Assembly code assignment
1.Write an assembly program to sort an array using bubble sort to sort N-elements
.data
array: .word 10, 30, 25, 7, 12, 18   # Array to be sorted
n:     .word 6                       # Number of elements in the array

.text

    la x10, array                    # Load base address of array into x10
    lw x11, n                        # Load number of elements in array into x11 
    
    # Outer loop: for i = 0 to n-2
    addi x12, x0, 0                  # Initialize x12 = i (outer loop index)
outer_loop:
    addi x13, x11, -1                 # x13 = n - 1 (outer loop limit)
    sub x13, x13, x12                 # x13 = n - 1 - i (inner loop limit)
    ble x13, x0, exit                 # If inner loop limit <= 0, exit loop

    # Inner loop: for j = 0 to n-2-i
    addi x14, x0, 0                  # Initialize x14 = j (inner loop index)
inner_loop:
    slli x15, x14, 2                 # x15 = j * 4 (offset for array[j])
    add x15, x15, x10                # x15 = address of array[j]
    lw x16, 0(x15)                   # Load array[j] into x16

    addi x17, x14, 1                 # x17 = j + 1
    slli x17, x17, 2                 # x17 = (j + 1) * 4 (offset for array[j+1])
    add x17, x17, x10                # x17 = address of array[j+1]
    lw x18, 0(x17)                   # Load array[j+1] into x18

    ble x16, x18, no_swap            # If array[j] <= array[j+1], no swap needed

    # Swap array[j] and array[j+1]
    sw x18, 0(x15)                   # Store array[j+1] at array[j]
    sw x16, 0(x17)                   # Store array[j] at array[j+1]

no_swap:
    addi x14, x14, 1                 # Increment j
    blt x14, x13, inner_loop         # If j < n-1-i, continue inner loop

    # Increment outer loop index i
    addi x12, x12, 1                 # Increment i
    j outer_loop                     # Jump to outer loop

exit:
    li x17, 10                       # Load exit syscall number
    ecall                            # Make syscall to exit the program


2. Write an assembly program to calculate the factorial of a number with & without recursion
without 
.data
number: .word 5          # Number to calculate factorial
.text

    la x12, number        # Load the base address 
    lw x10, 0(x12)        # Load the value of number into x10 
    li x11, 1             # Initialize x11 to 1 (x11 = result)
    
    beq x10, x0, end      # If n == 0, skip the loop and go to end
    
loop:
    mul x11, x11, x10     # result = result * n (x11 = x11 * x10)
    addi x10, x10, -1     # n = n - 1 (x10 = x10 - 1)
    bnez x10, loop        # If n != 0, continue the loop

end:
    sw x11, 4(x12)        # Store the factorial result into `result`
    addi x10,x0,10        # Return from the program


with recursion
.data
number: .word 5          # Number to calculate factorial
.text

    addi x10, x0, 5       # x10 = n (number to calculate factorial for)
    jal x1, fact          # Call the factorial function
    addi x21, x10, 0      # Store the result in x21 for later use
same:
    j same                # Endless loop (halt the program)

fact:
    addi sp, sp, -8       # Decrease stack pointer to save 2 items
    sw x1, 4(sp)          # Save the return address on the stack
    sw x10, 0(sp)         # Save the argument n on the stack

    addi x5, x10, -1      # x5 = n - 1
    bge x5, x0, L1        # If (n - 1) >= 0, go to L1 (recursive case)
    addi x10, x0, 1       # Return 1 for n = 0 or n = 1
    addi sp, sp, 8        # Restore stack pointer
    jalr x0, (x1)0        # Return to caller

L1:
    addi x10, x10, -1     # n >= 1: argument gets (n − 1)
    jal x1, fact          # Call fact with (n − 1)
    addi x6, x10, 0       # Move result of fact(n - 1) to x6

    lw x10, 0(sp)         # Restore argument n
    lw x1, 4(sp)          # Restore return address
    addi sp, sp, 8        # Adjust stack pointer

    mul x10, x10, x6      # x10 = n * fact(n − 1)
    jalr x0, (x1)0        # Return to caller


3. Write an assembly program to do matrix multiplication
.data
A:  .word 1, 2, 3, 4      # Matrix A (2x2)
B:  .word 5, 6, 7, 8      # Matrix B (2x2)
C:  .word 0, 0, 0, 0      # Matrix C (Resultant matrix initialized to 0)

.text
    la x5, A           
    la x6, B               
    la x7, C               

    # Matrix multiplication:
    # C[0,0] = A[0,0]*B[0,0] + A[0,1]*B[1,0]
    lw x8, 0(x5)         
    lw x9, 4(x5)       
    lw x10, 0(x6)          
    lw x11, 4(x6)          
    mul x12, x8, x10       # Multiply A[0,0] * B[0,0]
    mul x13, x9, x11       # Multiply A[0,1] * B[1,0]
    add x14, x12, x13      # Add the results to get C[0,0]
    sw x14, 0(x7)          # Store the result in C[0,0]

    # C[0,1] = A[0,0]*B[0,1] + A[0,1]*B[1,1]
    lw x8, 0(x5)           # Reload A[0,0] into x8
    lw x9, 4(x5)           # Reload A[0,1] into x9
    lw x10, 4(x6)          # Load B[0,1] into x10
    lw x11, 8(x6)          # Load B[1,1] into x11
    mul x12, x8, x10       # Multiply A[0,0] * B[0,1]
    mul x13, x9, x11       # Multiply A[0,1] * B[1,1]
    add x14, x12, x13      # Add the results to get C[0,1]
    sw x14, 4(x7)          # Store the result in C[0,1]

    # C[1,0] = A[1,0]*B[0,0] + A[1,1]*B[1,0]
    lw x8, 8(x5)           # Load A[1,0] into x8
    lw x9, 12(x5)          # Load A[1,1] into x9
    lw x10, 0(x6)          # Load B[0,0] into x10
    lw x11, 4(x6)          # Load B[1,0] into x11
    mul x12, x8, x10       # Multiply A[1,0] * B[0,0]
    mul x13, x9, x11       # Multiply A[1,1] * B[1,0]
    add x14, x12, x13      # Add the results to get C[1,0]
    sw x14, 8(x7)          # Store the result in C[1,0]

    # C[1,1] = A[1,0]*B[0,1] + A[1,1]*B[1,1]
    lw x8, 8(x5)           # Reload A[1,0] into x8
    lw x9, 12(x5)          # Reload A[1,1] into x9
    lw x10, 4(x6)          # Load B[0,1] into x10
    lw x11, 8(x6)          # Load B[1,1] into x11
    mul x12, x8, x10       # Multiply A[1,0] * B[0,1]
    mul x13, x9, x11       # Multiply A[1,1] * B[1,1]
    add x14, x12, x13      # Add the results to get C[1,1]
    sw x14, 12(x7)         # Store the result in C[1,1]
exit:
     nop