# Program 1: 
### Statement: Write an assembly program to find whether a given string is a palindrome or not, using stack operations

### Name of file:
week4_1.s

### Observation - Explanation
->This RISC-V assembly program checks if the string "racecar" is a palindrome by leveraging stack operations to store and retrieve values for comparison. 
->The strcpy block pushes values onto the stack, and during execution, the func block compares characters from the start and end of the string using the stack to reverse the order. ->If all pairs match, 1 (palindrome) is written to outputYn; otherwise, 0 (not palindrome) is written.

### Observation - Single Cycle
- **Cycles:** 24
- **Frequency:** 10.31 Hz 
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 32
- **Frequency:** 11.76 Hz
- **CPI:** 1.33
- **IPC:** 0.75

### Memory Mapping
0x10000000: 0x65636172
0x10000004: 0x00726163
0x10000008: 0x00000001

### Register Mapping
x1: 0x00000044
sp: 0x7fffffec
x5: 0x00000072
x6: 0x00000072
x7: 0x00000061
x18: 0x10000000
x19: 0x10000008
x25: 0x00000001
x28: 0x00000063
x29: 0x00000065
x30: 0x00000063
x31: 0x00000061

### Snapshot
(program4_1.png)


# Program 2: 
### Statement: Write an assembly program to search a given number in an array

### Name of file:
week4_2.s

### Observation - Explanation
->This RISC-V assembly program searches for a specific number in an array by iterating through the array elements. 
->The number to be searched is loaded into x16, and each array element is compared against it in a loop. 
->If the number is found, the program sets x25 to 1; if the loop completes without finding the number, it exits without setting x25.

### Observation - Single Cycle
- **Cycles:** 17
- **Frequency:** 9.17 Hz
- **CPI:** 1
- **IPC:** 1

### Observation - 5 Stage
- **Cycles:** 27
- **Frequency:** 10.42 Hz
- **CPI:** 1.59
- **IPC:** 0.63

### Memory Mapping
0x10000000: 0x01223113
0x10000004: 0x45362727
0x10000008: 0x33434343
0x1000000c: 0x11211212
0x10000010: 0x45362727

### Register Mapping
x10: 0x10000004
x11: 0x10000010
x12: 0x45362727
x16: 0x45362727
x20: 0x00000004
x25: 0x00000001
x27: 0x00000001


### Snapshot
(program4_2.png)

