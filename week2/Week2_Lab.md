# Program 1: 
### Statement: Write an Assembly Program for the following C code:
	       main()
	        {
		unsigned short int a[11] = {0x1234, 0x5678, ...}, h;
		h = 0;
		for(i = 0; i < 10; i++)
		{
			h = h + a[i];
		}
		a[10] = h;
		}
		
### Name of file:
Week2_Lab.s

### Observation - Single Cycle
- The program excutes for loop. Where x10 
- The sum is computed by repeatedly adding each halfword (16-bit value) from memory to the running total in x3.
-The final sum is stored in the 11th element of the array (a[10]).

### Register Mapping
- **x10:** 0x10000016
- **x11:** 0x00041c74
- **x12:** 0x0000000b
- **x13:** 0x0000c1d1
- **x14:** 0x0000000b

### Data Mapping
- **0x10000000:** 0x56781234
- **0x10000004:** 0xdef21abc
- **0x10000008:** 0x21341111
- **0x1000000c:** 0x61714151
- **0x10000010:** 0xa1b18191
- **0x10000014:** 0x1c74c1d1
- **0x10000018:** 0x00000000




# Program 2: 
### Statement:Write an Assembly Program for addition of 2 64-bit numbers on RV32I 


### Name of file:
Week2_Lab.s

### Observation - Single Cycle
- The program loads two 64-bit numbers (n1 and n2) from memory, each divided into lower and upper 32-bit parts, and prepares a memory location (result) to store the output.
- Add the lower 32 bits of the numbers, store the result and check for any carry out from the addition using sltu and store that value in another register.
- Add the upper 32 bits of the numbers along with the carry out value and store the final result.

### Register Mapping
- **x11:** 0x0000005d
- **x12:** 0x10000010
- **x13:** 0x9abcdef0
- **x14:** 0x22222222
- **x15:** 0xbcdf0112

### Data Mapping
- **0x10000000:** 0x12345678
- **0x10000004:** 0x9abcdef0
- **0x10000008:** 0x11111111
- **0x1000000c:** 0x22222222
- **0x10000010:** 0x23456789
- **0x10000014:** 0xbcdf0112
