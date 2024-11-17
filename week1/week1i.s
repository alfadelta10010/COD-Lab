.data
value:  .word 0x78563412     # Little Endian 32-bit value stored in memory
result: .word 0              # Placeholder for the converted Big Endian value

.text
.globl _start
_start:
    # Step 1: Load the 32-bit value from memory into register x10
    la x1, value             # Load address of 'value' into x1
    lw x10, 0(x1)            # Load 32-bit value into x10

    # Step 2: Extract each byte from x10
    andi x11, x10, 0xFF      # Extract least significant byte (byte 0)
    srli x12, x10, 8         # Shift right by 8 bits
    andi x12, x12, 0xFF      # Extract second byte (byte 1)
    srli x13, x10, 16        # Shift right by 16 bits
    andi x13, x13, 0xFF      # Extract third byte (byte 2)
    srli x14, x10, 24        # Shift right by 24 bits
    andi x14, x14, 0xFF      # Extract most significant byte (byte 3)

    # Step 3: Rearrange bytes into Big Endian order
    slli x15, x11, 24        # Shift byte 0 (least significant byte) to most significant position
    slli x16, x12, 16        # Shift byte 1 to the second most significant position
    slli x17, x13, 8         # Shift byte 2 to the third most significant position
    or x18, x15, x16         # Combine shifted byte 0 and byte 1
    or x18, x18, x17         # Combine result with shifted byte 2
    or x18, x18, x14         # Combine result with byte 3 (most significant byte)

    # Step 4: Store the Big Endian result back in memory
    la x2, result            # Load address of 'result' into x2
    sw x18, 0(x2)            # Store the 32-bit Big Endian value at 'result'

    # End program (exit simulation for most environments)
    li a7, 10                # Syscall for program termination
    ecall
