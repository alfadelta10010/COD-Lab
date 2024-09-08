# Program 1: 
### Statement: Write an Assembly Program for the following C code:
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
### Name of file:
qn1.s

### Observation - Single Cycle

The la instruction loads the address of the array a into register x10. The sum variable h is initialized to 0 by loading the immediate value 0 into register t0. 
The address for each element is calculated by adding the offset (0, 2, 4, ..., 18) to the base address in x10. 
Finally, the sum variable h stored in t0 is stored in the 11th element of the array a using the sh instruction

 
### Register Mapping
 - **x2 :** 0x7ffffff0
 - **x3 :** 0x10000000 
 - **x5 :** 0x000068ac 
 - **x6 :** 0x00000000
 - **x10:** 0x10000000 

### Data Mapping
- **0x10000014:** 0x000068ac 
- **0x10000010:** 0x00000000 
- **0x1000000c:** 0x00000000 
- **0x10000008:** 0x00000000
- **0x10000004:** 0x00000000 
- **0x10000000:** 0x56781234


# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I
### Name of file:
qn2.s

### Observation - Single Cycle
1)64-bit Addition: The program performs the addition of two 64-bit numbers stored in memory, with each 64-bit number split into two 32-bit parts (lower and upper halves).

2)Carry Handling: The program correctly handles carry propagation from the addition of the lower 32-bit parts to the upper 32-bit parts to ensure an accurate 64-bit result.

3)Result Storage: The program stores the final 64-bit sum and the carry resulting from the upper 32-bit addition in specific memory locations, ensuring the full result is available in memory.

### Register Mapping
- **x2 :** 0xeeeefffe
- **x3 :** 0xeeeeffff
- **x5 :** 0xeeeedddc
- **x6 :** 0xeeeeeeee
- **x7 :** 0xffffffff
- **x10:** 0x10000000
- **x11:** 0x00000001

### Data Mapping
- **0x10000000:** 0xeeeeffff
- **0x10000004:** 0xffffeeee
- **0x10000008:** 0xffffffff
- **0x1000000c:** 0xeeeeeeee
- **0x10000010:** 0xeeeedddc
- **0x10000014:** 0xeeeeffff
- **0x10000018:** 0x00000000
