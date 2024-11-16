# Program 1
### Statement: Write an Assembly Program for:

    addition of N words
    addition of N half words
    addition of N bytes


### Name of file:
p1.s

### Observation - Explanation
    The program loads two numbers for each type (word, half-word, and byte) from memory.
    It adds the numbers for each type and stores the results in registers (x9, x10, and x11).
    The program ends after performing all three additions.



### Observation - Single Cycle
![image](https://github.com/user-attachments/assets/10308854-26fc-455c-9432-17a9e4eab713)



### Observation - 5 Stage
![image](https://github.com/user-attachments/assets/7f85c400-df84-4027-8a80-9fa6e15e51d8)


### Memory Mapping
![image](https://github.com/user-attachments/assets/b0d0801c-ff51-490d-981f-e94dfb800049)


### Register Mapping
![image](https://github.com/user-attachments/assets/90f72ee6-a8ff-4ba1-af66-2eaf15275e05)




# Program 2: 
### Statement:Write an Assembly program for calculating x = (y + m) - (L - D) + (Z + C) - D, where x, y, m, L, D, Z, C are elements of 32-bits wide

### Name of file:
p2.s

### Observation - Explanation
The program loads all values (y, m, L, D, Z, C) into registers.
It computes each part of the equation step-by-step and combines them in the correct order.
The result x is stored in register x15 before the program exits.

### Observation - Single Cycle
![image](https://github.com/user-attachments/assets/a9c69b28-753b-4602-a0c2-1172f9bee4f0)


### Observation - 5 Stage
![image](https://github.com/user-attachments/assets/acb2030d-9cf9-4e43-86df-90e1f4931602)


### Memory Mapping
![image](https://github.com/user-attachments/assets/3cc4fff6-7647-4217-a0c9-3053c8c9e89d)


### Register Mapping
![image](https://github.com/user-attachments/assets/545b2444-7265-4856-9f74-5af87735eff2)





