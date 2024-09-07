# Program 1: 

### Statement:Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
lab2.s

### Observation - Single Cycle
Assembly code is trying to convert the content 32 bit stored in little endian format in x3 and x8 and storing it in x5.
 
### Register Mapping
x3-22EFCDAB
x8-22EFCDAB
x5-ABCDEF22

### Data Mapping
.data
a:    .word 0x22EFCDAB

.text
    la x2, a # Load address of 'a' into x2
    lw x3, 0(x2)# Load the 32-bit value at address 'a' into x3
    lw x8,0(x2)# Load the 32-bit value at address 'a' into x8
    # Begin conversion from Little Endian to Big Endian
    slli x5, x3, 24  # Shift the lowest byte of x3 to the highest byte of x5
 
    srli x3, x3, 8 # Shift x3 right by 8 bits to move the next byte to the lowest position
    andi x6,x3,0x000000FF
    slli x4, x6,16 # Shift the current lowest byte to the second-highest position
    or x5, x5, x4    # Combine it with x5

    srli x3, x3, 8 # Shift x3 right by another 8 bits
    andi x7,x3,0x000000FF
    slli x4, x7,8   # Shift the current lowest byte to the second-lowest position
    or x5, x5, x4    # Combine it with x5

    srli x3, x3,8  # Shift x3 right by another 8 bits
    andi x9,x3,0x000000FF
    or x5, x5, x9    # Combine the highest byte (now the lowest byte in x3) with x5

    # Now x5 contains the value in Big Endian format
