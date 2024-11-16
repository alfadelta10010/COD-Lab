# Program 1: 
### Statement: Convert a 32-bit value from Little Endian to Big Endian format using RISC-V assembly

### Name of file:
p1.s

### Observation - Explanation
The program loads the number 0x12345678 from memory into the register x10.
It extracts each byte from the number and moves them to their new positions for big-endian format.
It combines the rearranged bytes to create the final big-endian number in x9.


### Observation - Single Cycle
![image](https://github.com/user-attachments/assets/3cd22d24-7fb8-46b0-b73e-d8b0d426c5f3)


### Observation - 5 Stage
![image](https://github.com/user-attachments/assets/1db3acd0-02d1-4dc3-881f-7c0c039b7e02)


### Memory Mapping

- ![image](https://github.com/user-attachments/assets/b13122ab-8cc8-4ab8-87d2-5ce814eccb9b)
  

### Register Mapping
![image](https://github.com/user-attachments/assets/be97ad7a-f178-4abe-acba-530a440909e3)

 





# Program 2: 
### Statement:Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of file:
p2.s

### Observation - Explanation
The program loads the low and high 32 bits of two 64-bit numbers into registers.
It adds the low parts, checks for a carry, and then adds the high parts including the carry.
The result is stored as the low 32 bits in one register and the high 32 bits in another.

### Observation - Single Cycle
![image](https://github.com/user-attachments/assets/66ecf933-7f0e-4325-85f6-39beedd0dad1)


### Observation - 5 Stage
 ![image](https://github.com/user-attachments/assets/1446e664-bd7c-49a1-bf36-f73f13a6ef9d)


### Memory Mapping
![image](https://github.com/user-attachments/assets/36677c84-01b2-44d3-a322-cd3b447424dd)


### Register Mapping
![image](https://github.com/user-attachments/assets/a52b5849-b0f0-45a1-a8f0-7da660e2c312)







