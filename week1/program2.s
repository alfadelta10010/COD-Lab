.data
# Define two 64-bit numbers (each split into lower and upper 32 bits)
num1_lo: .word 0xFFFFFFFF         # Lower 32 bits of first number (e.g., 4294967295)
num1_hi: .word 0x00000001         # Upper 32 bits of first number (e.g., 1)

num2_lo: .word 0x00000001         # Lower 32 bits of second number (e.g., 1)
num2_hi: .word 0x00000000         # Upper 32 bits of second number (e.g., 0)

# Space to store the result (64-bit)
result_lo: .word 0                # Lower 32 bits of result
result_hi: .word 0                # Upper 32 bits of result

.text
.globl main
main:
    # Load lower 32 bits of num1 and num2
    la t0, num1_lo                # Load address of num1_lo
    lw t1, 0(t0)                  # Load value of num1_lo into t1
    la t0, num2_lo                # Load address of num2_lo
    lw t2, 0(t0)                  # Load value of num2_lo into t2

    # Perform addition of lower 32 bits
    add t3, t1, t2                # t3 = num1_lo + num2_lo

    # Check for carry (if result < any operand, carry occurred)
    sltu t4, t3, t1               # t4 = (t3 < t1) ? 1 : 0 (detect carry)

    # Store lower 32 bits of result
    la t0, result_lo              # Load address of result_lo
    sw t3, 0(t0)                  # Store lower 32 bits of result

    # Load upper 32 bits of num1 and num2
    la t0, num1_hi                # Load address of num1_hi
    lw t1, 0(t0)                  # Load value of num1_hi into t1
    la t0, num2_hi                # Load address of num2_hi
    lw t2, 0(t0)                  # Load value of num2_hi into t2

    # Perform addition of upper 32 bits, including carry from lower 32-bit addition
    add t3, t1, t2                # t3 = num1_hi + num2_hi
    add t3, t3, t4                # t3 = t3 + carry (if any)

    # Store upper 32 bits of result
    la t0, result_hi              # Load address of result_hi
    sw t3, 0(t0)                  # Store upper 32 bits of result

    # Exit program
    li a7, 10                     # Load ecall code for exit
    ecall                         # Make system call to exit
