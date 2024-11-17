# Program 1: 
### Statement:Write an assembly program to check if a number is a 2 out of 5 number

### Name of file:
p1.s

### Observation - Explanation
The program loads a 32-bit hexadecimal value and counts the number of 1 bits in its binary form.
It loops through each bit of the number, shifting it right and checking if it's 1.
If exactly two bits are set to 1, the program sets x10 to 1, indicating it's a 2-out-of-5 number; otherwise, it sets x10 to 0.

### Observation - Single Cycle
![image](https://github.com/user-attachments/assets/157e1d70-549e-4474-9e52-f5e83a8f9015)




### Observation - 5 Stage

![image](https://github.com/user-attachments/assets/16d30959-0831-4d21-93fd-f0b716408575)







# Program 2: 
### Statement:Write an assembly program to encode a number using Hamming code.

### Name of file:
p2.s

### Observation - Explanation
The program loads a 4-bit number and extracts its individual bits (d1, d2, d3, d4).
It calculates three parity bits (p1, p2, p3) based on the data bits using XOR operations.
The program combines the data bits and parity bits into a 7-bit Hamming code and exits.

### Observation - Single Cycle
![image](https://github.com/user-attachments/assets/8e4ec4c3-8a95-4040-9a74-9f77079bb97c)



### Observation - 5 Stage

![image](https://github.com/user-attachments/assets/227bf205-58eb-4dbe-85ea-75453661b56f)




