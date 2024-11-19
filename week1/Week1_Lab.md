
# Program 1: 


### Statement: Write an Assembly Program for addition of 2 words

### Name of file:add_word.s


### Observation - Single Cycle
- loading the data into the registers, aadding them and storing the result in another register
 
### Register Mapping
- x1:loading the array of words
x2: loading the first word from the array
x3:loading the second word from the array
x4:storing the result

### Data Mapping
- x1:0x10000000
x2:0x80000002
x3:0x9123456a
x4:0x1123456c


# Program 2:
### Statement: :write an Assembly code for adding 2 halfwords 

### Name of file:add_half.s

### Observation - Single Cycle
- laoding data from addres to the register ,the second number is stored with an offset value of 2, 
adding the numbers and storing the added result into the register with an offset valu of 4
 
### Register Mapping
- x1:loading the array of the two half words 
x2:laoding the first half word 
x3:loading the second half word
x4:storing the result
x1:storing the added result back into the memory

### Data Mapping
x1:0x1000000000
x2:0x0000000002
x3:0xffffffffff
x4:0x0000000001

# Program 3:
### Statement: :write an Assembly code for adding 2 bytes

### Name of file:add_byte 




### Observation - Single Cycle
- laoding data from addres to the register ,the second number is stored with an offset value of 1,
adding the numbers and storing the added result into the register with an offset valu of 2

### Register Mapping
- x1:loading the array of the two bytes
x2:laoding the first byte
x3:loading the second byte
x4:storing the result
x1:storing the added result back into the memory

### Data Mapping
x1:0x1000000000
x2:0x0000000004
x3:0x000000006a
x4:0x000000006e


### Observation - Single Cycle
- laoding data from addres to the register ,the second number is stored with an offset value of 2,
adding the numbers and storing the added result into the register with an offset valu of 4

### Register Mapping
- x1:loading the array of the two half words
x2:laoding the first half word
x3:loading the second half word
x4:storing the result
x1:storing the added result back into the memory

### Data Mapping
x1:0x1000000000
x2:0x0000000002
x3:0xffffffffff
x4:0x0000000001

#program 4:
###statement: Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
### Name of the file:add_byte

###observation - single cycle
-assume the word is 0x12345678 and the instructions are as follows :
lw x5,0x00(x10)
lh x6,0x00(x10)
lb x7,0x00(x10)

(i) when the instruction is lw or load word, it stores 4 bytes of data starting from the lsb 
-
i.e. 0x12345678
(ii)when the instruction is lh or load half word, it stores 2 bytes of data starting from lsb 
i.e.=0x00005678
(iii)when the instruction is lb,it stores only 1 byte of data starting from the lsb 
i.e.=0x00000078

### Register mapping
x10:stores the address of n
x5: Loads the first word 
x6: loads te second word , The second word is loaded into the register x6  by having an offset value of 4byte
x7:The result of the addition (0x12345678+0x11111111) is stored in the regitster x7

### Data mapping
x10:0x10000000
x5:0x12345678
x6:0x00005678
x7:0x00000078

