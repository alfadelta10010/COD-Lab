 #1. Write an Assembly Program for the following C code

.data
a:  .half 0x1234        # a[0]
    .half 0x5678        # a[1]
    .half 0x0000        # a[2]
    .half 0x0000        # a[3]
    .half 0x0000        # a[4]
    .half 0x0000        # a[5]
    .half 0x0000        # a[6]
    .half 0x0000        # a[7]
    .half 0x0000        # a[8]
    .half 0x0000        # a[9]
    .half 0x0000        # a[10]

.text
.globl main
main:
    la t1, a            # Load the base address of array 'a' into t1

    li t0, 0            # Initialize h = 0 (t0 will store h)

    li t2, 10           # Initialize loop counter to 10

loop:
    lh t3, 0(t1)        # Load a[i] into t3 (16-bit load)
    add t0, t0, t3      # h = h + a[i]

    addi t1, t1, 2      # Increment array pointer to the next element
    addi t2, t2, -1     # Decrement loop counter
    bnez t2, loop       # If t2 != 0, continue loop             bnez=Branch if Not Equal to Zero

    # Store the sum h into a[10]
    sh t0, 0(t1)        # Store h in a[10] (next half-word after a[9])

