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
week2q1.s

### Observation - Single Cycle
we have array called "a" then we Initialize h = 0 and store it in t0 then the loop: Manually add each a[i] to h (t0) that is Load a[0] into t1 ,h = h + a[0],Load a[1] into t1,h = h + a[1]..like this Load a[9] into t1,h = h + a[9] and Store h (t0) in a[10] and Store h in a[10]
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
t0=0x000068ac
t1=0x00000000
a7=0x0000000a


### Data Mapping
- **<Memory Address>:** <Value stored>
0x10000014=0x000068ac
0x10000010=0x00000000
0x1000000c=0x00000000
0x10000008=0x00000000
0x10000004=0x00000000
0x10000000=0x56781234



# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 
### Name of file:
week2q2.s

### Observation - Single Cycle
take 2 64 bit number divided them into four parts and store as word in array called "a", assign the 4 number to register , then add 2 lsb and store it register, comparing total lsb with 1st lsb ,and both msb and store it register ,comparing total msb with 1st msb,adding total msb with carry and store it in register
 
### Register Mapping
- **<Register Number Used>:** <Value stored>
x8=0xffffffff
x9=0xffffffff
x10=0xffffffff
x11=0xffffffff
x12=0xfffffffe
x13=0x00000001
x14=0xfffffffe
x15=0x00000001
x16=0xffffffff


### Data Mapping
- **<Memory Address>:** <Value stored>
0x1000000c=0xffffffff
0x10000008=0xffffffff
0x10000004=0xffffffff
0x10000000=0xffffffff


