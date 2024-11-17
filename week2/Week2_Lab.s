#Write an assembly code for the given c code
#Program 1 Write an Assembly Program for the given C code:
.data
a:  .half 0x1234, 0x5678, 0, 0, 0, 0, 0, 0, 0, 0, 0  # Initialize array 'a' with the first two values and others as 0
h:  .half 0                                         # Initialize 'h' with 0

.text
la x10, a                # Load the address of array 'a' into x10
la x15, h                # Load the address of 'h' into x15
li x11, 0                # Initialize i (counter) in x11 with 0
li x12, 10               # Load 10 into x12 (limit for loop)

loop:
lh x13, 0(x10)           # Load the half-word at the address in x10 (a[i]) into x13
lh x14, 0(x15)           # Load the current value of 'h' from memory into x14
add x14, x14, x13        # Add the value of a[i] to 'h'
sh x14, 0(x15)           # Store the updated value of 'h' back into memory
addi x10, x10, 2         # Increment the address pointer (x10) by 2 (to point to the next half-word)
addi x11, x11, 1         # Increment i by 1
bne x11, x12, loop       # If i != 10, continue the loop

sh x14, 20(x10)          # Store the final value of 'h' in a[10]




#Write an Assembly Program for addition of 2 64-bit numbers on RV32I 
.data
a:  .word 0x89ABCDEF, 0x01234567    # Lower and upper 32-bits of first 64-bit number (a = 0x0123456789ABCDEF)
b:  .word 0xFEDCBA98, 0x76543210    # Lower and upper 32-bits of second 64-bit number (b = 0x76543210FEDCBA98)
result: .word 0, 0                   # Space for storing the 64-bit result

.text
la x10, a                # Load address of 'a' into x10
la x11, b                # Load address of 'b' into x11
la x12, result           # Load address of 'result' into x12

# Load the lower 32-bits of 'a' and 'b'
lw x13, 0(x10)           # Load a[0] (lower 32 bits of a) into x13
lw x14, 0(x11)           # Load b[0] (lower 32 bits of b) into x14

# Load the upper 32-bits of 'a' and 'b'
lw x15, 4(x10)           # Load a[1] (upper 32 bits of a) into x15
lw x16, 4(x11)           # Load b[1] (upper 32 bits of b) into x16

# Add lower 32-bits
add x17, x13, x14        # Add the lower 32 bits of a and b, store result in x17

# Store lower 32-bits of result
sw x17, 0(x12)           # Store the lower 32 bits result at result[0]

# Handle carry from lower 32-bit addition
sltu x18, x17, x13       # Set x18 to 1 if there's a carry (unsigned comparison)

# Add upper 32-bits with carry
add x19, x15, x16        # Add the upper 32 bits of a and b, store result in x19
add x19, x19, x18        # Add the carry from the lower 32-bit addition

# Store upper 32-bits of result
sw x19, 4(x12)           # Store the upper 32 bits result at result[1]

