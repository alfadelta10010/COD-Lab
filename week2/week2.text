# Program 1: 
Statement:Write an Assembly Program for the following C code:
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}
# i.Write an Assembly Program for the given C code
.data
a: .half 0x1234,0x5678,0x9abc,0xdef1,0x2345,0x1111,0x6666,0x7777,0x8888,0x9999,0
h: .half 0
#code
.text
la x5,a
la x6,h

lhu x28,0(x6)
lhu x18,0(x5)
add x28,x28,x18
sh x28,0(x6)

lhu x19,2(x5)
add x28,x28,x19
sh x28,0(x6)

lhu x20,4(x5)
add x28,x28,x20
sh x28,0(x6)

lhu x21,6(x5)
add x28,x28,x21
sh x28,0(x6)

lhu x22,8(x5)
add x28,x28,x22
sh x28,0(x6)

lhu x23,10(x5)
add x28,x28,x23
sh x28,0(x6)

lhu x24,12(x5)
add x28,x28,x24
sh x28,0(x6)

lhu x25,14(x5)
add x28,x28,x25
sh x28,0(x6)

lhu x26,16(x5)
add x28,x28,x26
sh x28,0(x6)

lhu x27,18(x5)
add x28,x28,x27
sh x28,0(x6)

lhu x7,0(x6)
sh x7,20(x5)

# Observation - Single Cycle
 The elements of array a[11] is stored in the data memory with the base address of the array in register x5. a[10] is the 11th element in the array and initially it is having the value 0. Each element of the array is of size half word (unsigned short int).
since we have not yet learnt the looping statements, I have written the code without looping instructions. First the values from the data memory are loaded into respective registers (due to load and store architecture of RISC V). Then the value of h in memory is changed 10 times according to the c code as mentioned above and finally stored in a[10] (i.e, stored after an offset of 20 to the base address of a)
The value of h would change in each iteration by accessing each array element and adding it to the previous value of h (h = h + a[i]), as described in the code with the help of temporary registers.
The final value of h stored in memory is also of the size 2 bytes. (if a carry was generated and the number exceeds the half word size then only the 2 bytes of data from the LSB side wouldbe stored back to the memory.
x7 stores the h value after all the iterations as specified by the for loop
# Register Mapping
x5: 0x10000000
x6: 0x10000016

x18:0x00001234
x19:0x00005678
x20:0x00009abc
x21:0x0000def1
x22:0x00002345
x23:0x00001111
x24:0x00006666
x25:0x00007777
x26:0x00008888
x27:0x00009999
x28:0x000416ad

x7:0x000016ad

# Data Mapping
0x10000000: 0x56781234
0x10000004: 0xdef19abc
0x10000008: 0x11112345
0x1000000c: 0x77776666
0x10000010: 0x99998888
0x10000014: 0x16ad16ad

# Program 2: 
Statement:Write an Assembly Program for addition of 2 64-bit numbers on RV32I 
#code
.data
n: .word 0x00000001,0x00000000,0xFFFFFFFF,0x00000000

.text
la x9,n

lw x5,0(x9)
lw x6,0x04(x9)
lw x7,0x08(x9)
lw x28,0x0c(x9)
add x30,x5,x7
sltu x26,x30,x5

add x31,x6,x28
add x25,x31,x26

sltu x27,x31,x6


# Observation - Single Cycle
For the first 64 bit , we are storing it in 2 memory locations (each 32bit size). Similarly the second 64 bit number is stored. The LSB half of the first number is stored in register x5 and for the second number, it is stored in register x7. The MSB half of the first number is stored in register x6 and for the second number, it is stored in x28.
 I used the sltu command here to compare if the value of x30 (value of x5+x7) is less than the value of x5. If true then value 1 is stored in register x26( which is the carry bit that needs to be added with the MSB half addition.
Similarly the 2 MSB halves are added with each other and also with the register x26.
The final 64 bit number can be read from registers x25( for MSB half) and x30( for LSB half). The final carry( if it exists) will be stored in register x27.
I have considered addition of 2 unsigned numbers.

### Register Mapping
x9:0x10000000
x5:0x00000001
x6:0x00000000
x7:0xFFFFFFFF
x28:0x00000000
x30:0x00000000
x26:0x00000001
x25:0x00000001
x31:0x00000000
x27:0x00000000

### Data Mapping
0x10000000: 0x00000001
0x10000004: 0x00000000
0x10000008: 0xFFFFFFFF
0x1000000c: 0x00000000