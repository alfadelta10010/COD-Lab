# Program 1: 
##statment:#Write an Assembly Program for the following C code
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
Week2_LAb.s


### Observation - Single Cycle

- a is a half word array with 11 elements 0x01 to 0x00 and last a[10] as zero and h = 0x00
- address of a is loaded at x1 and h at x2
- a[0] and h are loaded into x3 and x4
- after first iteration on add x4,x4,x3 which is adding h to a and storing in h the base address of a is incremented by 0x02 to access the next element of a. 
-i have chosen to hardcode offset but we can also use addi x1,x1,2 for generating quicker offset values.
-after completing 10 iterations a[10] stores final value of h.


 
### Register Mapping
- x10:0x1000000a
- x11:0x00000005
- x12:0x000068ac
- x13:0x00000005

### Data Mapping
- 0x1000000c:0x00000000
- 0x10000008:0x00000000
- 0x10000004:0x00000000
- 0x10000000:0x56781234


# Program 2: 
### statment:2. Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
Week2_LAb.s

### Observation - Single Cycle
- adding 2 64 bit
- it is stored as upper 32 bit and lower 32 bit 
-  we add 32 bit of lower num
- add 32 bit of upper num
  

### Register Mapping
- x11:0x12345678
- x12:0x1000000c
- x14:0x13753293
- x15:0x13753293
- x16:0x25a9890b
- x18:0x2375329f
- x20:0x10000010
- x21:0x10000014


### Data Mapping
- 0x10000018:0x00000000
- 0x10000014:0x2375329f
- 0x10000010:0x25a9890b
- 0x1000000c:0x36396494
- 0x10000008:0x13753293
- 0x10000004:0x29393739
- 0x10000000:0x12345678
