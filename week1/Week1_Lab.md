# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words


### Name of file:
-lab1_Q1.txt

### Observation - Single Cycle
- We have given the two words of program as 0x12345678,0x98765432 which is under .data along with array 'a' defined as .word .
- then under .text the program loads the address of array 'a' to x10 register and loads the data with lw command in the address in x11 and x12 , x11 is loaded with the data from 0 to 3 bytes and x12 is loaded with 4 to 7 bytes .
- Then add command adds the two words are store it in the x13 register to 4 bytes from 8 to 11. sw command stores the x13 data in memory of x10 

### Register Mapping
- **x10:** 0x10000000
- **x11:** 0x12345678
- **x12:** 0x98765432
- **x13:** 0xaaaaaaaa

### Data Mapping
## .data
- **0x10000008:** 0xaaaaaaaa
- **0x10000004:** 0x98765432
- **0x10000000:** 0x12345678

# Program 2:
### Statement: Write an Assembly Program for addition of 2 half words


### Name of file:
-lab1_Q2.txt

### Observation - Single Cycle
- We have given the two half words of program as 0x6543,0x0008 which is under .data along with array 'a' defined as .word .
- then under .text the program loads the address of array 'a' to x10 register and loads the data with lh command in the address in x11 and x12 , x11 is loaded with the data from 0 to 3 bytes and x12 is loaded with 4 to 7 bytes .
- Then add command adds the two half words are store it in the x13 register to 4 bytes from 8 to 11. sw command stores the x13 data in memory of x10

### Register Mapping
-**0x00000018:**0x00000000
-**0x00000014:**0x00d51223
-**0x00000010:**0x00c586b3
-**0x0000000c:**0x00251603
-**0x00000008:**0x00051583
-**0x00000004:**0x00050513
-**0x00000000:**0x10000517

### Data mapping
## .data
-**0x10000004:**0x0000654b
-**0x10000000:**0x00086543

# Program 3:
### Statement: Write an Assembly Program for addition of 2 bytes


### Name of file:
-lab1_Q3.txt

### Observation - Single Cycle
- We have given the two words of program as 0xff,0xee which is under .data along with array 'a' defined as .word .
- then under .text the program loads the address of array 'a' to x10 register and loads the data with lw command in the address in x11 and x12 , x11 is loaded with the data from 0 to 3 bytes and x12 is loaded with 4 to 7 bytes .
- Then add command adds the two words are store it in the x13 register to 4 bytes from 8 to 11. sw command stores the x13 data in memory of x10

### Register Mapping
-**0x00000018:**0x00000000
-**0x00000014:**0x00d50123
-**0x00000010:**0x00c586b3
-**0x0000000c:**0x00150603
-**0x00000008:**0x00050583
-**0x00000004:**0x00050513
-**0x00000000:**0x10000517

### Data mapping
### .data
-**0x10000004:**0x00000000
-**0x10000000:**0x00883355

# Program 4:
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types


### Name of file:
-lab1_Q4.txt

### Observation - Single Cycle
- We have given the two half words of program as 0x76ef,0x0101 and the two byte of program as 0x0e,0x05 which is under .data along with array 'a' defined as .word .
- then under .text the program loads the address of array 'a' to x10 register and loads the data with lw command in the address in x11 and x12 , x11 is loaded with the data from 0 to 3 bytes and x12 is loaded with 4 to 7 bytes .
- Then add command adds the two  half words and two bytes are store it in the x13 register to 4 bytes from 8 to 11. sw command stores the x13 data in memory of x10

### Register Mapping
-**0x00000010:**0x00000000
-**0x0000000c:**0x00b51123
-**0x00000008:**0x00051583
-**0x00000004:**0x00050513
-**0x00000000:**0x10000517

### Data mapping
### .data
-**0x10000004:**0x00000000
-**0x10000000:**0x80008000


