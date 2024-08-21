# Program 1: 
### Statement: <Write an Assembly Program for addition of 2 words>

### Name of file:
<Enter adding2words.s>

### Observation - Single Cycle
- <Write 
1.reating 2 words with base address as a and offest of them are 0 and 4 respectively
2.Loading the adddress of a in x5 register
3.loading the second word into x7 register, adding the two words in x6,x7 and storing it in x8
4.now storing back the value in x8 to the next successive location in data memory>
 
### Register Mapping
- **<Register Number Used>:** <Value x6,x7,x8>

### Data Mapping
- **<Memory Address>:** <Value x5>


-------------------------------------------------------------------

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
- **<Register Number Used>:** <Value x6,x7,x8>

### Data Mapping
- **<Memory Address>:** <Value x5>


-------------------------------------------------------------------


