# Program 1: 
### Statement: Write an assembly program to find whether a given string is a palindrome or not, using stack operations


### Name of file:   
       week4pal.s
     

### Observation - Explanation
String Length Calculation: The program calculates the length of the given string by traversing it until the null terminator.
Stack-Based Comparison: It pushes the characters of the string onto the stack and then pops them while comparing with the 
                        original string to check if it reads the same backward.
Palindrome Check Result: Based on the comparison, it outputs whether the string is a palindrome or not.

Step 1: Find the length of the string
Step 2: Push all characters onto the stack
Step 3: Compare the string with popped stack characters
Step 4: Output the result



# Program 2: 
### Statement: Write an assembly program to search a given number in an array


### Name of file:   
       week4ii.s
     

### Observation - Explanation
Initialization: The program begins by loading the base address of the array, the length of the array, and the search key into registers, setting up for the search operation.
Search Execution: It enters a loop where it sequentially compares each element of the array with the search key until it either finds a match or reaches the end of the array, 
                  at which point it determines if the key was found.
Result Storage: If the key is found, the program stores the index of that element in a designated result variable; if not found, it stores -1 to indicate that the key does 
                 not exist in the array.

