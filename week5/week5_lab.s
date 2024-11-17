i.	Write an assembly program to check whether a given number in an array of elements is divisible by 9
.data
    array: .word 18, 27, 34, 45, 50  # Array of elements
    len: .word 5                      # Length of the array
    result: .word 0                   # To store the result (0 = not divisible by 9, 1 = divisible by 9)

.text
    la x5, array                    # Load address of array into x5
    la x6, len                      # Load address of array length into x6
    lw x7, 0(x6)                    # Load length of array into x7
    li x8, 0                         # Initialize index to 0 (x8 will be our loop counter)

check_divisibility:
    bge x8, x7, exit                # If index >= length, exit the loop

    lw x9, 0(x5)                    # Load current element of array into x9
    li x10, 9                        # Load divisor 9 into x10
    div x11, x9, x10                 # Divide x9 by 9, quotient in x11, remainder in x12
    mfhi x12                         # Move remainder (hi register) into x12

    beq x12, x0, divisible_by_9      # If remainder is 0, number is divisible by 9

not_divisible:
    addi x8, x8, 1                   # Increment index
    addi x5, x5, 4                   # Move to the next element in the array (4 bytes)
    j check_divisibility             # Repeat the loop

divisible_by_9:
    li x13, 1                        # Set result to 1 (indicating divisible by 9)
    la x14, result                   # Load address of result
    sw x13, 0(x14)                   # Store the result in memory
    j not_divisible                  # Continue checking other numbers

exit:
    j exit              # Exit the program (infinite loop)
    
    
    
    

(ii) write the assembly for the given c code
main() {
    unsigned short int a[11] = {0x1234, 0x5678, ...}; // Array a
    unsigned short int b[11] = {0x1234, 0x5678, ...}; // Array b
    unsigned short int c[11] = {0x1234, 0x5678, ...}; // Array c
    int i;
    
    for(i = 0; i < 10; i++) {
        c[i] = a[i] * b[i] + c[i-1];
    }
}

.data
a: .half 0x1234,0x5678,0x12,23,45,21,23,78,98,35,11
b: .half 0x1234,0x5678,624,223,45,09,56,54,23,22,55
c: .half 1,1,1,1,1,1,1,1,1,1,1

.text
la x10,a
la x11,b
la x12,c

addi x13,x0,10
lhu x22,0(x12) #keeoing c[-1]=c[0]

loop:
    lhu x20,0(x10) #a[i]
    lhu x21,0(x11)  #b[i]
    
    mul x25,x20,x21
    add x25,x25,x22
    sh x25,0(x12)
    
    addi x10,x10,2
    addi x11,x11,2
    addi x12,x12,2
    addi x13,x13,-1  #decreement
    beq x13,x0,exit
    jal x1,loop
    
exit: nop

