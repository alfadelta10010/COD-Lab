week 5
1. Write an assembly program to check whether a given number in an array of elements is divisible by 9
.data
array:  .word 18, 27, 35, 81, 100, 45  

.text
    la   x10, array            # Load base address of array 
    addi x11,x0,6              # Load length of the array into x11 
    addi x12,x0,0              # Initialize loop index (x12) to 0 

loop:
    bge  x12, x11, end_loop     # If index >= length, exit loop
    lw   x13, 0(x10)            # Load array[x12] into x13 
    addi x14,x0,9             # Load 9 into x14 
    rem  x15, x13, x14         # x15 = x13 % 9 
    beq  x15, x0, divisible    # If remainder is 0, branch to divisible 

not_divisible:
    j    next_element        

divisible:
    j    next_element        

next_element:
    addi x10, x10, 4            # Increment the pointer by 4 (size of a word)
    addi x12, x12, 1            # Increment x12
    j loop                      # Repeat the loop

end_loop:
    
    addi   x17,x0, 10               # System call for exit
    ecall

2.     Write an Assembly Program for the following C code:
main() { unsigned short int a[11] = {0x1234, 0x5678, ...}; unsigned short int b[11] = {0x1234, 0x5678, ...}; unsigned short int c[11] = {0x1234, 0x5678, ...}; for(i = 0; i < 10; i++) { c[i] = a[i] * b[i] + c[i-1]; } } ```

.data
a: .half 0x1234, 0x5678
b: .half 0x1234, 0x5678
c: .half 0x1234, 0x5678

.text

main:
    la x10, a              # Load base address of array a into x10
    la x11, b              # Load base address of array b into x11
    la x12, c              # Load base address of array c into x12

    addi x13, x0, 10       # Load loop count (10 iterations) into x13
    addi x14, x0, 1        # Set loop counter to 1 (i = 1)

loop:
    bge x14, x13, exit     
    lh x15, 0(x10)         # Load elements a[i]
    lh x16, 0(x11)         # Load elements b[i]
    mul x17, x15, x16      # x17 = a[i] * b[i]
    lh x18, -2(x12)        # Load c[i-1]
    add x19, x17, x18      # x19 = x17 + x18
    sh x19, 0(x12)        
    addi x10, x10, 2       # Move to next element in array a
    addi x11, x11, 2       # Move to next element in array b
    addi x12, x12, 2       # Move to next element in array c
    addi x14, x14, 1       
    j loop               

exit:
    addi x30,x0,0
