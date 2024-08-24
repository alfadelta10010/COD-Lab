# Program 1: 
### Statement: Write an Assembly Program for addition of 2 words

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
####Loading the address of a into register x10
####Loading the word (0x80001234) into register x5
####Loading the word (0x90000123) into register x6
####Adding the two words in x5 and x6 and then storing the result in x13

### Register Mapping
####L**x5:** 0x00001234
####L**x6:** 0x00000123
####L**x13:** 0x00001357

### Data Mapping            //check under Hex
####L-**0x10000008:** 0x00001357
####L-**0x10000004:** 0x00000123
####L-**0x10000000:** 0x10001234




# Program 2: 
### Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
####Loading the address of a into register x11
####LLoading the word into register x9
####LLoading the word into register x10
####LAdding the two half words in x9 and x10 and then storing the result in x12

### Register Mapping
####L-**x9:** 0x00001234
####L-**x10:** 0x00001000
####L-**x12:** 0x00002234

### Data Mapping            //check under Hex
####L-**0x10000004:** 0x00002234
####L-**0x10000000:** 0x10001234 



# Program 3: 
### Statement: 

### Name of file:
Week1_Lab.s

### Observation - Single Cycle


### Register Mapping
####L-**x5:** 0x00000034
####L-**x6:** 0x00000003
####L-**x13:** 0x00000037

### Data Mapping            //check under Hex
####L-**0x10000004:** 0x00000000
####L-**0x10000000:** 0x00370334



# Program 4: 
### Statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
Week1_Lab.s

### Observation - Single Cycle
####LLoad the base address of the data at label a into register x10, then load two words/half words/bytes into registers x18 and x19.
####LAdd these two values, store the result at a (4,2,1)-byte offset, then load the original values again as signed, storing the result.
####LAdd these two values again, store the result at a (4,2,1)-byte offset, then load the original values again as unsigned, storing the result in different memory location.Compare the outputs to view the difference between signed and unsigned.

### Register Mapping
//word addition
####L- **x18:** 0x7fffffff
####L- **x19:** 0x00000001
####L- **x20:** 0x80000000

####L- **x21:** 0x7fffffff
####L- **x22:** 0x00000001
####L- **x23:** 0x80000000
//half word addition
####L- **x18:** 0xffff8000
####L- **x19:** 0x00000001
####L- **x20:** 0xffffff81

####L- **x21:** 0x00008000
####L- **x22:** 0x00001111
####L- **x23:** 0x00009111
//byte addition
####- **x18:** 0x00000001
####L- **x19:** 0xffffff80
####L- **x20:** 0xffff9111

####L- **x21:** 0x00000001
####L- **x22:** 0x00000080
####L- **x23:** 0x00000081

### Data Mapping
####L- **0x10000004:** 0x00000000
####L- **0x10000000:** 0x00818001
