# Program 1:
### Statement : Write an Assembly Program for the following C code:
```c
main() {
	unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
	h = 0;
	for(i = 0; i < 10; i++)
	{
		h = h + a[i];
	}
	a[10] = h;
}
```

### Name of the file : COD-Lab/week2/prog1w2.s

###Observation - Single Cycle
- In this program, we are converting the above given c code to assembly. 
- We use several load, add and store statements.
- This program is finding the sum of all the elements in the "array" of elements

### Register Mapping
- x1 : 0x10000000
- x2 : 0x0000002d
- x3 : 0x0000003d

### Data Mapping
- 0x10000000 : 0x00020001
- 0x10000004 : 0x00040003
- 0x10000008 : 0x00060005
- 0x1000000c : 0x00080007
- 0x10000010 : 0x00100009
- 0x10000014 : 0x0000003d

# Program 2:
### Statement : Write an Assembly Program for addition of 2 64-bit numbers on RV32I

### Name of the file : COD-Lab/week2/prog2w2.s

### Observation -  Single Cycle
- In this program we are trying to add 2 double words,i.e, 64 bit numbers using the RV32I, a 32 bit processor
- Since we are working with a 32 bit processor, we split the double word into 2 parts, a "more significant part, and a less significant part".
- Once these are created, the lesser significant parts are added, and checked for carry, and then the more significant parts are added, and again checked for carry. 
- After checking for carry, the carry from the lesser significant part (if present) is added to the more significant part.

### Register Mapping 
- x10 : 0x10000000
- x11 : 0xffffffff
- x12 : 0xffffffff
- x13 : 0xffffffff
- x14 : 0xffffffff
- x15 : 0xfffffffe
- x16 : 0x00000001
- x17 : 0xfffffffe
- x18 : 0xffffffff 
- x19 : 0x00000001

### Data Mapping 
- 0x10000000 : 0xffffffff
- 0x10000004 : 0xffffffff
- 0x10000008 : 0xffffffff
- 0x1000000c : 0xffffffff
- 0x10000010 : 0xfffffffe
- 0x10000014 : 0xffffffff
- 0x10000018 : 0x00000001


