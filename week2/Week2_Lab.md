# Program 1: 
### Statement:Write an Assembly Program for the following C code:
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
  week2a.s

### Observation - Single Cycle
-  The code is loading each half word into a register and adding it to itself
 
### Register Mapping

  x1 - 0x00000002
  x2 - 0x44662200
  x10 - 0x10000000
### Data Mapping
  0x10000000 - 0x12223311
  0x10000004 - 0x12000001
  0x10000008 - 0x00102932
  0x1000000c - 0x03c3a000
  0x10000010 - 0x000200b2
  0x10000014 - 0x00002200

...
# Program 2: 
### Statement: Write an Assembly Program for addition of 2 64-bit numbers on RV32I 

### Name of file:
   week2b.s

### Observation - Single Cycle
 Storing the 64 bit number in rv32 riscv processor by spliting the num into msb and lsb and storing it in 32 bit register
Adding the lsb and then adding msbs along with the carry of lsb's addition 

### Register Mapping
  x3 - 0xffffffff
  x5 -0xfffffffe
  x6 -0xffffffff
  x7 -0xffffffff
  x8 -0xffffffff
  x9 -0xffffffff
  x10 -0x100000000
  x11 -0x00000001
  x12 -0x00000001

### Data Mapping
  0x10000018 - 0x00000001
  0x10000014 - 0xffffffff
  0x10000010 - 0xfffffffe
  0x1000000c - 0xffffffff	
  0x10000008 - 0xffffffff
  0x10000004 - 0xffffffff
  0x10000000 - 0xffffffff
...

