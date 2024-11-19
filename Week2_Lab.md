# Program 1: 
### Statement: Write an Assembly Program for the following C code:
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
codeC.s

### Observation - Single Cycle

1. **Loading and Summing Values**: The assembly program first loads the address of the array `a` into register `x11`. It then iteratively loads halfword (16-bit) values from this array into register `x12` and `x13`, adds them together, and accumulates the result in `x12`.

2. **Summing All Elements**: The program continues this process for all 10 halfword values stored in the array `a`, effectively summing all these values together into register `x12`.

3. **Storing the Result**: After computing the sum of the values, the program stores the final result back into the memory at the location `20(x11)`, which corresponds to the memory address directly following the last element in the array `a`.
 
### Register Mapping
x11:0x10000000
x12:0x0001cdde
x13:0xffff8756

### Data Mapping
x12:0x0001cdde

...

# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file: 
add64on32.s

### Observation - Single Cycle

1. **Loading and Addition**: The program loads 64-bit integers from memory addresses labeled as `n` into registers, and then performs addition operations on pairs of these integers. Specifically, it adds the first integer to the second, and the third integer to the fourth.

2. **Unsigned Comparison**: The program checks for unsigned integer overflow by comparing the sum of each pair to one of the original integers. If the sum is less than the original value, it indicates an overflow, which is stored in another register.

3. **Storing Results**: Finally, the program stores the results of the additions and the overflow checks into memory locations labeled as `result`, preserving the computed values for later use or analysis.
 
### Register Mapping
x10:0x10000000
x11:0xFFFFFFFF
x12:0X0FFFFFFF
x13:0XFFFFFFFF
x14:0X0FFFFFFF
x15:0XFFFFFFFE
x16:OX00000001
x17:0X1FFFFFFF
x18:0X00000000
x20:0X10000010

### Data Mapping
x20:0x10000010
x16:0x00000001

...
