# Program 1: 
### Statement:Write an assembly program to check if a number is a 2 out of 5 number

### Name of file:
p1.s

### Observation - Explanation
The program loads a 32-bit hexadecimal value and counts the number of 1 bits in its binary form.
It loops through each bit of the number, shifting it right and checking if it's 1.
If exactly two bits are set to 1, the program sets x10 to 1, indicating it's a 2-out-of-5 number; otherwise, it sets x10 to 0.

### Observation - Single Cycle
![Untitled](https://github.com/user-attachments/assets/bb4420f2-ef3c-4db3-a2ba-a0269fd17e7f)



### Observation - 5 Stage
![Untitled](https://github.com/user-attachments/assets/1a592e3e-51ed-493a-85f3-7c2724cea00c)







# Program 2: 
### Statement:Write an assembly program to encode a number using Hamming code.

### Name of file:
p2.s

### Observation - Explanation
The program loads a 4-bit number and extracts its individual bits (d1, d2, d3, d4).
It calculates three parity bits (p1, p2, p3) based on the data bits using XOR operations.
The program combines the data bits and parity bits into a 7-bit Hamming code and exits.

### Observation - Single Cycle
![Untitled](https://github.com/user-attachments/assets/29ac339a-0e98-4787-8697-8e1928cf5be1)


### Observation - 5 Stage

![Untitled](https://github.com/user-attachments/assets/65bee3c7-0b65-4c67-b851-8501630a7020)



