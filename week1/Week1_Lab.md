# Program 1:
Statement: Write an Assembly Program for addition of 2 words

### Name of file:
code1.s

### Observation - Single Cycle
-> This assembly programming is adding 2 signed numbers stored in registers x5 and x6, after loading from the memory.
-> Each number is of 32 bits or 4bytes size (word)
-> The value resulting after addition is in stored in register x9(which is also of 32bits).
 
### Register Mapping
x7: 0x10000000 
x5: 0x00000005
x6: 0x00000006
x9: 0x0000000b [5+6=11=b(in hexadecimal]
### Data Mapping
0x10000000: 5
0x10000001: 6

--------------------------------------------------------------------------------------------------------------------------------------------------------------
# Program 2: 
Statement: Write an Assembly Program for addition of 2 half words

### Name of file:
code2.s

### Observation - Single Cycle
-> This assembly program is adding 2 signed numbers stored in registers x6,x7, after loading from the memory.
-> Each number is of 16bits or 2 bytes size (half word)
-> But since all the registers can only store a 32bit number, the 2 bytes of data gets converted into 4 bytes by sign extension(due to signed numbers)
-> The value resulting after addition is stored in x9 (which is a 32bit number).
 
### Register Mapping
x5: 0x10000000
x6: 0x00001111
x7: 0x00002222
x9: 0x00003333

### Data Mapping
0x10000000: 0x22221111

-----------------------------------------------------------------------------------------------------------------------------------------------------------

# Program 3: 
Statement: Write an Assembly Program for addition of 2 bytes

### Name of file:
code3.s

### Observation - Single Cycle
->This assembly program is adding 2 signed numbers stored in registers x6,x7, after loading from the memory.
->Each number is of 8 bits or 1 bytes size
->The value resulting after addition is stored in x9.
-> The final value in register x9 is a 32bit number, so the result is converted into a 32 bit number.
 
### Register Mapping
x5: 0x10000000
x6: 0x00000004
x7: 0x00000005
x9: 0x00000009

### Data Mapping
0x10000000: 0x00000504

---------------------------------------------------------------------------------------------------------------------------------------------------------------

# Program 4: 
Write an Assembly Program and analyse the format of storing signed and unsigned words, half words and byte data types

### Name of file:
code4.s

### Observation - Single Cycle
-> lw is used to load a 32 bit signed or unsigned value.There isn't a separate lw instruction for unsigned loads in RV32I.
->lhu Loads a 16-bit unsigned value and zero-extends it to 32 bits. lh Loads a 16-bit signed value. The sign bit is extended to 32 bits.
->lbu Loads an 8-bit unsigned value and zero-extends it to 32 bits. lb Loads an 8-bit signed value. The sign bit is extended to 32 bits.

 ### Register Mapping
x28:0x10000000 
x29:0x10000008
x30:0x1000000c

x18:0x0000000f
x19:0xfffffff1
x20:0x00000009
x21:0xfffffff7
x22:0x00000003
x23:0xfffffffd

### Data Mapping
0x10000000: 0x0000000f
0x10000004: 0xfffffff1
0x10000008: 0xfff70009
0x1000000c: 0x0000fd03

---------------------------------------------------------------------------------------------------------------------------------------------------------------
