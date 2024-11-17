.data
    array: .word 64, 34, 25, 12, 22, 11, 90   # Array to sort
    size: .word 7                             # Size of array
    
.text
.globl _start
_start:
    la x5, array       # Load base address of array
    lw x6, size        # Load size of array
    addi x6, x6, -1    # size-1 for outer loop counter
    
outer_loop:
    beqz x6, exit      # If outer counter = 0, array is sorted
    
    mv x7, x6          # Initialize inner loop counter
    la x8, array       # Reset array pointer for inner loop
    li x9, 0          # swapped flag = false
    
inner_loop:
    beqz x7, outer_check  # If inner counter = 0, check if swap occurred
    
    # Load adjacent elements
    lw x10, 0(x8)      # Load current element
    lw x11, 4(x8)      # Load next element
    
    # Compare adjacent elements
    ble x10, x11, no_swap    # If current <= next, no swap needed
    
    # Swap elements if current > next
    sw x11, 0(x8)      # Store smaller number in current position
    sw x10, 4(x8)      # Store larger number in next position
    li x9, 1          # Set swapped flag = true
    
no_swap:
    addi x8, x8, 4     # Move to next element
    addi x7, x7, -1    # Decrement inner counter
    j inner_loop
    
outer_check:
    beqz x9, exit      # If no swaps occurred, array is sorted
    addi x6, x6, -1    # Decrement outer counter
    j outer_loop
    
exit:
    li a7, 10          # System call for exit
    ecall
