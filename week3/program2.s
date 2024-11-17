.data
input:  .word 0b1011           # Define the input word (binary 1011)
output: .word 0                # Define a placeholder for the output

.text
start:
    la x10, input              # Load address of input into x10
    lw x11, 0(x10)             # Load the value at address x10 (input) into x11
    andi x12, x11, 0x1         # Extract the least significant bit (d1) and store in x12
    srli x11, x11, 1           # Shift x11 right by 1 to get next bit
    andi x13, x11, 0x1         # Extract the next bit (d2) and store in x13
    srli x11, x11, 1           # Shift x11 right by 1 to get next bit
    andi x14, x11, 0x1         # Extract the next bit (d3) and store in x14
    srli x11, x11, 1           # Shift x11 right by 1 to get next bit
    andi x15, x11, 0x1         # Extract the next bit (d4) and store in x15

    # Calculate the parity bits
    xor x16, x15, x14          # p1 = d4 ^ d3
    xor x16, x16, x12          # p1 = p1 ^ d1
    xor x17, x15, x13          # p2 = d4 ^ d2
    xor x17, x17, x12          # p2 = p2 ^ d1
    xor x18, x15, x14          # p3 = d4 ^ d3

    # Assemble the Hamming code
    slli x19, x16, 6           # Shift p1 into the 7th position
    slli x20, x17, 5           # Shift p2 into the 6th position
    or x19, x19, x20           # Combine p1 and p2
    slli x20, x15, 4           # Shift d4 into the 5th position
    or x19, x19, x20           # Combine with the result
    slli x20, x18, 3           # Shift p3 into the 4th position
    or x19, x19, x20           # Combine with the result
    slli x20, x14, 2           # Shift d3 into the 3rd position
    or x19, x19, x20           # Combine with the result
    slli x20, x13, 1           # Shift d2 into the 2nd position
    or x19, x19, x20           # Combine with the result
    or x19, x19, x12           # Combine with d1 in the least significant position

    la x10, output             # Load address of output into x10
    sw x19, 0(x10)             # Store the Hamming code at the output address
