# Program 1: 
### Statement: Write an assembly program to check whether a given number in an array of elements is divisible by 9

### Name of file:
PES2UG22EC115_Week5_Lab.s

### Observation - Explanation
- We define an array of numbers (18, 27, 20, 45, 81) and store its size (5).We load the base address of the input array and the results array and initialize a loop counter variable i to 0.
- The code performs a modulus calculation for each array element:
    It loads the current array element into a register.
    It performs a modulus operation to check if the element is divisible by 9.
    It stores the result (1 if divisible, 0 if not) in the corresponding results array element.
- The code increments the loop counter and jumps back to the beginning of the loop until all array elements have been processed.
- Finally, the code enters an infinite loop to halt the program execution.
### Observation - Single Cycle
- **Cycles:** 143
- **Frequency:** 207.30 mHz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 217 
- **Frequency:** 209.60 mHz
- **CPI:** 1.53
- **IPC:** 0.654

### Memory Mapping
- **0x10000000:** `0x00000012`
- **0x10000004:** `0x0000001b`
- **0x10000008:** `0x00000014`
- **0x1000000c:** `0x0000002d`
- **0x10000010:** `0x00000051`
- **0x10000014:** `0x00000005`
- **0x10000018:** `0x00000001`
- **0x1000001c:** `0x00000001`
- **0x10000020:** `0x00000000`
- **0x10000024:** `0x00000001`
- **0x10000028:** `0x00000001`

### Register Mapping
- **x5:** `0x00000005`
- **x6:** `0x00000010`
- **x7:** `0x10000010`
- **x10:** `0x10000000`
- **x11:** `0x00000005`
- **x12:** `0x10000018`
- **x28:** `0x00000051`
- **x29:** `0x00000009`
- **x30:** `0x10000028`
- **x31:** `0x00000001`


### Snapshot


# Program 2: 
### Write an Assembly Program for the following C code:
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...};
	unsigned short int b[11] = {0x1234, 0x5678, ...};
	unsigned short int c[11] = {0x1234, 0x5678, ...};
	for(i = 0; i < 10; i++)
	{
		c[i] = a[i] * b[i] + c[i-1];
	}

### Name of file:
PES2UG22EC115_Week5_Lab.s

### Observation - Explanation
- Array Initialization and Setup: The program loads the base addresses of the arrays a, b, and c into registers s0, s1, and s2, respectively. It initializes the loop counter i (in t0) to 0 to start iterating over the arrays.

- Loop Control: The loop runs as long as i is less than 10 (bge t0, t1, loop_end), where t1 is set to 10 as the loop's upper bound. If i reaches 10, the program jumps to loop_end to terminate.

- Element Access and Computation: The program calculates the addresses for a[i] and b[i], loads their values into t3 and t4, and computes a[i] * b[i] into t5. If i > 0, it adds c[i-1] to t5 to compute the result c[i] = a[i] * b[i] + c[i-1].

- Storing and Loop Continuation: The result in t5 is stored into c[i] using the address calculated with t2. The loop counter i (t0) is incremented, and the program jumps back to loop_start to continue the process until i reaches 10. The program then enters an infinite loop at loop_end.

### Observation - Single Cycle
- **Cycles:** 143
- **Frequency:** 207.30 mHz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 217 
- **Frequency:** 209.60 mHz
- **CPI:** 1.53
- **IPC:** 0.654

### Memory Mapping
- **0x10000000:** `0x00000012`
- **0x10000004:** `0x0000001b`
- **0x10000008:** `0x00000014`
- **0x1000000c:** `0x0000002d`
- **0x10000010:** `0x00000051`
- **0x10000014:** `0x00000005`
- **0x10000018:** `0x00000001`
- **0x1000001c:** `0x00000001`
- **0x10000020:** `0x00000000`
- **0x10000024:** `0x00000001`
- **0x10000028:** `0x00000001`

### Register Mapping
- **x5:** `0x00000005`
- **x6:** `0x00000010`
- **x7:** `0x10000010`
- **x10:** `0x10000000`
- **x11:** `0x00000005`
- **x12:** `0x10000018`
- **x28:** `0x00000051`
- **x29:** `0x00000009`
- **x30:** `0x10000028`
- **x31:** `0x00000001`