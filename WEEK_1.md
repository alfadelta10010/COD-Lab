# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words


### Name of file:
- lab1Q1.txt

### Observation - Single Cycle
- We have given the two words of program as 0x12345678,0x12344321 which is under .data along with array 'a' defined as .word .
- then under .text the program loads the address of array 'a' to x10 register and loads the data with lw command in the address in x11 and x12 , x11 is loaded with the data from 0 to 3 bytes and x12 is loaded with 4 to 7 bytes .
- Then add command adds the two words are store it in the x13 register to 4 bytes from 8 to 11. sw command stores the x13 data in memory of x10 
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x12345678
- **x12:** 0x12344321
- **x13:** 0x24689999

### Data Mapping
## .data
- **0x10000008:** 0x24689999
- **0x10000004:** 0x12344321
- **0x10000000:** 0x12345678
## .text
- **0x00000018:** 0x00000000
- **0x00000014:** 0x00d52423
- **0x00000010:** 0x00c586b3
- **0x0000000C:** 0x00452603
- **0x00000008:** 0x00052583
- **0x00000004:** 0x00050513
- **0x00000000:** 0x10000517

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words


### Name of file:
- lab1Q2.txt

### Observation - Single Cycle
- We have given the two half words of program as 0x1234,0x0023 which is under .data along with array 'a' defined as .word .
- then under .text the program loads the address of array 'a' to x10 register and loads the data with lw command in the address in x11 and x12 , x11 is loaded with the data from 0 to 3 bytes and x12 is loaded with 4 to 7 bytes .
- Then add command adds the two half words are store it in the x13 register to 4 bytes from 8 to 11. sw command stores the x13 data in memory of x10 
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x00001234
- **x12:** 0x00000023
- **x13:** 0x00001257

### Data Mapping
## .data
- **0x10000004:** 0x00001257
- **0x10000000:** 0x00231234
## .text
- **0x00000018:** 0x00000000
- **0x00000014:** 0x00d51223
- **0x00000010:** 0x00c586b3
- **0x0000000C:** 0x00251603
- **0x00000008:** 0x00051583
- **0x00000004:** 0x00050513
- **0x00000000:** 0x10000517

# Program 3: 
### Statement: Write an Assembly Program for addition of 2 bytes


### Name of file:
- lab1Q3.txt

### Observation - Single Cycle
- We have given the two words of program as 0xff,0xee which is under .data along with array 'a' defined as .word .
- then under .text the program loads the address of array 'a' to x10 register and loads the data with lw command in the address in x11 and x12 , x11 is loaded with the data from 0 to 3 bytes and x12 is loaded with 4 to 7 bytes .
- Then add command adds the two words are store it in the x13 register to 4 bytes from 8 to 11. sw command stores the x13 data in memory of x10 
 
### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x000000ff
- **x12:** 0x000000ee
- **x13:** 0x000001ed

### Data Mapping
## .data
- **0x10000004:** 0x00000000
- **0x10000000:** 0x00edeeff
## .text
- **0x00000018:** 0x00000000
- **0x00000014:** 0x00d50123
- **0x00000010:** 0x00c586b3
- **0x0000000C:** 0x00154603
- **0x00000008:** 0x00054583
- **0x00000004:** 0x00050513
- **0x00000000:** 0x10000517

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types


### Name of file:
- lab1Q4b.txt , lab1Q4h.txt

### Observation - Single Cycle
- We have given the two half words of program as 0x76ef,0x0101 and the two byte of program as 0x0e,0x05 which is under .data along with array 'a' defined as .word .
- then under .text the program loads the address of array 'a' to x10 register and loads the data with lw command in the address in x11 and x12 , x11 is loaded with the data from 0 to 3 bytes and x12 is loaded with 4 to 7 bytes .
- Then add command adds the two  half words and two bytes are store it in the x13 register to 4 bytes from 8 to 11. sw command stores the x13 data in memory of x10 
 
### Register Mapping
- **x10:** 0x10000000   0x10000000
- **x11:** 0x000076ef   0x0000000e
- **x12:** 0x00000101   0x00000005
- **x13:** 0x000077f0   0x00000013

### Data Mapping
## .data
- **0x10000004:** 0x000076ef   0x00000000 
- **0x10000000:** 0x010176ef   0x0013050e
## .text
- **0x00000018:** 0x00000000   0x00000000
- **0x00000014:** 0x00b52223   0x00d50123
- **0x00000010:** 0x00c586b3   0x00c586b3
- **0x0000000C:** 0x00251603   0x00150603
- **0x00000008:** 0x00051583   0x00050583
- **0x00000004:** 0x00050513   0x00050513
- **0x00000000:** 0x10000517   0x10000517
[lab1Q4h.txt](https://github.com/user-attachments/files/16746230/lab1Q4h.txt)
[lab1Q4b.txt](https://github.com/user-attachments/files/16746225/lab1Q4b.txt)
[lab1Q3.txt](https://github.com/user-attachments/files/16746219/lab1Q3.txt)
[lab1Q2.txt](https://github.com/user-attachments/files/16746212/lab1Q2.txt)
[lab1Q1.txt](https://github.com/user-attachments/files/16746211/lab1Q1.txt)
