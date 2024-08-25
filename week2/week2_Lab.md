# Program 1: 
### Statement: Write an Assembly Program for the following C code

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
    week2_q1.s

### Observation - Single Cycle
- The assembly code initializes a loop to sum the first 10 elements.
- It loads each element and adds it to the previous summation value using a loop till it reaches the 11th element.
- After the loop completes, it stores the final sum into the last element of the array `a[10]`.

### Register Mapping
- **<Register Number Used>:** <Value stored>
- **x5:** 0x000068ac        [t0]
- **x5:** 0x00000014        [t1]

### Data Mapping
- **<Memory Address>:** <Value stored>
- **0x10000004:**0x00000000
- **0x10000008:**0x00000000
- **0x1000000c:**0x00000000
- **0x10000014:**0x000068ac
- **0x10000010:**0x00000000



# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
    week2_q2.s

### Observation - Single Cycle
The assembly code first computes the sum of the lower 32 bits and checks for carry, then adds the upper 32 bits including any carry
- It then stores the lower and upper 32-bit results

### Register Mapping
- **<Register Number Used>:** <Value stored>
- **x8:** 0xffffffff
- **x9:** 0xffffffff
- **x10:** 0xffffffff
- **x11:** 0xffffffff
- **x12:** 0xfffffffe
- **x13:** 0x00000001
- **x14:** 0xfffffffe
- **x16:** 0xfffffffe

### Data Mapping
- **<Memory Address>:** <Value stored>
- **0x10000000:**0xffffffff
- **0x10000004:**0xffffffff
- **0x10000008:**0xffffffff
- **0x1000000c:**0xffffffff
- **0x10000014:**0xffffffff
- **0x10000010:**0xfffffffe