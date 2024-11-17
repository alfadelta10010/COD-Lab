# Program 1: Convert Little Endian to Big Endian
    .text
    .globl _start
_start:
    # Load a 32-bit value in Little Endian into t0 (e.g., 0x12345678)
    li t0, 0x12345678      # t0 = 0x12345678

    # We will use registers t1 to t4 to mask and shift the individual bytes
    li t1, 0xFF            # Mask for the lowest byte (0xFF)
    li t2, 0xFF00          # Mask for the second byte (0xFF00)
    li t3, 0xFF0000        # Mask for the third byte (0xFF0000)
    li t4, 0xFF000000      # Mask for the highest byte (0xFF000000)

    # Extract and shift bytes to convert to Big Endian format:
    
    # Extract the lowest byte (0x78) and shift it to the highest byte position
    and t5, t0, t1         # t5 = 0x78 (lowest byte)
    slli t5, t5, 24        # t5 = 0x78000000 (shift it to the highest byte position)

    # Extract the second byte (0x56) and shift it to the second highest byte position
    and t6, t0, t2         # t6 = 0x5600 (second byte)
    slli t6, t6, 8         # t6 = 0x560000 (shift it to the second highest byte position)

    # Extract the third byte (0x34) and shift it to the second lowest byte position
    and t5, t0, t3         # t5 = 0x340000 (third byte)
    srli t5, t5, 8         # t5 = 0x3400 (shift it to the second lowest byte position)

    # Extract the highest byte (0x12)
    and t6, t0, t4         # t6 = 0x12000000 (highest byte)

    # Combine all the bytes in the correct order for Big Endian
    or t0, t5, t6          # t0 = 0x78560000 (combine byte 1 and byte 2)
    or t0, t0, t5          # t0 = 0x78563400 (combine with byte 3)
    or t0, t0, t6          # t0 = 0x78563412 (combine with byte 4)

    # Now, t0 contains the value in Big Endian format (0x78563412)

    # End of program (can add exit logic here, depending on the environment)
