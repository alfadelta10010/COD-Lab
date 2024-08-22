# Program 1: 
### Statement: 
Write an Assembly Program for addition of 2 words
### Name of file:
adding_2_words.s
### Observation - Single Cycle
 In this assembly program we first load values into register x11 and x12 using lw function with register x10 holding the base address.
 We add the values in register x11 and x12 using the add function and store it in register x13 using sw function.
 We can observe that each memory address has an offset of 4 as a word has a size of 4 bytes
### Register Mapping
- **<Register Number Used>:** <Value stored>
-	x10			0x10000000
-	x11			0x00000001
-	x12			0x12345678
-	x13			0x12345679
### Data Mapping
- **<Memory Address>:** <Value stored>
-	0x10000000	0x00000001	0x01	0x00	0x00	0x00
-	0x10000004	0x12345678	0x78	0x56	0x34	0x12
-	0x10000008	0x12345679	0x79 	0x56	0x34	0x12


# Program 2: 
### Statement: 
Write an Assembly Program for addition of 2 half words
### Name of file:
adding_2_half_words.s
### Observation - Single Cycle
 In this assembly program we first load values into register x11 and x12 using lh function with register x10 holding the base address.
 We add the values in register x11 and x12 using the add function and store it in register x13 using sh function.
 We can observe that each memory address has an offset of 2 as a half word has a size of 2 bytes.
### Register Mapping
- **<Register Number Used>:** <Value stored>
-	x10			0x10000000
-	x11			0x00001234
-	x12			0x00001111
-	x13			0x00002345
### Data Mapping
- **<Memory Address>:** <Value stored>
-	0x10000000	0x11111234	0x34	0x12	0x11	0x11
-	0x10000004	0x00002345	0x45	0x23	0x00	0x00


# Program 3: 
### Statement:
Write an Assembly Program for addition of 2 bytes
### Name of file:
adding_2_bytes.s
### Observation - Single Cycle
 In this assembly program we first load values into register x11 and x12 using lb function with register x10 holding the ba>
 We add the values in register x11 and x12 using the add function and store it in register x13 using sb function.
 We can observe that each memory address has an offset of 1 as a byte has a size of 1 bytes. 
### Register Mapping
- **<Register Number Used>:** <Value stored>
-	x10			0x10000000
-	x11			0X00000003
-	X12			0X00000001
-	X13			0X00000004
### Data Mapping
- **<Memory Address>:** <Value stored>
-	0X10000000	0X00040103	0X03	0X01	0X04	0x00
-	0x10000000	0x00000000	0x00	0x00	 -	 -   



# Program 4: 
### Statement:<Enter the program statement>
Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
### Name of file:
<Enter the name of the file where your code is stored>
lab1_4.s
### Observation - Single Cycle
- <Write 3 statements explaining what the assembly program is doing>
 In the program for signed half word there is an offset of 2 and and the data will have fffff at the  msb.
 For the unsigned byte word there is an offset of 1 and the data will have 0 at the msb
### Register Mapping
- **<Register Number Used>:** <Value stored>
-For half signed
-	x10			0x10000000
-	x11			0xfffffffd
-	x12			0x00000001
-	x13			0xfffffffe

-For byte unsigned
-       x10                     0x10000000
-       x11                     0x000000fd
-       x12                     0x00000001
-       x13                     0x000000fe
### Data Mapping
- **<Memory Address>:** <Value stored>
-For half signed
-	0x10000000	0x0000fffd	0xfd	0xff	0x00	0x00
-	0x10000004	0x0000fffe	0xfe	0xff	0x00	0x00

-For byte unsigned
-       0x10000000      0x00fe01fd      0xfd    0x01    0xfe    0x00
-       0x10000004      0x00000000      0x00    0x00     -        -
