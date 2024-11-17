# Program 1: 
### Statement: <Write an assembly program to find whether a given string is a palindrome or not, using stack operations>

### Name of file:
<program1.s>

### Observation - Explanation
- In this code we are comparing value stored in the first and last index
- We compare the value in the first iteration and if the value is not same, we declare it is not a palindrome
- If the values are same, we move to the next iteration by incrementing te postion of the first index and dcrementin the position of the last index.

### Observation - Single Cycle
- **Cycles:** <32> 
- **Frequency:** <7.91 Hz>
- **CPI:** <1>
- **IPC:** <1>

### Observation - 5 Stage
- **Cycles:** <48> 
- **Frequency:** <37.18 Hz>
- **CPI:** <1.5>
- **IPC:** <0.667>

### Memory Mapping
- **<Register Number Used>:** <Value Stored>

### Register Mapping
- **<Register Number Used>:** <Value stored>

### Snapshot
!<palindrome SC.png>
<palindrome 5S.png>


# Program 1: 
### Statement: <Write an assembly program to search a given number in an array>

### Name of file:
<program2.s>

### Observation - Explanation
- In this code, we search if a given number is present in an array
- In the first, we have the index of the array and we comparpare the value of the first index with the required number to be compared
- Like this, we run through the entire array and see if the required number is present in the array.

### Observation - Single Cycle
- **Cycles:** <29> 
- **Frequency:** <15.03 Hz>
- **CPI:** <1>
- **IPC:** <1>

### Observation - 5 Stage
- **Cycles:** <44> 
- **Frequency:** <26.3 Hz>
- **CPI:** <1.52>
- **IPC:** <0.659>

### Memory Mapping
- **<Register Number Used>:** <Value Stored>

### Register Mapping
- **<Register Number Used>:** <Value stored>

### Snapshot
!<linear search SC.png>
<linear search 5S.png>



