.data
array: .word 1, 2, 3, 4, 5    # Input array
size:  .word 5                # Array size
key:   .word 3                # Key to search
result: .word -1              # Output index (or -1 if not found)

.text
.globl _start
_start:
    la x10, array           # Load base address of array
    lw x5, size            # Load size of array
    lw x6, key             # Load the key
    li x7, 0               # Index counter

search_loop:
    beqz x5, not_found     # If size is 0, key not found
    lw x28, 0(x10)         # Load current element
    beq x6, x28, found     # If key matches, go to found
    addi x10, x10, 4       # Move to next element
    addi x7, x7, 1         # Increment index
    addi x5, x5, -1        # Decrement size
    j search_loop          # Jump back to start of the loop

not_found:
    li x29, -1             # Load -1 into x29
    la x30, result         # Load address of result
    sw x29, 0(x30)         # Store -1 to result
    j exit                 # Jump to exit

found:
    la x30, result         # Load address of result
    sw x7, 0(x30)         # Store index to result

exit:
    li a7, 10             # System call number for exit
    ecall