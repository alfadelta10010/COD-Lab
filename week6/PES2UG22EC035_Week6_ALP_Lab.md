# Program 1: 
### Statement: Write an assembly program to sort an array using bubble sort to sort N-elements

### Name of file:
p1.s

### Observation - Explanation
The program uses two nested loops to iterate over the array and compare adjacent elements, swapping them if necessary.
The outer loop controls the number of passes over the array, and the inner loop compares and swaps elements until the array is sorted.
The array is sorted in ascending order using the bubble sort algorithm, and the program exits when all elements are sorted.


### Observation - Single Cycle

### Observation - 5 Stage


### Memory Mapping

### Register Mapping


### Snapshot


# Program 2 
### Statement: Write an assembly program to calculate the factorial of a number with & without recursion

a. without recursion
### Name of file:
p2norec.s

### Observation - Explanation
a.       Load the number (n = 5) into register x6.
    Initialize the result (x7 = 1) and the loop index (x8 = 1).
    Loop: Multiply the result (x7) by the current index (x8), increment x8, and repeat until x8 reaches or exceeds n. Finally, store the result (x7) in memory.

The loop multiplies the running total by each integer from 1 to n to compute the factorial.


### Observation - Single Cycle

### Observation - 5 Stage




# Program 3: 
### Statement:Write an assembly program to do matrix multiplication

### Name of file:
p3.s

### Observation - Explanation
This assembly program multiplies two 2x2 matrices (A and B) and stores the result in matrix C:

    It loads elements from matrices A and B, computes the corresponding sums of products for each element of matrix C, and stores the results.
    The calculations are done for each element of matrix C using the formula C[i,j] = A[i,0]*B[0,j] + A[i,1]*B[1,j].
    After all elements are computed, the result is stored in memory at the address of matrix C.




### Observation - Single Cycle

### Observation - 5 Stage


