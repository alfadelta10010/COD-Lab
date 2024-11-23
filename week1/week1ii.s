.data
num1:   .dword 0x00000001FFFFFFFF   # First 64-bit number
num2:   .dword 0x0000000200000001   # Second 64-bit number
result: .dword 0                    # Placeholder for the 64-bit result

.text
.globl _start
_start:
    # Load the low and high parts of num1 into registers
    la x1, num1              # Load the address of num1 into x1
    lw x2, 0(x1)             # Load low 32 bits of num1 into x2
    lw x3, 4(x1)             # Load high 32 bits of num1 into x3

    # Load the low and high parts of num2 into registers
    la x4, num2              # Load the address of num2 into x4
    lw x5, 0(x4)             # Load low 32 bits of num2 into x5
    lw x6, 4(x4)             # Load high 32 bits of num2 into x6

    # Add the low 32 bits
    add x7, x2, x5           # x7 = low(num1) + low(num2)

    # Handle carry from the low 32-bit addition
    sltu x8, x7, x2          # x8 = 1 if carry occurs, otherwise 0

    # Add the high 32 bits and include the carry
    add x9, x3, x6           # x9 = high(num1) + high(num2)
    add x9, x9, x8           # x9 = x9 + carry

    # Store the result back into memory
    la x10, result           # Load address of result into x10
    sw x7, 0(x10)            # Store the low 32 bits of the result
    sw x9, 4(x10)            # Store the high 32 bits of the result

    # End the program (exit)
    li a7, 10                # Syscall for program termination
    ecall
