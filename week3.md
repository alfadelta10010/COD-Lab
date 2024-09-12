### Statement:
Convert a 32-bit word from little-endian to big-endian using a loop in RISC-V assembly.

### Name of file:
- endian_conversion.s

### Observation - Single Cycle:

- The program loads a 32-bit word (0x12345678) stored in little-endian format into a register.
- It extracts each byte and stores them in reverse order (big-endian) at the same memory location.
- The loop iterates four times, once for each byte of the 32-bit word, modifying the memory in place.

### Register Mapping:
- x5: 0x12345678 (original value of the word)
- x6: Stores the extracted byte during each iteration
- x10: Base address of a (0x10000000)
- x11: Loop index (starts from 0)
- x12: 3 (maximum loop count for 4 bytes)
- x13: Starting offset for byte storage (7, decrements with each iteration)
- x14: Effective memory address (computed as x10 + x13 in each iteration)

### Data Mapping:
- 0x10000000: 0x12345678 (initial little-endian value)
- 0x10000004: 0x78563412 (final big-endian result after the loop)
- 0x10000008: 0x00000000 (unused)
------------------------------------------------------------------------------------------------------------------------

### Statement:
Sum the elements of two arrays, where each element is of halfword (16-bit) size, and store the result in a third array.

### Name of file:
- adding_2loops.s

### Observation - Single Cycle:
The program loads halfword (16-bit) values from two arrays (a and b) into registers.
It sums corresponding elements from arrays a and b and stores the results in array c.
The loop iterates 5 times (as there are 5 elements in each array), updating the memory locations in c.

### Register Mapping:
- x1: Base address of array a (holds the pointer to a)
- x2: Base address of array b (holds the pointer to b)
- x3: Base address of array c (holds the pointer to c)
- x4: Holds the halfword value loaded from array a
- x5: Holds the halfword value loaded from array b
- x6: Sum of values in x4 and x5
- x19: Loop counter (starts from 0, increments to 5)
- x20: Set to 5 for loop comparison (number of elements in the arrays)

### Data Mapping:
- 0x10000000 (a): 0x0001 (first element)
- 0x10000002 (a): 0x0002 (second element)
- 0x10000004 (a): 0x0003 (third element)
- 0x10000006 (a): 0x0004 (fourth element)
- 0x10000008 (a): 0x0005 (fifth element)
- 0x1000000A (b): 0x0006 (first element)
- 0x1000000C (b): 0x0007 (second element)
- 0x1000000E (b): 0x0008 (third element)
- 0x10000010 (b): 0x0009 (fourth element)
- 0x10000012 (b): 0x000A (fifth element)
- 0x10000014 (c): 0x0007 (first sum: 0x0001 + 0x0006)
- 0x10000016 (c): 0x0009 (second sum: 0x0002 + 0x0007)
- 0x10000018 (c): 0x000B (third sum: 0x0003 + 0x0008)
- 0x1000001A (c): 0x000D (fourth sum: 0x0004 + 0x0009)
- 0x1000001C (c): 0x000F (fifth sum: 0x0005 + 0x000A)
------------------------------------------------------------------------------------------------------------------------

### Statement:
Sum the elements of an array, where each element is of halfword (16-bit) size, and store the result in a halfword variable.

### Name of file:
- addition_array_elements.s

### Observation - Single Cycle:
The program initializes a sum (h) with the value stored at address s.
It iterates over the array a, adding each halfword element to h.
After summing all elements, it stores the final sum back into the memory.

### Register Mapping:
- x10: Base address of array a (pointer to a)
- x11: Address of the sum variable s (pointer to s)
- x12: Loop counter (starts from 0, increments to 10)
- x13: Holds the halfword value loaded from array a
- x6: Accumulator for the sum of elements (initially loaded with the value in s)
- x20: Loop limit (set to 9 for 10 elements in the array)

### Data Mapping:
- 0x10000000 (a): 0x0001 (repeated 10 times, each element is 0x0001)
- 0x10000014 (s): 0x0000 (initial sum value)
- After execution:
  0x10000014 (s): 0x000A (final sum of all elements in a)



#adding_2loops.s
# Program: Sum of elements in two arrays, where each element is of word size
# The sum of corresponding elements from arrays 'a' and 'b' is stored in array 'c'

.data
a: .word 0x01, 0x02, 0x03, 0x04, 0x05   # Array 'a' containing 5 words
b: .word 0x06, 0x07, 0x08, 0x09, 0x0A   # Array 'b' containing 5 words
c: .word 0x00, 0x00, 0x00, 0x00, 0x00   # Array 'c' for storing the results, initialized to 0

.text
la x1, a            # Load the base address of array 'a' into register x1
la x2, b            # Load the base address of array 'b' into register x2
la x3, c            # Load the base address of array 'c' into register x3

addi x19, x0, 0     # Initialize loop counter (x19) to 0
addi x20, x0, 5     # Set the loop limit to 5 (since there are 5 elements in each array)

loop:
    lw x4, 0(x1)     # Load the next word from array 'a' into register x4
    lw x5, 0(x2)     # Load the next word from array 'b' into register x5
    add x6, x4, x5   # Add the values in x4 and x5, store the result in x6
    sw x6, 0(x3)     # Store the result (sum) into array 'c'

    addi x19, x19, 1  # Increment the loop counter (x19)
    addi x1, x1, 4    # Move to the next word in array 'a' (increment the address by 4 bytes)
    addi x2, x2, 4    # Move to the next word in array 'b' (increment the address by 4 bytes)
    addi x3, x3, 4    # Move to the next word in array 'c' (increment the address by 4 bytes)

    blt x19, x20, loop  # Continue looping until all 5 elements are processed (x19 < x20)



#addition_array_elements.s
# wap for sum of elements in an array ,take each element is of half-words size
# h = h+a[i]

.data
a: .half 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01,0x01 
s: .half 0x00

.text
la x10, a
la x11, s
lh x6,0(x11)

addi x12 ,x0,0
addi x20,x0,9
loop:
    lh x13,0(x10)
    add x6,x6,x13
    addi x12,x12,1
    addi x10,x10,2
    bltu x12,x20,loop
    sh x6,0(x10)

