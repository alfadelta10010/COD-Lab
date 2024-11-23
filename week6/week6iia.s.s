 #factorial without recursion
    .text
    .global _start

_start:
    # Input number n in a0
    # Example: Let's assume n = 5
    li      a0, 5          # Load 5 into a0 (input number)
    li      a1, 1          # a1 will store the result, initialize to 1
    li      t0, 1          # t0 is the loop counter (start from 1)

factorial_iterative:
    # Check if t0 <= a0 (we are calculating factorial of a0)
    bgt     t0, a0, done   # If t0 > a0, we are done
    mul     a1, a1, t0     # a1 = a1 * t0
    addi    t0, t0, 1      # Increment t0 (counter)
    j       factorial_iterative

done:
    # The result is in a1 (n!)
    # a1 contains the factorial result, exit program
    li      a7, 10         # syscall for exit
    ecall
