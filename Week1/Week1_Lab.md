# Program 1: 
### Statement: <Write an Assembly Program for addition of 2 words>

### Name of file:
<Enter adding2words.s>

### Observation - Single Cycle
- <Write 
1.reading 2 words with base address as a and offest of them are 0 and 4 respectively
2.Loading the adddress of a in x5 register
3.loading the second word into x7 register, adding the two words in x6,x7 and storing it in x8
4.now storing back the value in x8 to the next successive location in data memory>
 
### Register Mapping
- **<Register Number Used x5,x6,x7,x8>:** <Value 0x10000000,0x00000001, 0x123456ab, 0x123456ac>

### Data Mapping
- **<Memory Address 0x10000000 , 0x10000004,0x10000008 >:** <Value 0x00000001, 0123456ab, 0x123456ac>


---------------------------------------------------------------------------------------------------------------------------------------------------------------

# Program 2: 
### Statement: <Write an Assembly Program for addition of 2 half words>

### Name of file:
<Enter adding2halfwords.s>

### Observation - Single Cycle
- <Write 
1. Creating 2 halfwords with base address as a and offest of them are 0 and 2 respectively
2. loading the adddress of a in x5 register,loading the first halfword into first 2 bytes of x6 register
3. loading the second halfword into first 2 bytes of x7 register, adding the two halfwords in x6,x7 and storing it in x8
4. now storing back the value in x8 to the next successive location in data memory with offset 4.>
 
### Register Mapping
- **<Register Number Used x5,x6,x7,x8>:** <Value 0x10000000,0x0000001, 0x00001234, 0x00001235>

### Data Mapping
- **<Memory Address 0x10000000, 0x10000004>:** <Value 0x12340001, 0x00001235>


-----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Program 3: 
### Statement: <Write an Assembly Program for addition of 2 bytes>

### Name of file:
<Enter adding2bytes.s>

### Observation - Single Cycle
- <Write 
1. creating 2 words with base address as a and offest of them are 0 and 4 respectively
2. loading the adddress of a in x5 register
3. loading the first byte into 1 byte of x6 register
4. loading the second byte into 1 byte ofx7 register
5. adding the two bytes in x6,x7 and storing it in x8
6. now storing back the value in x8 to the next successive location in data memory with offset 2.

### Register Mapping
- **<Register Number Used x5,x6,x7,x8>:** <Value 0x10000000, 0x00001201, 0x00000012, 0x00001213>

### Data Mapping
- **<Memory Address 0x10000000>:** <Value 0x12131201>


----------------------------------------------------------------------------------------------------------------------------------------------------------------

# Program 4: 
### Statement: <Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types>

### Name of file:
<Enter analysis_of_signed_and_unsigned.s>

### Observation - Single Cycle
- <Write 
1. creating a variable of type halfword
2. creating a variable of byte type
3. loading base address of a in x5
4. loading base address of b in x6
5. loading -1 as an unsigned number of type halfword: it gets stored as 0x0000ffff
6. loading 5 as an unsigned number of type byte: it gets stored as 0x00000005
7. loading -1 as a singned number of type halfword: it gets stored as 0xffffffff
8. loading 5 as a signed number of type byte:  it gets stored as 0x00000005

### Register Mapping
- **<Register Number Used x5,x6,x7,x8,x9,x10>:** <Value 0x10000000, 0x00000002, 0x0000ffff, 0x00000005, 0xfffffffff, 0x00000005>

### Data Mapping
- **<Memory Address 0x10000000>:** <Value 0x0005ffff>

