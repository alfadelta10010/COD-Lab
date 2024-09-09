# Program 1: 
### Statement: <Write an Assembly Program for the following C code:
# main() {
#	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
#	h = 0;
#	for(i = 0; i < 10; i++)
#	{
#		h = h + a[i];
#	}
#	a[10] = h;
# }>

### Name of file:
<lab3_a2.s.s>

### Observation - Single Cycle
- the program is implementing the given c code above using assembly    language
- We load the data from the data memory we have defined into register x10,x11,x12 and take it into registers x13,x14 
- then we add the x13and x14 and store in x15,store the value in x15 into the memory and repeat the process 6 times
### Register Mapping
- **<Register Number Used>:** <Value stored>
              x10  0x10000000
              x11  0x10000014
              x12  0x10000028
              x13  0x00000001
              x14  0x00000046
              x15  0x00000047
### Data Mapping
- **<Memory Address>:** <Value stored>
        0x10000000  0x00000045
        0x10000004  0x00000034
        0x10000008  0x00000023
        0x1000000c  0x00000067
        0x10000010  0x00000019
        0x10000014  0x00000001
        0x10000018  0x00000002
        0x1000001c  0x00000003
        0x10000020  0x00000004
        0x10000024  0x00000005
        0x10000028  0x00000046
        0x1000002c  0x00000036
        0x10000030  0x00000026
        0x10000034  0x0000006b

# Program 2: 
### Statement: <Write an Assembly Program for addition of 2 64-bit numbers on RV32I >

### Name of file:
<lab3a.s.s>

### Observation - Single Cycle
- we load the 64bit data from memory to register x10
- we split the 64 bit data into 2 32 bit data
- we add the 1st 32 bit of the 1st number with the 1st 32 bits if the 2nd number then do the same for the 2nd 32 bits
- we check for carry and add that to the 2nd 32bits addition and store the output in memory
### Register Mapping
- **<Register Number Used>:** <Value stored>
              x10  0x10000000
              x11  0xffffffff
              x12  0xffffffff
              x13  0xffffffff
              x14  0xffffffff
              x15  0xfffffffe
              x16  0xffffffff
              x18  0x00000001
### Data Mapping
- **<Memory Address>:** <Value stored>
            0x10000000  0xffffffff
            0x10000004  0xffffffff
            0x10000008  0xffffffff
            0x1000000c  0xffffffff
            0x10000010  0xffffffff
            0x10000014  0xfffffffe
...
...