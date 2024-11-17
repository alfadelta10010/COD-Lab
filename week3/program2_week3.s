    .text
    .globl _start
_start:
    # Load the 4-bit data word (e.g., 1101 for d1=1, d2=1, d3=0, d4=1)
    li t0, 0b1101         # t0 = 1101 (data bits, d1=1, d2=1, d3=0, d4=1)
    
    # Step 1: Calculate the parity bits

    # Calculate p1 (position 1) - checks d1, d3, d4 (positions 3, 5, 7)
    andi t1, t0, 0b0101    # Mask to isolate d1, d3, d4 for p1: t1 = t0 & 0b0101
    popcount_parity1:       # Count the number of 1's in t1
    li t2, 0               # Initialize the counter for parity1
    addi t2, t2, 0          # Temporary counter for parity1
    andi t3, t1, 1          # Check the least significant bit of t1
    add t2, t2, t3          # If bit is 1, increment t2
    srli t1, t1, 1          # Shift t1 right to check the next bit
    andi t3, t1, 1          # Check the next bit
    add t2, t2, t3
    srli t1, t1, 1
    andi t3, t1, 1
    add t2, t2, t3

    # Set the parity bit p1 to 0 if count is even, 1 if odd
    andi t2, t2, 1          # Parity 1 should be 1 if count is odd, else 0
    slli t2, t2, 0          # Position the parity bit in its place
    # Now we store the parity bit for p1 by using a mask: 0b1000000 (position 1)
    li t3, 0b0100000        # Create mask for position 1 (p1)
    or t0, t0, t3           # Set p1 in the final result

    # Calculate p2 (position 2) - checks d2, d3, d4 (positions 3, 6, 7)
    andi t1, t0, 0b0011    # Mask to isolate d2, d3, d4 for p2
    popcount_parity2:
    li t2, 0               # Initialize counter for p2
    andi t3, t1, 1          # Check least significant bit
    add t2, t2, t3          # Increment if bit is 1
    srli t1, t1, 1          # Shift to next bit
    andi t3, t1, 1          # Check the next bit
    add t2, t2, t3
    srli t1, t1, 1
    andi t3, t1, 1
    add t2, t2, t3

    # Set the parity bit p2 to 0 if count is even, 1 if odd
    andi t2, t2, 1          # Parity 2 should be 1 if count is odd, else 0
    slli t2, t2, 1          # Position the parity bit in its place
    li t3, 0b0010000        # Mask for p2 (position 2)
    or t0, t0, t3           # Set p2 in the final result

    # Calculate p4 (position 4) - checks d1, d2, d3 (positions 3, 5, 6)
    andi t1, t0, 0b0110    # Mask to isolate d1, d2, d3 for p4
    popcount_parity4:
    li t2, 0               # Initialize counter for p4
    andi t3, t1, 1          # Check least significant bit
    add t2, t2, t3          # Increment if bit is 1
    srli t1, t1, 1          # Shift to next bit
    andi t3, t1, 1          # Check the next bit
    add t2, t2, t3
    srli t1, t1, 1
    andi t3, t1, 1
    add t2, t2, t3

    # Set the parity bit p4 to 0 if count is even, 1 if odd
    andi t2, t2, 1          # Parity 4 should be 1 if count is odd, else 0
    slli t2, t2, 3          # Position the parity bit in its place
    li t3, 0b0001000        # Mask for p4 (position 4)
    or t0, t0, t3           # Set p4 in the final result

    # Final 7-bit result is now stored in t0
    # t0 now contains the Hamming-encoded number

    # Exit the program (RIPES will halt execution here)
    nop                     # No operation, just to mark the end of the program
