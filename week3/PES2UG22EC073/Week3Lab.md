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
