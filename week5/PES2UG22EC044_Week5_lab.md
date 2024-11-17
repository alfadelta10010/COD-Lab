# Program 1: 
### Statement: Write an assembly program to check whether a given number in an array of elements is divisible by 9

### Name of file:
div_by_9

### Observation - Explanation
	•	The program initializes a number (36) and a divisor (9) in registers  x5  and  x6 , respectively.
	•	It calculates the remainder of the number divided by the divisor using the rem instruction and stores it in  x7 .
	•	If the remainder is 0, the program sets  x10  to 1 (indicating divisibility). Otherwise,  x10  is set to 0.

### Observation - Single Cycle
	•	Cycles: 10 
	•	Frequency: 1 GHz 
	•	CPI: 1 
	•	IPC: 1 

### Observation - 5 Stage
	•	Cycles: 8 
	•	Frequency: 1 GHz 
	•	CPI: 1.5 
	•	IPC: 1 

### Memory Mapping
	•	0x00000004 : 36
	•	0x00000008 : 9

### Register Mapping
	•	x5: 36
	•	x6: 9 
	•	x7: 0 
	•	x10: 1 

### Snapshot
<img width="978" alt="Screenshot 2024-11-15 at 22 04 02" src="https://github.com/user-attachments/assets/3306f5ed-a4d0-47f6-83a1-3f79d2d8b882">


# Program 2: 
### Statement: Write an Assembly Program for the following C code

### Name of file:
C_to_assem.md

### Observation - Explanation
	•	The program initializes three arrays (a, b, and c) and iterates through their elements using a loop.
	•	For each index i, it calculates c[i] by multiplying the corresponding elements of a and b and adding c[i-1].
	•	The result is stored in the array c for each iteration, with boundary conditions handled for i=0.

### Observation - Single Cycle
	•	Cycles: 35 
	•	Frequency: 1 GHz 
	•	CPI: 1.0 
	•	IPC: 1.0 

### Observation - 5 Stage
	•	Cycles: 30 
	•	Frequency: 1 GHz 
	•	CPI: 1.5 
	•	IPC: 0.9 

### Memory Mapping
	•	0x00000000 (a[0]): 0x1234
	•	0x00000002 (a[1]): 0x5678
	•	0x00000010 (b[0]): 0x1234
	•	0x00000012 (b[1]): 0x5678
	•	0x00000020 (c[0]): 0x1234
	•	0x00000022 (c[1]): 0x0007

### Register Mapping
	•	x5: Base address of array a
	•	x6: Base address of array b
	•	x7: Base address of array c
	•	x10: Loop counter  i 
	•	x11: Value of  a[i] 
	•	x12: Value of  b[i] 
	•	x13: Result of  a[i] * b[i] 
	•	x14: Value of  c[i-1]  

### Snapshot
<img width="962" alt="Screenshot 2024-11-15 at 22 21 01" src="https://github.com/user-attachments/assets/e0e91a7e-b415-4bdc-a973-9c1cc5a74eac">
