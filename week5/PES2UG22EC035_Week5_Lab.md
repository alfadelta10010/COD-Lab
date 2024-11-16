# Program 1: 
### Statement:Write an assembly program to check whether a given number in an array of elements is divisible by 9

### Name of file:
p1.s

### Observation - Explanation
 The program iterates through the array and checks if each element is divisible by 9 using the remainder operation.
If an element is divisible by 9 (remainder is 0), it sets x10 to 1, otherwise, it sets x10 to 0.
The program exits after checking all elements, with the result stored in x10.



### Observation - Single Cycle

### Observation - 5 Stage


### Memory Mapping

### Register Mapping


### Snapshot



# Program 2: 
### Statement: Write an Assembly Program for the C code

### Name of file:
p2.s

### Observation - Explanation
The program initializes an index (i) and iterates over arrays a, b, and c to compute c[i] = a[i] * b[i] + c[i-1], with the first element of c starting from 0.
It performs multiplication of a[i] and b[i] using a bit-shifting method (since mul is not available in the RV32I instruction set), and adds the previous value of c[i-1] to get the result.
The result is then stored back in c[i], and the loop continues until all elements of the arrays have been processed.



### Observation - Single Cycle

### Observation - 5 Stage


### Memory Mapping

### Register Mapping

### Snapshot
