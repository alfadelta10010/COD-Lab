# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
-Loading the address of a into register x10
-Loading the word (0x80001234) into register x5
-Loading the word (0x90000123) into register x6
-Adding the two words in x5 and x6 and then storing the result in x13

### Register Mapping
-**x5:** 0x00001234
-**x6:** 0x00000123
-**x13:** 0x00001357

### Data Mapping            //check under Hex
-**0x10000008:** 0x00001357
-**0x10000004:** 0x00000123
-**0x10000000:** 0x10001234

//////////////////////////////////////////////////////////////////////////////////////////////


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
-Loading the address of a into register x11
-Loading the word into register x9
-Loading the word into register x10
-Adding the two half words in x9 and x10 and then storing the result in x12

### Register Mapping
-**x9:** 0x00001234
-**x10:** 0x00001000
-**x12:** 0x00002234

### Data Mapping            //check under Hex
-**0x10000004:** 0x00002234
-**0x10000000:** 0x10001234 

/////////////////////////////////////////////////////////////////////////////////////

# Program 3: 
### Statement: 

### Name of file:
Week1_Lab.s

### Observation - Single Cycle


### Register Mapping
-**x5:** 0x00000034
-**x6:** 0x00000003
-**x13:** 0x00000037

### Data Mapping            //check under Hex
-**0x10000004:** 0x00000000
-**0x10000000:** 0x00370334

/////////////////////////////////////////////////////////////////////////////////////////

# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
-Load the base address of the data at label a into register x10, then load two words/half words/bytes into registers x18 and x19.
-Add these two values, store the result at a (4,2,1)-byte offset, then load the original values again as signed, storing the result.
-Add these two values again, store the result at a (4,2,1)-byte offset, then load the original values again as unsigned, storing the result in different memory location.Compare the outputs to view the  difference between signed and unsigned.

### Register Mapping
//word addition
- **x18:** 0x7fffffff
- **x19:** 0x00000001
- **x20:** 0x80000000

- **x21:** 0x7fffffff
- **x22:** 0x00000001
- **x23:** 0x80000000
//half word addition
- **x18:** 0xffff8000
- **x19:** 0x00000001
- **x20:** 0xffffff81

- **x21:** 0x00008000
- **x22:** 0x00001111
- **x23:** 0x00009111
//byte addition
- **x18:** 0x00000001
- **x19:** 0xffffff80
- **x20:** 0xffff9111

- **x21:** 0x00000001
- **x22:** 0x00000080
- **x23:** 0x00000081

### Data Mapping
- **0x10000004:** 0x00000000
- **0x10000000:** 0x00818001
