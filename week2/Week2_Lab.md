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
- The program sequentially loads and adds the first 10 elements of a 16-bit array (a), storing the individual values in separate registers(x8 to x17).
- The sum is computed by repeatedly adding each halfword (16-bit value) from memory to the running total in x3.
-The final sum is stored in the 11th element of the array (a[10]).
 
### Register Mapping
- **x2:** 0x10000000
- **x3:** 0xffff8e24
- **x8:** 0x00001234
- **x9:** 0x00005678
- **x10:** 0xffff9abc
- **x11:** 0xffffdef1
- **x12:** 0x00002345
- **x13:** 0x00001111
- **x14:** 0x00006666
- **x15:** 0x00007777
- **x16:** 0xffff8888
- **x17	:** 0xffff9999

### Data Mapping
- **0x10000000:** 0x56781234
- **0x10000004:** 0xdef19abc
- **0x10000008:** 0x11112345
- **0x1000000c:** 0x77776666
- **0x10000010:** 0x99998888
- **0x10000014:** 0x8e240000




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
- **x18:** 0x9abcdef0
- **x19:** 0x22222222
- **x20:** 0xbcdf0112

### Data Mapping
- **0x10000000:** 0x12345678
- **0x10000004:** 0x9abcdef0
- **0x10000008:** 0x11111111
- **0x1000000c:** 0x22222222
- **0x10000010:** 0x23456789
- **0x10000014:** 0xbcdf0112
