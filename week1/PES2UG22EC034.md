# Program 1: 
### Statement: <Write an Assembly Program for addition of 2 word>

### Name of file:
<addingword.s>

### Observation - Single Cycle
- <# giving two numbers to be added
   # loading the base address of a to register
   # loading a word into register with offset 0   (offset=index*size of datatype in bytes)
   # loading another word into register with offset 4 since it is word 
   # add operation adds two word with destination register followed by the registers whose values are to be added
   # now we store the added value in the data memory with source reg and the location with offset
>
 
### Register Mapping
- **<x9>:** <base address of a>
**<x10>:** < 0x00013412>
**<x11>:** <0x00030124>
**<x12>:** <0x00043536>

### Data Mapping
- **<8(x9)>:** <0x00043536>
____________________________________________________________________________________________________________________________________________

# Program 2: 
### Statement: <Write an Assembly Program for addition of 2 halfword>

### Name of file:
<addinghalfwd.s>

### Observation - Single Cycle
- <# giving two numbers to be added
   # loading the base address of a to register
   # loading a halfword into register with offset 0   (offset=index*size of datatype in bytes)
   # loading another halfword into register with offset 2 since it is halfword 
   # add operation adds two halfword with destination register followed by the registers whose values are to be added
   # now we store the added value in the data memory with source reg and the location with offset
>
 
### Register Mapping
- **<x10>:** <base address of a>
**<x11>:** < 0x0210>
**<x12>:** <0x1101>
**<x13>:** <0x1311>

### Data Mapping
- **<4(x10)>:** <0x1311>
__________________________________________________________________________________________________________________________________________

# Program 3: 
### Statement: <Write an Assembly Program for addition of 2 byte>

### Name of file:
<laddingbyte.s>

### Observation - Single Cycle
- <# giving two numbers to be added
   # loading the base address of b to register
   # loading a byte into register with offset 0   (offset=index*size of datatype in bytes)
   # loading another byte into register with offset 1 since it is byte 
   # add operation adds two byte with destination register followed by the registers whose values are to be added
   # now we store the added value in the data memory with source reg and the location with offset
>
 
### Register Mapping
- **<x9>:** <base address of b>
**<x11>:** < 0x45>
**<x12>:** <0x11>
**<x13>:** <0x56>

### Data Mapping
- **<2(x9)>:** <0x56>
__________________________________________________________________________________________________________________________________________


# Program 4: 
### Statement: <Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types
>

### Name of file:
<unsigned_signed.s>

### Observation - Single Cycle
- < # creating a variable of type halfword
    # creating a variable of byte type
    # loading base address of a in x7
    # loading base address of b in x6
    # loading -3 as an unsignedd number: it gets stored as 0x0000fffd
    # loading 2 as aan unsigned number: it gets stored as 0x00000002
    # loading -3 as a singned number: it gets stored as 0xfffffffd
    # loading 2 as a signed number:  it gets stored as 0x00000002
 
### Register Mapping
- **<x7>:** <base address of a>
**<x6>:** < base address of b>
**<x8>:** <-3 i.e 0x0000fffd>
**<x9>:** <2 i.e 0x00000002>
**<x10>:** <-3 i.e 0xfffffffd>
**<x11:** <2 i.e 0x00000002>

### Data Mapping
- **<>:** <>
