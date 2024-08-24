# Program 1: 
### Statement: <Write an Assembly Program for the following C code>

### Name of file:
<assembly_for_c_code.s>

### Observation - Single Cycle
1. creating two variables of short int size
2. Loading both the array and h as unsigned in the register , so the remaining upper 16 bit gets stored as 0
3. the for loop in c code runs for 10 times, therefore 10 iterations.
4. In each iteration , the code does loading of the next array element and adding with h and storing it back to the register that contains the value of h.
5. all 10 iterations are performed
6. after the 10th iteration ,operation performed to assign the x[10] = h.
7. operation performed to store the carry inn data memory.
8. since we are adding 2 halfwords of unsigned type , all the other bits are zero, hence the sltu is not required after each addition since it gets stored in the upper,16 bits of the register.

### Register Mapping
- **<Register Number Used x5,x6,x7,x8,x10,>:** <Value 0x10000016,0x10000000,0x000287d5,0x00000006,0x00000001>

### Data Mapping
- **<Memory Address 0x10000000,0x10000004,0x10000008,0x1000000c,0x10000010,0x00000014>:** <Value 0x0002f001,0x0d019abc,0x00030002,0xf0010004,0x00060005,0x000187d5>

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

# Program 2: 
### Statement: <2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I >

### Name of file:
<Enter add_2_64bit_numbers.s>

### Observation - Single Cycle
1. creating a variable 'a' such that the first two 32 bit numbers of it store the first 32-bits of the 2, 64-bit number(LSB part) and the next '2' 32-bit numbers  of 'a' represent the latter 2 32-bit numbers of both the numbers.  (MSB Part)
2. adding the two LSB 32- bit parts of the 64-bit numbers
3. checking whether we have a carry
4. adding the two msb 32-bit parts of 64-bit numbers
5. adding the carry generated by the lsb 32-bit part to msb 32-bit part
6. checnking whether we have a final carry generated.
 
### Register Mapping
- **<Register Number Used x9,x5,x6,x28,x29,x7,x31,x11,x12,x30>:** <Value 0x10000000,0xffffffff,0x0xffffffff,0xffffffff,0xffffffff,0xfffffffe,0x00000001,0xfffffffe,0xffffffff,0x00000000 >

### Data Mapping
- **<Memory Address 0x10000000,0x10000004,0x10000008,0x1000000c>:** <Value 0xffffffff,0xffffffff,0xffffffff,0xffffffff>


----------------------------------------------------------------------------------------------------------