# Program 1: 
### Statement:
 Program for addition of 2 64-bit numbers on RV32I

### Name of file:
/home/vishnupriya/COD-Lab/week2/lab2code1.s

### Observation - Single Cycle
- 1. Taken 2 64bit numbers numbers into consideration and 3rd one to store the result, 
 2.load the address into registers and load the lsb 32bits into 1register and msb 32bits into another register.  
 3.add the lsb registers and msb registers separetly and add the check for carry if any then add the carry to msb.
4. store the msb and lsb values into result memory.
### Register Mapping
- x9:0x10000000
x10:0x81234567
x11:0x80000000
x12:0x10000008
x13:0x00000008
x14:0x12345678
x15:0x00000000
x16:0x8123456f
x17:0x92345678
x18:0x92345678
x19:0x00000000
x20:0x10000010

### Data Mapping
- 0x10000018: 0x00000000
0x10000014: 0x92345678
0x10000010: 0x8123456f
0x1000000c: 0x12345678
0x10000008: 0x00000008
0x10000004: 0x80000000
0x10000000: 0x81234567


# Program 2: 
### Statement: 
Program for the following C code:
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}

### Name of file:
/home/vishnupriya/COD-Lab/week2/lab2code2.s

### Observation - Single Cycle
- 1. We are converting the given c code to assembly code.
2.multiple load, add and store statements as we iterate the loop which contains 10 elements.
3.the sum of all the elements in the "array" of elements are added at the end of array.
 
### Register Mapping
- x11:0x10000000
x12:0xffff9154
x13:0x00000011
x14:0xffff9165

### Data Mapping
- 0x10000014: 0x00009165
0x10000010:0x00119000
0x1000000c: 0x00887000
0x10000008:0x00665000
0x10000004:0x00443000
0x10000000:0x00221000


