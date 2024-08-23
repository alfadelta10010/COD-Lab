# Program 4:


### Statement:
Write an assembly program that performs arithmetic operations on signed and unsigned words, half-words, and bytes, and stores the results back in memory.

### Name of file:
add_format_analysis.s

### Observation - Single Cycle
	•	The program loads two 32-bit words from memory (a[0] and a[1]), adds them, and stores the result in a[2].
	•	The program loads two 16-bit signed half-words from memory (b[0] and b[1]), adds them, and stores the result in b[2].
	•	The program loads two 8-bit signed bytes from memory (c[0] and c[1]), adds them, and stores the result in c[2].
Register Mapping
	•	x10: Base address of array a or b
	•	x11: Base address of array c
	•	x2: Value stored in a[0] (0x80000112)
	•	x3: Value stored in a[1] (0x9123456C)
	•	x12: Value stored in b[0] (0x8002) or c[0] (0x82)
	•	x13: Value stored in b[1] (0x456A) or c[1] (0x6A)
	•	x14: Result of addition operations
Data Mapping
	•	a[0]: 0x80000112
	•	a[1]: 0x9123456C
	•	a[2]: Result of 0x80000112 + 0x9123456C = 0x000000f8
	•	b[0]: 0x8002
	•	b[1]: 0x456A
	•	b[2]: Result of 0x8002 + 0x456A 
	•	c[0]: 0x82
	•	c[1]: 0x6A
	•	c[2]: Result of 0x82 + 0x6A (stored in c[2])

