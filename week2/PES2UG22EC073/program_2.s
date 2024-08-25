.data
a: .word 10,9,8,7,6           # Define array 'a' with 5 elements
b: .word 1,2,3,4,5            # Define array 'b' with 5 elements
c: .word 0,0,0,0,0            # Define array 'c' to store the result, initialized with 0s

.text
# Load base addresses of arrays 'a', 'b', and 'c' into registers
la x10, a                     # Load address of array 'a' into register x10
la x11, b                     # Load address of array 'b' into register x11
la x12, c                     # Load address of array 'c' into register x12

# Loop through each element of the arrays and add corresponding elements from 'a' and 'b'
# Element 1 (index 0)
lw x5, 0(x10)                 # Load first element of array 'a' into register x5 (a[0] = 10)
lw x6, 0(x11)                 # Load first element of array 'b' into register x6 (b[0] = 1)
add x7, x5, x6                # Add a[0] and b[0], store the result in x7 (x7 = 10 + 1 = 11)
sw x7, 0(x12)                 # Store the result (11) in the first element of array 'c' (c[0] = 11)

# Element 2 (index 1)
lw x5, 4(x10)                 # Load second element of array 'a' into register x5 (a[1] = 9)
lw x6, 4(x11)                 # Load second element of array 'b' into register x6 (b[1] = 2)
add x7, x5, x6                # Add a[1] and b[1], store the result in x7 (x7 = 9 + 2 = 11)
sw x7, 4(x12)                 # Store the result (11) in the second element of array 'c' (c[1] = 11)

# Element 3 (index 2)
lw x5, 8(x10)                 # Load third element of array 'a' into register x5 (a[2] = 8)
lw x6, 8(x11)                 # Load third element of array 'b' into register x6 (b[2] = 3)
add x7, x5, x6                # Add a[2] and b[2], store the result in x7 (x7 = 8 + 3 = 11)
sw x7, 8(x12)                 # Store the result (11) in the third element of array 'c' (c[2] = 11)

# Element 4 (index 3)
lw x5, 12(x10)                # Load fourth element of array 'a' into register x5 (a[3] = 7)
lw x6, 12(x11)                # Load fourth element of array 'b' into register x6 (b[3] = 4)
add x7, x5, x6                # Add a[3] and b[3], store the result in x7 (x7 = 7 + 4 = 11)
sw x7, 12(x12)                # Store the result (11) in the fourth element of array 'c' (c[3] = 11)

# Element 5 (index 4)
lw x5, 16(x10)                # Load fifth element of array 'a' into register x5 (a[4] = 6)
lw x6, 16(x11)                # Load fifth element of array 'b' into register x6 (b[4] = 5)
add x7, x5, x6                # Add a[4] and b[4], store the result in x7 (x7 = 6 + 5 = 11)
sw x7, 16(x12)                # Store the result (11) in the fifth element of array 'c' (c[4] = 11)
